Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39471A071C
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745288394; cv=none; b=r0qHJreT4uyzgaAkGtUQ6/gH+YqFZo9g3FXFojjuH0D+Gmyp+BGnSCLeEtSssUkRoHYBfL3SSdKfVTNsxIQwgZxtwD3+R6nfzfizcq5DIfQnJr0QYEv5v7MVX2kRIHzyQfeAVWkd03QXdZvzCrpFiPcrIeCHl/dthG9nfUhu/N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745288394; c=relaxed/simple;
	bh=bwAUEVbJ7RifujyrtM1v4GU8hZ+VG1jcCf8KHmphoGo=;
	h=To:Subject:From:Message-Id:Date; b=nmeEFzNh9ThN2sfpwCAgxkVirWH/qNRE8YgerUDshssqKPQP8cj6H0AOci6l8M03UIGS1zFYdvIwAoGgMCZOiJXURcRb6g5FSZ9sH+Od5lP1w4xcY6+1PxibMZC78AAyLF0X5IORba255Nk5ircF4K6tN+S/OMbfm6m6DLGQ+Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cq2nut9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cq2nut9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE0C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745288393;
	bh=bwAUEVbJ7RifujyrtM1v4GU8hZ+VG1jcCf8KHmphoGo=;
	h=To:Subject:From:Date:From;
	b=Cq2nut9qneC6huyH3s9RAevpyxWRZut5V/qyo30RhlxttRbvIWHJE6WAMAEG8x/eg
	 4UVwYsuYNPX+D0x5dgOh+IjGIDcJnRaaB4iG+V4rFXe2s6ZjqO+QaL96ehMt92wQxc
	 s9/hhEhQjQwjwNgBetZtna0dla7vfBLvqj9Ivr27IOP6ZmiCTzKtwSp4+eYL7wn547
	 9+Tg2JLBDiYnIU8+7qhN/xAzZHubjpBfIn2ZOSUPLz9L45COt3h+/yx0zL6q/ru3+f
	 BcJRjLg43E0JcZbDl0HXoaRQn/mMYpbaTBJX90KLm/0XTnI+0hFFWRCZRP+FsQQL9n
	 ersXHKOiwj5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0780C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528839371.9909.2948477358950795323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf4eb4d32e25e4be6c407d2fcff680acd07df15989809050dbe1a8c4726041b
Date: Tue, 22 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745288393
