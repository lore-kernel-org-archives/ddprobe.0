Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A75427A06
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783688914; cv=none; b=BK/a1GqMVXxqGxOYTp8uXUZkaLhKH4jMlixMAqmq6/kzOx/cNrg/Ko/SRfKSYyKgKYVBTiyfnIpScxkBvFsZLjSAcmkb5Cpe+38j606Obio5J8RZ8/1g2Tx56A2lm7cVajHeUclwNWDOy7awCwttqQTA4XSz6ZrKBPtwOZXUjtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783688914; c=relaxed/simple;
	bh=uG0Z4fv1AOMt/AiRtLq6NZRocBp+F9/mB6QiU++Twp0=;
	h=To:Subject:From:Message-Id:Date; b=WXnc+/pJZ6v/0c3wX1LhfwJtBicMyS4WBMZ8pNP6CGQJu80hIYlh7tiH1VW2h9ogz6/ooh+CC+L8350sMAC14GTooCylMXNdstsbVMyW5gk8eNGoy0lXRVHv2fx6ND/JGA7XPfakfYYO9nHjpzqG4+yln0TN4SnWbIC7kSCZnmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paPuAbVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paPuAbVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA532C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783688913;
	bh=uG0Z4fv1AOMt/AiRtLq6NZRocBp+F9/mB6QiU++Twp0=;
	h=To:Subject:From:Date:From;
	b=paPuAbVH/gaLdNS/qMy+IRra/fL9E4TunnGQRhV9ErpaT+c6d28bplEOGHx0PRHe8
	 W+5lnjz5ssbGUXWN5OyK4XbqHlNy0JJ2XfAe+3qyy7gzonyT3KjLDfY4rTUr4usTv0
	 1C6tBGGWUMC0pcRYXw2ck0Zwhgq8ozBtAAPOYE0e4FopoT0kOzNpgITTgy4VfbCoxb
	 cP6pcKKt1ZrMXS3CdRp7QhYY1aLvqarn/6TUB46Ev8orZUi59D2mvEjIdskHfPw8Qn
	 Z2PSESk0/GTmCz0sdceIEFuGZzj962ldVZiT6V5CrTZD0ueJJPR9lOM2MwivJbKvAx
	 QGzdHz60Fs9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09CC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368891368.26899.10221967891107523230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea7c5152a96f957890ce158e78789c7cf7d75a4a43ec7b013090a36b3f8630d6
Date: Fri, 10 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783688913
