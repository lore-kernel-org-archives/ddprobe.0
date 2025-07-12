Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1436D264628
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752314394; cv=none; b=Z1n6FCKe7GTXLUHLxMdqfiKX6TGyCvc9zv+IR6SMduVK5bpfBux698n+F/ZouJUz9pEbzqfCnS40dysLXiq1OYXLRtYc85d8rxyojAiaVREDZH+cX8X4LO7ETHfDAXg/4RYKAcCYfJ1sP/3O0OT/9WC4Xb/uSAnEu49zK0FZDQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752314394; c=relaxed/simple;
	bh=YgwZhbyzi0D8iFaXwLs/vJ5OX3Z//QlH774jLnF0LuU=;
	h=To:Subject:From:Message-Id:Date; b=po0wR/nNrhZd1qGM2Vf8bNb8e8smG4XIHmiKQ8BeNJxkIHmchwydtJ0aUN9KjAGmCRJl/aPVQ6M/4lNLAqcTo+xtCwApmBN5xSB4EhIKSPPZJihiMFzGeEI6c9VVws7uoU+Er+n5AmUhkq3pvoXpkUvfLmx7dpMQglyNw5H8c8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYJ1ZbI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYJ1ZbI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F870C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752314393;
	bh=YgwZhbyzi0D8iFaXwLs/vJ5OX3Z//QlH774jLnF0LuU=;
	h=To:Subject:From:Date:From;
	b=MYJ1ZbI+6+1sT2jSfaGH+dWAJ7M+h0yqsAt76Sok5QjlSp3Uq59U0ghvRf6E84maY
	 BgpBeQG1IPSsf8EfAbfseoggE4AhEQU6lfKNPLREJCNgTOZ0E7HKDHih+IAKoVyb2d
	 EyAvDvimzIwfSk+HVocQKOr6i5VwH7vtictP/i+R6zsDcyNbFTYs7f9dh1qEO0gvcS
	 WEkPaDSf/1F3CtRg00kx6uVS2bowMTpwoAYXgGFwZvj1I5H6XWtW8MiPpxOHkugbQw
	 OnuHUTC3DJA1kcfEfr91xGOhAn1T1vI4AYnN6pGkAvMLIfvnWrZP7GvouuLY/tUOB0
	 NJjbCtwMfXbRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9342EC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231439357.31949.10234126278517377716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7aabab5e1b3388a362dfb729e41c8e121ab96d5e86b2879d560ba7e414bfc2
Date: Sat, 12 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752314393
