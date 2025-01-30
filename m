Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5103717B50A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738281354; cv=none; b=gMikQY3e3nUeqC0c8kL8cJGZkLd44c7NZ58YcqTWYquzFa1+y7NhKTiYoe5EnCNcyDxbsMfPxq7rpnT1P76gGnRSe4FBVa7uXC8C1NvGf6C0cm3z3nXKfqAsQ6yd8AonVOtA86vbT0QelSr3xaa+taMGXT68NlbLW4AuAcVsGYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738281354; c=relaxed/simple;
	bh=1AuL7fQNCtg3nP8kMgEfeOnc7iB0ZAL0VYKeHGw4oqg=;
	h=To:Subject:From:Message-Id:Date; b=BCLIZObNjlxmBWie4872XSv6BvOpFyYDxVamTaMiTpjjEpi9SfXqRp+kgGiFdSotSsl2SKCJNJl/R5xy8juenQ76Hq7EzIYJdp9NvUMFpOrDNtzYyv9A8U5nKaX6I2A+xiZ6tkdTTNRO1SkYDfFC9KP6e/joYBdFCpTgf9rB6IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c62qgh4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c62qgh4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA13C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738281353;
	bh=1AuL7fQNCtg3nP8kMgEfeOnc7iB0ZAL0VYKeHGw4oqg=;
	h=To:Subject:From:Date:From;
	b=c62qgh4Yh76Ow52HvZ9nb2um1ldeZBvfHagi+K9BFBwLOVW+FRM/ZWs49biTKBerC
	 vFo5UuH8FVhMeYwJ4nYBQbKiyNRJ22JrS3cC2GviKhcWlA9Dih7+ySTeK6PCWKABvs
	 KahMWF01zWvbFth30DUnOuPmoph6FS7YxYeqdUDnBa4A+Jf90ButWrC2DwhC+JbwjK
	 T9toEsB0k+dHULzsAudSDsVDK5LcrY65Snb2dXx8Ig6Nv16J2n8tni+BjxUkijoFVy
	 NnyopBHxv/wMicJOhMN4l8oVfx0YcNZYCRyKTiv8c4ouTjA4XtKIjBWX+JJc3IALHR
	 wcnrljJrrNnEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A114CC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828135365.11371.8844238591292176661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c75104e7351b041b4aa4d7f3838fabd6fb685c32e22a6329ce4a9977098b58
Date: Thu, 30 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738281353
