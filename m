Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993F3769F4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792215634; cv=none; b=nM3bLneOugW8rTKM6FPQIdjsHN2fVs59zi2t/Utmz0sGSKJ5IkmkaRL0lPXEf7NUfvS4uLqubLjavq9kRkgLnSwLxzOT1T36evIX4BTOwVBDw8TdsZDVaKkMH7n9+Mr2AzRnQM0xNetQRrx3IGEL+WH20Ql4b5oWqsH+jJ1rAEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792215634; c=relaxed/simple;
	bh=T+Kqj6A95/29Lj/xRqBnsEcWaN9J9W4bigD0RGPYvAc=;
	h=To:Subject:From:Message-Id:Date; b=s2T6P2dx+iuF+UMUYxwjQ5uO634QiW5p2P1rSKwXd7d4n9VcXsjfcExZH2btZKI8nYvWipsEYnOuQgETcTdvX7+Acw/yl4dlkE2Rg9WTQ9tao3vAmXqbGlufT5GqObfFduCO1mastIJxRA1t9zus6bLJbfCoFCOyz2g22xTGa2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1ZhuHpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1ZhuHpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D540EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792215633;
	bh=T+Kqj6A95/29Lj/xRqBnsEcWaN9J9W4bigD0RGPYvAc=;
	h=To:Subject:From:Date:From;
	b=s1ZhuHpDvHHDPZ6C0K4IbhJxaOS7AwnrGFKNbdOYd6gouy/C4nTZaoofP/M+5FGp8
	 Hp0vAIAu3TMuMelNimiNvqPKPMR9Ax+y9+NfAgZmFVc0Hqg8Kao4wbcU4vfNr8Kl9f
	 AEMDtcflvFMyAmIcyOzVOMbRioHNrsRFG6IvT22yRhEX6dsPL43J2I5jlJ86rW7BPY
	 +11qIjAHeiT2cUICKf/dipJ3Oj9cY+S75MDpiIfzMXvxGY+3p2QYYIJ02l3S6ED6kE
	 2+4A7OKsnTSEcOoCB0uqJxl6MhaEQ+Urr/Vn0qT+t4n8dh3WF8FORl7m+sucCXgAPA
	 BsAuTB/BxUUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E93CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221563370.10102.16745183821226156742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c82c887642ecd1f389968fa23cdee286db781e16df1cdd5e4bd945a93d8b8c
Date: Sat, 17 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792215633
