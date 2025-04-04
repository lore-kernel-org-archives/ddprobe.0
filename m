Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE92EC4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743728395; cv=none; b=mG3hQ1YZCAVq0DkmVQCf5RMFsj56F8IUw57i6BIBdRCHDypn8Iq0145GbX92ZXsygANOcfkGG/212+7ZVwAgHOmKdKkU8uqI1dH6FCN27paVWhpNLDTp6d2QU6dRoUREtvvQ17s2p1uwECcAkwKNUhq01B90buCO6zD+5/lGp/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743728395; c=relaxed/simple;
	bh=WlMdGmXA77t8C3xjFdEcbSLFdJGxihKRHzdTzVSFR90=;
	h=To:Subject:From:Message-Id:Date; b=YsvQpp+zUHjoV6XIHa6V7jr520/rCyzATJ9r5f+rDqtlkKVW6M4JPFLfJMRnI9dQfWeTwsWjXGLAepdZlvlMGAPwF6sjHVnkoekX6+UKAG2AwNFmsztKKL34ylCzHdjqIqiOpoBlKrvj4c/SaVnYZM/v1sHOiQAXiZX5tEU0Tg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWOGY4mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWOGY4mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15B1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743728393;
	bh=WlMdGmXA77t8C3xjFdEcbSLFdJGxihKRHzdTzVSFR90=;
	h=To:Subject:From:Date:From;
	b=hWOGY4mbjm6PikwH4mes41MfgTfYO+myBOEsI/M7g57lmj8FPV4M7DENrOiCP5Ot5
	 qM+SNVrivm33I7jg7ELsHwNWjeQJ+09TfBgt2rm8Vnbx1gnfbLMITTl+2cKYE7+74p
	 t/ZJVQ+V7WBplnG5ohR5c3XF2F8XhfgZCX98FSVJCKMCA9Y5efZWge81/+BhyVUjN9
	 rGcHd8pBF7LZpgTmCh9yC6XJP++fxZoj2ASKHbhssTnmyqoxV7w/PoX+x98/ChzH5+
	 tVIuTSc84K7dkuKUCr1WJqZymkH/gm4cxtFGY2zUXQjH4krLTf0uTLayRW4aPPmMv9
	 fKbrADxXVQwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC8FC3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372839363.32379.15646408770360743181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed492c19e62b14acdc340cb64c145450f0a74f38b8910d343c898484af0f62b
Date: Fri, 04 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743728393
