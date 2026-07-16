Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ECA239E60
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784168314; cv=none; b=frJkReACy+lZAy4gu0/+75R2H3AOTxcOMq1xXQBQc7fIfQCwka3umO37dxLd1Sk7THVHzbQxdgwjdSbCn7DmpA6w+fGBU2DzQHYfHLjGbtDOD+tNl2xgYlCHy4m/uUXOxCatC696ytquh1wf5x31OXV+MAumAIGRsKqF1vjWsjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784168314; c=relaxed/simple;
	bh=+mgmBRFUH/HEH7m17Nk9FtfR80wbc91Jyfhw1gqbaF0=;
	h=To:Subject:From:Message-Id:Date; b=O3woakEn3J5VBmGVQEvjEvmSQk8194YzemgWRZCpJ1nAOgU0/TTW0mCW8eafyHPS6zi1JQsGbPuMOe0DGl792S1AMuzOnvPydJMJj4EuwAkuOv3xmvN5x6IVaUyUL2Z7rbXBpoeY0HWLtCTB7lyRClcZjSyzg/y2OxfqI6N6Uko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLMVrGhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLMVrGhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3704C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784168313;
	bh=+mgmBRFUH/HEH7m17Nk9FtfR80wbc91Jyfhw1gqbaF0=;
	h=To:Subject:From:Date:From;
	b=nLMVrGhZtOH2Vo0eENEUiZuH9vobUAat39TgO0RBUswSitv3BRBgOjq6SIqECGjCb
	 DkSvv1A9AfSDpa3S3y3bl+kyIotJ921fWuvwfX71dLlWjCiUx4h1DbGwk7rVnY/oqS
	 OmHraN9noEWrg70ozQSbHI0Yde5aENvTaygBnktULdqRPpwk/znRZkkkrLLx4Q8xcv
	 YNYXvxLMyGuQp4lau0bXeuUPA4UZOVfPBjD32afl/jSJCUwFmmpc6NnZCOt8v5W0uN
	 khE4qhEuq4VIIBQ0ObDoJ9ghnJiXtTajv4/De/ohnjkf/P+/MZMhklL0yYYOoE+pHJ
	 iWDrj8FWietoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE52CC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416831368.24830.2355457816311293764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf80926655ee77a09de38dfa36460999feba69304839f626043877203e322c3
Date: Thu, 16 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784168313
