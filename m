Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF07B2F2D
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758420593; cv=none; b=YbKZREH2Gs5+zFCeeBuJl90+KQnAwB0ewSfipowM0O8Vos+wPNUrfb2lwzz+sQuDZGDw4NfpPEVWnKsNyak5by4qfIYasJlij/WJeOr0QZKlxgp5iXMlYrvneEOKGpZ89AZzxFYVnMde6VTnppRkj1FjEqAqqBMnsIjPLYJArh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758420593; c=relaxed/simple;
	bh=lHl0IWlTcAzPJBkw+h/fXPNisQ8XnSNI1VZyIW0VleU=;
	h=To:Subject:From:Message-Id:Date; b=kUpikwU45k81Ub5xVt/IK/EGAY0axtuqJnga1XenSYGFUSQnqCME1eVwNwNT+M94QTsIWx6muIH0gDF82UlZrCYgXaXw43y/YyAsnz9sq1dh4MK8URq/kP2q1Qshs3roBSw1Vvc9IkO5XbaC/FVjaKQvKYqS9NwzAgmRXmXUW1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4zRWP/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4zRWP/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D17EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758420593;
	bh=lHl0IWlTcAzPJBkw+h/fXPNisQ8XnSNI1VZyIW0VleU=;
	h=To:Subject:From:Date:From;
	b=M4zRWP/0Hfhb7wOJZeaUVecp6wM8cKvtaaRHUbnkiMaMxbKCAfGcO9WPEt8QchTkk
	 LZvIjDLpZE+/m/D2xMpz4lZYLxt8FslBcmGqwhCIytueuitsgHePotocgzrLVhFzju
	 uOKwMs6Apa9vRKt2EVOsho+sqrGyyvS7hmC2pywJKQbzQTsc5fHgXtzTOs0H1ViNTs
	 70URQRUZifkhwIyacYy8HtGIIuGjTj9fnjv/NKgXX+Ab/aBYM4Ke8EaNMJpIqqXmm8
	 F1gVtzsZg3Mp/2vWDsQW3XxkIP3uh10qHrXqcEoVgRzA6blHRUBe4jUYNCbZe01oDL
	 Uxfr1AqMXbd8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E747CAC5A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842059357.24770.17532608873149667606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9358f4e82a2cd4d8828dc47c578bf0818e0b6c62ac416aaabb93874dafed8d3
Date: Sun, 21 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758420593
