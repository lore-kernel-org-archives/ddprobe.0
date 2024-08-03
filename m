Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217733CF1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722728754; cv=none; b=pErVr6f7rAfTOqrytdpgvvoX1VYMESbf2gYBaLYG8eUQul62i5a32gr9ahV5peyy+idcTDJUXpnTZUJ9dHxHowfZtmSQpJXFBFtAVPJq4CziMN5P9lhkLRksPhqR1ArBmLb9/xEhtRqxxr1opkmDz2K0Y2/JSkNjDhnqCDaEvl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722728754; c=relaxed/simple;
	bh=GvGr9WeopNDhXDoWc2gWvx5IdHXBR3/bzBxjryVxT+A=;
	h=To:Subject:From:Message-Id:Date; b=YSkV1ugrxWB2xI8Zw8SSoLUkugyzUb7IS0m1dUWKEILKq8qwsJ0CgenbaitYSLA7fAI/JRfaulL3MRFE24wJULKd0jysB5pBjiejMA/iHsDOYQN7PLS9tpEEjr6uMe15RyMpfKGnRA5824zsb22zjQq5UHUecChY3kFMHed7PmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW/Tp57o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW/Tp57o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CFBC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722728753;
	bh=GvGr9WeopNDhXDoWc2gWvx5IdHXBR3/bzBxjryVxT+A=;
	h=To:Subject:From:Date:From;
	b=hW/Tp57oI29k2VdFdOufJ3gXR90JEJk+y/tf3DZ8Tsx6ft55o1YcWRXuCc5L8/GAd
	 On/SteWuXGs2KdY2D6Nwu6P4HINqpGzaztZ4Qj198WRiFpqC8XWiQJK+lDs/zonBMX
	 RonlZxU9wy2bIymwnUgX14plhdyL8xhYOFPQnccUvs82PzaFAUkCJLVEPVJmTbOgK3
	 QDYoJ4JwyljOhXD0cdXgb4KNrlTwFlQgB8ao2knr/fCKIVjwBlyrXdEad0DMXtMhZp
	 rJuu2sp/xFCbG7MTkCazw7vgnD/MFFX24jNMn64qs0uDKTYuHz3e7JJG6qqEnM9y+h
	 BhvlCvG1h6ehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6FCC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172272875361.18912.12049483636954754653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e085aa47fbe3b88b409ba779cf8ef8124b38fd85e670e8a4cc3bf458529312
Date: Sat, 03 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722728753
