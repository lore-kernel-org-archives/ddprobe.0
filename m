Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4081736495D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786038634; cv=none; b=bfLAkKXkYFHZfDCBW6gb7WJO1t3p/Ig5zBNEDQ8YbAbxMqpMmniudQ3CUIOLQOjU5LAhgb+6G84W8W3kAmSYCxfT0T7MlLlSZESJn5TSfdQG0ud3hGonQ6HZT6IqQ6LmFCoxVEZXQ1sWYwHU+/Fjms3/0QF88ebFpBD239czPEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786038634; c=relaxed/simple;
	bh=0qPwYaPCXDcyqlkDZrMWY5Rzx/wDFWIXfYOxMa83/OY=;
	h=To:Subject:From:Message-Id:Date; b=I7ja7ZMOt8g/LVKXlL0mPl96+oEglaMCjJASYd4H7PjANvd5rM6MZ9QLOdEkbem/CbR7weQDni07aoWoHAS/8G7ebpbVvK0HLz7zAa3+d49Sf9sA++kkBN1dVGJ+RDffKelyBc0tXdjrrKRJFs2vSt7nSYfhi7L1meEwwVOapHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vygxbvkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vygxbvkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EDFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786038633;
	bh=0qPwYaPCXDcyqlkDZrMWY5Rzx/wDFWIXfYOxMa83/OY=;
	h=To:Subject:From:Date:From;
	b=VygxbvknAmvaY07Qq9WsSJFMxKwpCDb80Pg0/B1ca6ltf3VCTkWJTSSB2gaPSKvVy
	 rLbsNKIv+jMnaHl4tItJznUMxVXASjE8fFO6NjyJ2+sgDisgmOPAOK1Siblzp1Ik0P
	 I2q5eTJGSateo2R/TM8Mcmwhixg+zER9Evbf+pFKjghOGsNHZgkzhgAFn4BmxIBVXw
	 rX5EHNu88wFbpUy0AZHCB1VKcwwfM+J2iZgOOjkWLmiY/0wAQNydeL/3Mgy1EKM9JU
	 BBzr1RWF6JvW+1aFdrvnZV24Ug40SGWzFenAuEeEycM/oYxI6hampzGVVDiZU242TG
	 wa9Nq3/2FiZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC630C5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603863369.19303.15139902175423353439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d6e93a21b049a089ba8e89ca3140f3d9506303aace626fa0ff517c8abfda16
Date: Thu, 06 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786038633
