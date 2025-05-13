Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2798E22338
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747172394; cv=none; b=Q3yhhAEtTL6duTX1FfdDSc8CfRa3EWsyBsGSAf4EiOK42kk8JzD8SAScr76+h4y735gHgBW+wh2YKcpRhF7Ort2dDFA8oLvqk3rKt/So8PP3ORBT2szu8HnVj+6NXgQuDt5lPfBJNtaMkLl3TPsCPSWlcVodBNi3wSk6+3cafV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747172394; c=relaxed/simple;
	bh=f4oLSZ3KvWW7cmxOu9HEsGPXzqahS92NnuuRVJN43wQ=;
	h=To:Subject:From:Message-Id:Date; b=UGzinENcChZfXx0oalEYOtJ8Z8/l0mbDhluvsDOVIBixD0QqgH0ZjmKfv7DPxPuI3Fu6jy4BvBCEwnvSnbUoYHLvUVCog4C6e4Gg77zErGEZT8ZUu8M/vzBLPM2z4O7ZOdJOPMUGY0+5sSRPzfE8mpwDXYN7UJEbrasGjTyYxvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWLN39eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWLN39eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B3C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747172393;
	bh=f4oLSZ3KvWW7cmxOu9HEsGPXzqahS92NnuuRVJN43wQ=;
	h=To:Subject:From:Date:From;
	b=GWLN39eCStHJ3Bpgi5AR++eAZCN+QbXli7nbDeLVyT1tk2LPB+jhFVqkqABAm8Vnt
	 G7Vo6klp4K+aMi/R3fxoSLF2mNa1mY2fjdbqapFnOMSVzGMEjTAV78y0qCqsxCuDey
	 sOkLgoYyFf066nAWv5tB5lXUZuePn0EJtLGSVariCgpM4d6yaAH6wNgRuM6NLXwYQw
	 rdbnDbrPYZaQq5hDdGRpk8/HmR3EM0z5fxKVDAoo2URpc655nmXo3gtOWDOwlKQBiI
	 4M0oZNAGeKQfoEoOPJ6IC9AcC0w2HYBJuUdtrLsh1OrCGTgIyZ/poX3bgbucjBithm
	 T4KVFSjo4DyMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A4C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717239357.12761.6348147172775699332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98db2da16dd0f5e2d192c4c62f38cd40ced126761f955a59cc12ffb486370f5b
Date: Tue, 13 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747172393
