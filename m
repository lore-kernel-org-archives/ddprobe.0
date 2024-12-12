Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31644168497
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734031554; cv=none; b=kMDfKptmHFFpiCoTQIqjkaKXDiZoeukkQWe7jyCvrbtO141SGeZvg49agKFFa4iDj1L8M2T68PU9kXy0mF20Em1Ia/2pP3/WTIentuErQK9+o6wT4u//GEAGjFUlP1tCePqYRDMAT6AoRmSZcMSxo1deKHO2kQUunAw1QkZDRxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734031554; c=relaxed/simple;
	bh=wiR+Fe90rQeX3/lQDBJttykhpq3R9dY0ygU0V23OKdc=;
	h=To:Subject:From:Message-Id:Date; b=qBV8mwBKeELb8qK7I5dlRSBcoqapQT29Kdey6M0mOTF3gbBym5rHblZXJ8UwXHspJxCwYVEGCq02TwwgdNK7efOxTM3N3kKw6t6pZPGrMSDqpzKyYn5rZ0gJtoS+FsgB6x8h3ntGyFht3vZLR0yNkD+tm8kyw6EOLOJ14Foyocw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsekZH+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsekZH+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B945BC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734031553;
	bh=wiR+Fe90rQeX3/lQDBJttykhpq3R9dY0ygU0V23OKdc=;
	h=To:Subject:From:Date:From;
	b=SsekZH+EoKfJN8A/aK6oyA86bmSumtjkOjsE4iiP3kRe47OaQWQ9fwMFmqDFJjoXV
	 qIxYIOdOFErSzsbZrAATKTe2jru4CCnAwv70XCtmBlpC2QfYIBY2iy6s7Iq4Zb7c3y
	 3wOuS5BmOLn5UsAN9JisUrirmkyHtEi9KNinkAqd6pjnqiVMRSmyWhd6ixHFbJ2nue
	 KUHrp+LDcp2+ar6nld5xrlbMCY4u35x7NVqzPsfgvROaWMyCNd3EYKHJsayIIHRumo
	 W3nQx8Ig99mk5Mbg7xxt+noH3lBwyjbRbubOq0LOi9oXJ2zGgyXRgzTwJoCqTbbHTY
	 6Oooo5IeDtyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CF4E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173403155360.6559.14714472257429004275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929dedf558205207c29284992185485af3dcc1cb63809ff2afc0ee2a084a90a0
Date: Thu, 12 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734031553
