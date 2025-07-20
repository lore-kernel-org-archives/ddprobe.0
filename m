Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B3F153BF0
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753012795; cv=none; b=FAeEZHfS7nXpgrb7KWqD/2s3lFmPTe0HxE3bo2gLn6BHVIdK5wwqS5SSL8v1bMfTDuNdEs/MhNk7aYuk7xzA0K+GQBI9pW/Q91unZmD2M8czg2lS8af+cdkcao6Dlkd6QbhzmCauKqI5mXndsfGFMFEUMexzDFgdPQUc/znO8Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753012795; c=relaxed/simple;
	bh=yZBIvIs5ProM5auwgpBkbFjA3SyguhnunGzay/XOcgI=;
	h=To:Subject:From:Message-Id:Date; b=FFvy7LhKT6InfoTMhwS9Dh4SkDpR5oteauidTDhCb5CcSrjDnYqefP5AMh8X9MIEw7/YLrYDFW3R0fy+wIcxgfCKxYWEZviN46p+LmJlErgzcArfNCbPcxpAboCAG1XrsE5PL6e73k/5zLg8eXqfi8NBxfl7jjr/XHVJ2epZ1T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii85lhrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ii85lhrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A435AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753012793;
	bh=yZBIvIs5ProM5auwgpBkbFjA3SyguhnunGzay/XOcgI=;
	h=To:Subject:From:Date:From;
	b=Ii85lhrGDmJF5q80Zo87nZAV9NNhUmWRvreaVn9Nt+QDiGkDw417I/Tw9kONGwDH8
	 tsYnbEJWTrInNa2tPXNrOvJ/3ksMVXv0zu3ishHbwSSGoIFpdGZ+gNi5cYFNVFb7CB
	 Om2LDypV0Kx+ABfO7PKT3QEaUukj2pYCT3XhgPeqwkk3KCmD1WDqE5GrJvhs8x7LZO
	 JZWeYPPWXID1Drqtw2JdviaJwkgEkP/9TkCSKSAJaIzmUOs72wiH1wlMR+5f4kJz8B
	 CBjedNuZlGlUdOptNZI6c2VNHUTX0tBXWcowIRoHjbwAg7WdwcHqXiEA15VptT+4JH
	 FdRmsDKWCeXhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DBC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301279358.32462.10997455928520090014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09705daeef6ee1aee4764209e56d250e4133870cd0b841ac6d424b0b90312c0
Date: Sun, 20 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753012793
