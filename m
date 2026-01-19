Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F40C358D16
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768830834; cv=none; b=CY2eKFyZgp5spnekvuZSOukh2Xlt5wtXJ+9uptcPhYpVJphonQ291kBlxeGLqucdC882vNLtA9Hm99V9dQM/SLm3WtYTkL74M617Io7qkOVIieHz+8ArSzgBTCDGCQDE34CiOhSCT6Pricy+ef6JRIbbaa7Bl1S2AKc+j6WQpmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768830834; c=relaxed/simple;
	bh=J9hSe1ksGf5nzFwehXbYpr2vau/Gjh/3LxAeUZZCg3U=;
	h=To:Subject:From:Message-Id:Date; b=AQU/+nFjVFg/bu8mP5F3X80kcd8R6/vFCjIvc7KwZMUbxuUAbP7n/xdoMeq7RnYLq52unuB5W8XEAFHw7zH+hL8Md0n6oE9aDVVAAoyO6mc+kCsp2eujOlfJpdAvkc74vyb6wbwsRvFPhmqMO/W26irbY2iYQghclzZuZcs+B2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGruYMRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGruYMRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768830833;
	bh=J9hSe1ksGf5nzFwehXbYpr2vau/Gjh/3LxAeUZZCg3U=;
	h=To:Subject:From:Date:From;
	b=NGruYMRFSNVrgXY+1dzKEmPf/QMkgMCHsnXx4K5xjYWja5QLTzJqXHAP7ZKierJU/
	 MuBEqmn7daiBBYzd3dN3YJdUft6REmZGr7XvEmkbhuC6o4HZWD4klD2NngqxJpYu5b
	 2D1qeybKoDY0n80UqX1YNpBzXxLBd8IcbBd90i96oYPbhPFVA9IYEgJRI6ZpMHD/KM
	 L/poXJaZGtEuVAKT8gFD4C+2NLpX1sfFGqdPZXRS6IRTIKXHA+SnNhGiKEhKNXIWYj
	 Sk0CrD0y8jr17i/5EKnfP8LcDHztXCxjqpZrQTJvsmY3TWAh3GDTiZvw0Q0fyl38YG
	 QTd0x2u7pNxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD5D29C2A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883083358.11296.3909977305517970351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bae22fdb53235bf67bd197945e829f4f821140febbb5988aa8452047f4a8508
Date: Mon, 19 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768830833
