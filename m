Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71383947AA
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777449453; cv=none; b=bUEWPZHK+zxgR6UNl2Bs7bJ1goH1jNC+MnHX7/gXlmK6p+CXKCJjf5EYe0VPGeskkbvgyw1DPp6bQuEP1z7Cpz2SC/kba4r65fPp1NsW7gD/FArx2wedu+rcFo08FMf/ipw2ZzImOA33sl+9bW/gU0p0v3O2JFDRlmhcfAdbKY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777449453; c=relaxed/simple;
	bh=IJyBUpRJsuVspf2kybsXuchPBY373rm3ClRXv0eztV4=;
	h=To:Subject:From:Message-Id:Date; b=D/QZK3RpislPWz1C6Kz6VEvXDCYq3Y6gIFy+6wVJvqo8qutqiesA1KJ5AGoP7x0PwItRWVkxBr2eOjaPSO4x0TAJwIYN2gKMRqRSbwFx+iMrQKaYwo6h+8LMWDEZ6xYlTecroSOFB34Ot/1YT51dtY3AFBzBzQiZootJLkL7W7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4b2RiNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4b2RiNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC9CC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777449453;
	bh=IJyBUpRJsuVspf2kybsXuchPBY373rm3ClRXv0eztV4=;
	h=To:Subject:From:Date:From;
	b=B4b2RiNrKGb+GJeY11RWhSbJUWylx7UWRqDyOW6/OJPVPBw2lL8lLCq6J3D7opdiz
	 XDZvTbwpWQW7nvW+3jaythoT/dD3+BP2C81vT5U/Gljo5HUTVz8wUDm399U+4jUqIs
	 2De3rf6Vy3aqDubExRw5G7yJvQc8hnr9XPOsfJlIz1I2aK/1laYkUvBrmWCJq+UXEQ
	 nKIiragVT1rSSwHv7oqJ8R52hG7LmMSX5qyHBgufe2tYHhc2+Ydw31EnCbbBSKhlIP
	 sEgLhNlfRDH+0rQ4YiIDD/OzOV2K7xRENjI+NdkJyZ8rJsu0n5rDze8hI8AWKzuGdk
	 ren9zNoGqLhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4BBFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744945368.3644.9101794509489855618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9910150aa157530335c54b7ee694102769d57261ea1b7bc6b4513528fb50deed
Date: Wed, 29 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777449453
