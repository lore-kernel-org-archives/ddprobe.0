Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946FDF59
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783128514; cv=none; b=jGllj4WQB8yGM1q3i2g+hhUDSnvXL4U5E+z0fkmasLjeQC26gd8y/jsCirV2mg0D10aOhf1ZKcXraH2GND3mT4vFJN9cOaBkCnLsKkHYxfZOz0D8mXRjOxP9NXghxZ9ksqvV8dUidrzz+0ub+NAbItrknOo+r9MZ5jcgKVfOZ2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783128514; c=relaxed/simple;
	bh=qMC4orYBEVPKm4zFBpNwl+wqVt31AZPuW3rHoxGqy6Y=;
	h=To:Subject:From:Message-Id:Date; b=Y5GeIciJLGVf7JtGjoajZxUfKxNm9IM6Dt/TvMyD7du+D6zbJoe/nNjFwmInfyvUpV4T40hrSnLGF0ZrMNOnL8LLELDkjiOfn4OBr2Hzad69L6Pk09UjlyiSNtD0MtSbsqAGVdLEyTYfug7y68eQo64OYg9gD5i0bGsZy9keb28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkcrzPVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkcrzPVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7122C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783128513;
	bh=qMC4orYBEVPKm4zFBpNwl+wqVt31AZPuW3rHoxGqy6Y=;
	h=To:Subject:From:Date:From;
	b=FkcrzPVGzWQQjoIbk9PuxEfcmFDeSgRbCVbxRqMLoSPYuWUDZtM1HfnzJhNzL22Xi
	 Msa2wxWL40rknjd43BE7lGl0iW0O0CgmGKXh2+19jPt3+N1yoS0Cg5dx8ItXG3/X+I
	 6XXM0CphuHgry3uL1V8Hv5OxBn3trNwQd7ecSZjanQJVzoK1YHVkLLv4KY4zRJVPF7
	 OlutfxlfBTne1dbME9Faz/aVToruwWAzl+vX3c4KNftXsZuaHGUbgZYF57ADxO0mLz
	 iNWj8l9jx0DQr0UtT6tGHVo+R5GFpl2rG48gBf/j66Kcuepu0tn5wLdZImuqDMMza2
	 Uk0DS9FRpcbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE864C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312851368.13024.10316053718815832996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aebc6eb3c6da1f5f2638da7550918324280138ef6855c052175a9e83bfc173d
Date: Sat, 04 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783128513
