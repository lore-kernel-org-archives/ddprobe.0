Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4030A1B808
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784851834; cv=none; b=cGjT2X2VcC/SkuE9XyGRtho2QxHicUiySQrpj8h1gexMLGhjkIF5kXqRMSmhptrxgJTd5UNru9AR0EohTDf5luNDc789or+HQ2EeavMiSOjmTuDwts48s0jGtzSeSa56R3A/62IMlkBjZioaSauXoqfBVDpykiBoKtRb6Hl5ICc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784851834; c=relaxed/simple;
	bh=fH9zDWHNxf/09LC0Ca7c10qcwhIW1k73ynmW9q6XyAw=;
	h=To:Subject:From:Message-Id:Date; b=PdT5KXiahUX0I3sOoncD55ztrHnci2k2npx0NGKiNGKCI+Cw4PghHj9c6cfxkN0h4r3NcYxRQKWgAKDKSGPRugEyPbbX0jplhUKtvawSQ/t4C9NVLuVSIrVTzGghe64aBcXlkmjB+aOtmk6cjgw3RpvCiAY3HeeinKEPTzqBNjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxgsO2H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxgsO2H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784851833;
	bh=fH9zDWHNxf/09LC0Ca7c10qcwhIW1k73ynmW9q6XyAw=;
	h=To:Subject:From:Date:From;
	b=sxgsO2H2vv45gpTKKRodej/Fw5etxUCUCQdKg3Lx1egbaihhE2l24l9mfCQkFXMT5
	 1ELJ2SQc867KTmYy5EjNz1QGWZaRRLsjMINyPm6Ux5FCXPmscNmWq6nbFP0AhMzMLo
	 jBunjA5wCiJ1hconPMaqCMqPCrM+cQXtQAnnaLtQeemClMN3NmVUeWhhhD1DQZPDy3
	 czU+Z1dJIwhxf428tw+yBNbE2T4HlgBNzyyL3t5O+gBjLVzU2zzmnr7oWq15JO68Ao
	 HaWvL5+6qynlE11WYLRFmh/uPDpIo2EDA01ZVnvGB6+QxWWMlKsCp9LIs6viYx09Ch
	 p5XnYWE4K2ZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F05C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485183368.3192.6125040613020367725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f33b0f2d0b0fe3ebd4c0a4bd7f6088bd659ca1a429637e3be63445ffad13165
Date: Fri, 24 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784851833
