Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF7C305675
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785826834; cv=none; b=EHzq7upX2KPsD2eZr4RXzK6QqaE9XnRoeDaszsnnUyoMHnwo7INbzZK04qC4IgIrUfTM5S4FhojRlJNweNtkk68QmG0a4RVnyUQNukIlMfIWIGEfgm/Bq+Z3IoeJsycoNy0o6jpvTeei21VVS73dMpMDsOpeEDAD7yk8TUMGd2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785826834; c=relaxed/simple;
	bh=Nrl7IW3BTxvp6+JKqCwMAoDyWl2O/B9qCzNf2VUw6DA=;
	h=To:Subject:From:Message-Id:Date; b=oC+4zw1LSJb8c7SjRQbphwf7Wexmr4IXboey3g+1RGLYX5sM9frYNBb1/NVy/ibdVDw7hVfiYhIp+215MC6LFdKGBfgnWz1lWnsKUBr/nR5nnwokZrTGqRHwlJI31KSbSASmISgSMRPSZwex9TA/KUNXHNIfczurNBJiMCAnkZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0kj1a9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0kj1a9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC29C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785826833;
	bh=Nrl7IW3BTxvp6+JKqCwMAoDyWl2O/B9qCzNf2VUw6DA=;
	h=To:Subject:From:Date:From;
	b=c0kj1a9PA7VUkSH1PpgVbCWDdC54NVEA+l4QCArH/Hlxfa/oxocYiXfg+uwUOHnNJ
	 JNYkaGjPjKVbB8I6mUv1CZkTVTKLoXscobuWNbjuMdmCbPyc8K5tcrioxwu+zlM7mY
	 U18c1tfBSjnO8amDY8Ss4uy262OumplJcwT5oy99a33cm1CsVq9AoLq6xeK2kiPXtU
	 zObxrugNzTyeFQLaxeYG3bcBg1HQPtlHhVR+H8qXq4VEWpxNDbueb2iEGpa8OHFwLx
	 lhQZ8RZxfJnXCjdDosAsW1TB53X/G2RUCGuYPsB/lbAx0hARLrT/O0LMk7mxWD21/N
	 POfSiQVegJG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2747C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582683369.1175.12810621565324373384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3bb31ed47b7878a1b9362d8a6481f7fc0c8d017dac1daac646f53fc64f79e7
Date: Tue, 04 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785826833
