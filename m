Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5D31802B
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715665943; cv=none; b=s1pqaAonYirh6hPWPicCrqVH8VyyVn8P51MlWqz/mxRLcgY+kHz5ZiFretocdEUNvUOZ/tJHMfJoldH81JpAefyOeETxQ3nCXkH8Le1S8XpNp+sH/UiFdFIswyiJgBdvNdSbW5aDJm0gg1DzaIRj+M1dT4/6Ekk1KwSFDbkxYzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715665943; c=relaxed/simple;
	bh=fZ2B1y5SuUB77pVV6eceD8HRmxxZSQ/MFN0UJDHAmS8=;
	h=To:Subject:From:Message-Id:Date; b=hDSO4XWaZDgQKcBR7zCo+2qapVcGL2JzDCl2zZ/QWYLGQoHjnLzVTQ5YOFk2ZOGlv9zJV4kIiID/NF0ssm9veJDzJS98glY6SrTKhGiqg/bABi3h1OHBTmIKDG2FP73qX1t4kF+7J+PW97GIiLI0o2aQ/eMatSc8pwCe3KylmnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0w0VbrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0w0VbrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB9FC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715665942;
	bh=fZ2B1y5SuUB77pVV6eceD8HRmxxZSQ/MFN0UJDHAmS8=;
	h=To:Subject:From:Date:From;
	b=H0w0VbrVSLO0WUdJbXYOiC60b71i5B6Tb1Q/6+S7PLPrpjDHovle9iGQjdmtGELkH
	 nz1LZliIN08if8ykLArMBh2tA+k7gpAyJnbcIiEXFWX1Tw8s3RBUCKZGCbx4hprZqK
	 UB4efckKIwqIpDCzfZKqpAt2IjGM4oWFab1iAZNgVOMaRtYYoPV7uR5pwDaxoTg4+w
	 be5m/ErLtDdliCWm/EgQGtQKsdfHaPSP3MBj9hOXPmHW02C84rJhNJWaMHXwynSf30
	 inKC9JvnkcHmfyOvwC7I+SLHkuMwuATs/V4LdJulRIJ89Jni4RBXtZSYubSHcqgrnI
	 K66XiH05LoWwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C931FC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566594281.29567.8114855595523439591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5511b24e02e949cb4e536dcf46c45e08d9d549a0c905ea291e08df4d7e9de2bf
Date: Tue, 14 May 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715665942
