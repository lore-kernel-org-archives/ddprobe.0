Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562844611F4
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791751234; cv=none; b=XI2rH18vuijj5K0h9CFtGddVZ4u5CI666p+lJX6MJVBfRsh1CkYkAfipzCM8/AnRwC6u8FCvBUaZX/HTcmNBWoKkhQy2PQvSLILqwxrDvl+uHWMug5mc8IV/g+zHzpgb4JG+IAlOWdEhisV1gLfCOuxr2eRML1XtlojHaTg6PEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791751234; c=relaxed/simple;
	bh=tI91bCgWE29YU2u+rSB0h/hLTO/cpICpWjoA9xSOj14=;
	h=To:Subject:From:Message-Id:Date; b=O73cihPN7XlEv5Uccs1a83q7b02M115utO6cZh+Xx1c+cOr0DyZEFD/szJAQ8yX5TeAtk3feMDWdggt9BG6siEDPrEiWh93IKTX+q0S4dAbeUshEzxi8m7RsvVVAwHjiwv6ydwJAaG4I37RC9FLW8pXnF94MCasry6yp2y3wICg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvnegnJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvnegnJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF5FC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791751233;
	bh=tI91bCgWE29YU2u+rSB0h/hLTO/cpICpWjoA9xSOj14=;
	h=To:Subject:From:Date:From;
	b=nvnegnJby0JTN4eKUwMe9yPyLKllMIdLXELKHuYLXvY4SFrGe5TnVKXREzwDDAsdl
	 zLY9/RZm/tmUx/1/RNgmm2ta8mey29FK3t1p8UaNdwnhyoQcShqC9uuHf2vH78W+Gr
	 EFsQHaciGzRX5k6xsYapB/N41bUchb8e51G2FNQB/Ub3uSZWypaTFY0D1vnn0q2z/p
	 h+41c0GGSx11d8mN6hEzOXezAWFOznc6eKj29fq1lnPF+uMWPssKMAfltpOA7nJJDK
	 x0JT3Hu3P9TuHU/wZJFyWZKTgwG8lIEkVihh2fm0PJ7OHoytgziIW7eXjsztiUOzu4
	 yT7o7Y99f60oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB409CA9ECC
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175123369.7603.16604730552788410227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fee6d6911200f734c0600d15f36740cdd05b54b36fafa38923004324ab1baa0
Date: Sun, 11 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791751233
