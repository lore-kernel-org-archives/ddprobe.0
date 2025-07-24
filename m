Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361DF6FC3
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753316994; cv=none; b=jD//2vnLjtKQ70l94mP6718WzcNN191w5ji0vk6Apb88fGf/178XAnCMfQt6W5OlgoCyMUYkMdJJ32NkKxKskqf0BVNv+cPq6DqWJs3KjCYGCCU4LiZPF63LLqxtTr8+Jd38dEH8Oiqd4oOZhtPMdLQxlX73ne9W+gz7jnadeto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753316994; c=relaxed/simple;
	bh=mKwlFTFwvsTpo3scJykABaNaKJCAqwL0OxshHUsrsLk=;
	h=To:Subject:From:Message-Id:Date; b=msXGPinq5hX1BKwafRqgMZlUulMCW42krgxWgNIYn/tow6nAFmFIWDGN3EMFwgtQuRclhgTEBIOxNMx1GSGxd5zUUtRKev4XC0+aSFnoy/8DjxmyZ/abZzP7uhebZztW2Yzckj9oSbw6MwWiwg9212qxQtelSQ37AF14Dw2CzwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz4T1eAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz4T1eAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A81C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753316993;
	bh=mKwlFTFwvsTpo3scJykABaNaKJCAqwL0OxshHUsrsLk=;
	h=To:Subject:From:Date:From;
	b=Nz4T1eAS06OFKFvLqM2Zc7bIhvvmLxbRmQOeCNgKA86fMtonhOe6VjBnieStwuGLA
	 Ag1AoVq5ovll7ZM48KJqOiigBrib6WDjHH9P4q1iLql6mKrOgxW4Drd1uJ0TcptZQT
	 Fzn826ixBtfSyY0S5I4be7GcZ+FsHOco3d5NuymMchhtRrb06QBinqh6+xH/mtfsGC
	 1pCn1qmmNv7z0QO0l2G8mAmpZGiHB2X6/n9lYuOl40IK9cgeRCDypKyZar3YnpHABr
	 WgWDvhrG4jwDekAWMlUYfYkxUo93c5dJorw2pwjEPNmPRoaSWum719ZlhXtp4ySFCQ
	 +z4DNEFqQiT3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E8DC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331699358.22244.2559694142448240162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae981386a4cddd7ec106e1ac2ae677335e2e7c5ed0c677f22e47dbe33eb6d73e
Date: Thu, 24 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753316993
