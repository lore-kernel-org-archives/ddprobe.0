Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB14030DD26
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760527194; cv=none; b=f4TJI6BZODK1sr3QYgA/kus0+eyxFY2H+bgiOU3Bb7m6JzWe2M9tQc/B3QeH+4O2yudSZ3OHN4gFHgnaHRgKvgdvzfMURu6Pt3zrQ1O3ecri4WaWWOiUTIc267OGHADiqwW4PT60Gjl7THr/pAwsnti0XT6Q65hCa1M8CPsUdtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760527194; c=relaxed/simple;
	bh=tZ9M8d0A/Sx9lMY8EAP1cvQs9Ox2mc2H2KNxpyKW/+s=;
	h=To:Subject:From:Message-Id:Date; b=ab+wmVYUq0U67OooQmzPRI4XbIp9I6kYOL115kMafAisH0NrLt0Xkcm3SbrnbRspkdsKMjGka9gxeoZIUNqdCO41FhzUTotcm2/DC7bKr/LxxG1yhE9W265FcgSir2kUM9DJBVPmoqWpgutil0Bu++OR0quetnrdO8lNKWWLkPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOHCjau6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOHCjau6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECBC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760527193;
	bh=tZ9M8d0A/Sx9lMY8EAP1cvQs9Ox2mc2H2KNxpyKW/+s=;
	h=To:Subject:From:Date:From;
	b=IOHCjau6vAu5K2ptouedXw3AAaeEbIphcDv72M8da28nmM8ASGNGuOeqa4X018Bhn
	 btqtYtTHjwgMa8hhyDtzlTOFtPhNyFNPus2uWiFwgPHrayVAGOJQExp2+WEukaF7nB
	 1UmLtFVfC+pwdsKSkdE10bAEDsMSSN7o5VfYT+hzZDKigPkpDzm2yK0ZGl4EiYyBKO
	 yTB+8XZFJDsxXy45gb6Owtkay+TcjIdsnSqd5456UhS26xndf5lMZnWCwln0d6HN75
	 lKStGioZL39uRMquAR8KWWcLrEdM/5efbGdiEKYUET1RGo6rsCnanbj29Zm6hMXGCz
	 A3sKxo0JHBMZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91529CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052719358.7711.14040973180090929738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734c26a48ec0f2eda1c745112d01d580bc996e4293e9b24c1f98273065118bfd
Date: Wed, 15 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760527193
