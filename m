Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1A41474BC
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719143543; cv=none; b=KaM9Sd4nrHX4ENQTKSI7JjT4BTqps4vukw4Paxnv6OLVVOfS6H9wBEZnr2fjaamLN0RAJqC+JvqRvLe4Y4RzXWh3Dz+UPY5F9/0rtydos5qdLxXvhCKga9WduScfV2CyTkHiOHlCAifSOg/98ax3VJ+Nd/Fireh1tcy7WRSwwlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719143543; c=relaxed/simple;
	bh=IE7fYGJvibSAZcqzldnHVxNEx2hEHWH/r4twcvbM3ao=;
	h=To:Subject:From:Message-Id:Date; b=pCi21wEp4uaGhQXXXv2HJ4z09Qzj9vrW+hA8PzmZxyLn13Wg72R1d3xdfHqhG5XpaLvHKZEiwmNFzPsX6yggR8CEh8xZjyi1Hfye49txRrkYVIgeLI6OqohZUp2n2SVcwJbb4tpdkGDQ7EqxJKHi6pjhB7QaicTwkKWlqdmBsJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOnR5cCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOnR5cCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EB0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719143542;
	bh=IE7fYGJvibSAZcqzldnHVxNEx2hEHWH/r4twcvbM3ao=;
	h=To:Subject:From:Date:From;
	b=MOnR5cCg/V57UJ/MINRIk/n0l8tpSiegS4/JaYVsNfk/RsMG2FIGdpL9/vkXOvkVC
	 7fgzeRPS01sE1BFil4JqB4JNKZQiZ4HruhswyiUkIuECNV36hLMC9gKeUCSAyVEvTB
	 2S25BXfjDnsuPAUk9Q85ke/H5AKT0Zme1mAelArP/KXBajpA3MVKfyKS+i3sOaNJ35
	 P0Vg7u9Hm30tHksaalJ/jHYyAbsI5JDJsea/0+dJ09B48tLcAQFm6QcFcRfvyMh0nC
	 PGMl3aqFhy6hkyx2Z8NPgrQB/Qr+Owpm7jZB75IdfXiefLt/0g35eNyKRrU2VBvSKW
	 CsnC1jVMTfsRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5223C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914354277.7623.13437460452208826952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38190da46d1815a31c31fd3a9272374ac154a00ed812a768c080debb443472a2
Date: Sun, 23 Jun 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719143542
