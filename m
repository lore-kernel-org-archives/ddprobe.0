Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D30E3C099
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727179554; cv=none; b=bQq2QmJVv2gSZ9YpNLQ4k6ukyr1bv/IMgF9XN9/a5+yl/GnJN7hGR3egocIRyiYDM0IDQoXSwoobkcva5z7h9hBYFUJD7wOmlN94B6s3I/KQ3VP7g0wu+FEfwwttfw1nEBan5TeLNq5sKfnq9Jw0Mj1VMmVz+oBx86YkfIVR1PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727179554; c=relaxed/simple;
	bh=xAb77hTj+NeZjILgzE3IF24EKBNWuaVyFwwhTwvd4hA=;
	h=To:Subject:From:Message-Id:Date; b=gZmnhaExFm6B7lPA47IZGP4CjpOwgBbNHakDnfmy9yanhDOnh3gP8tj0iKJ01SQQiGfx5bGWwZxhGe4q/yj8wJNlYoeITsB7aSsiVpTHQJW15g16agcmd6cUaKAsTvBDYmkDh1xW/y7+1YzAl3+78LgahWdCwdUNnqHhE6IBZOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STJBSiOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STJBSiOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3F4C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727179553;
	bh=xAb77hTj+NeZjILgzE3IF24EKBNWuaVyFwwhTwvd4hA=;
	h=To:Subject:From:Date:From;
	b=STJBSiOIOOE/BGGHIlrV+pwZP7IUzWhkBSmVCKmEk/eYSjSIX8b4CvgiOXhq3pR3h
	 A/tqJCVoSTh5GPEWkD05L1kDjpql1hu1yCl5tjTsH6zsV5vkljTuMrnbbdM9xij7zO
	 bB2GJhVh02aK8J08Up6huJCx0GQpcN5j0VubMjN5rK/4neMT9l8ItsXm4XQoHi+gga
	 VwB+MWeOSsmERKDOqj8uulifmHNdvnir/z2aRLDZo+qopxTuGzgdRYPWBSZBYpEIqZ
	 IzdHDut1Mt9wBzJYIp6MrECW1aOpDPXdQFeC4zfaIpHdJbm6vIGjKvhdadC7/8KLP5
	 rTwtlFRf7aFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9794ECF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717955360.28537.9932502565234287286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0396840a9a68f02ccf8ed666a6198551e1bae19eea1b2bd314b3c42460447a
Date: Tue, 24 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727179553
