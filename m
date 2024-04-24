Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6277915B54C
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713977483; cv=none; b=dX4nS5H6xGt9yktgdGqNRV86cVoh4q3B0iRsKe0g/jAo2RxaZblwC0lc49PcSCAN2j3aWFdjQl8A+OkDS6xA85TrV9u419urZFnXXRj8hFgUWap/HKs/fMejFWYqAexat7MqeNeDkvOeUqI6z2VB4aysZgfsTPmCJBtGDP06FYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713977483; c=relaxed/simple;
	bh=W3GMT72iL0pppGPpqYCQLvzh23AWvZoq3gj3WiCDfgI=;
	h=To:Subject:From:Message-Id:Date; b=LPBcMD1lYAZKdFFRpAr+jHd9pmnJX7nylusTKfoimZIRSTwxYarp9PNVIDu8C4gipkR5s/N4+adpq6St8bZQOMxXVEJBTYJQwsuVbSP+Oj+/KyvGhExSU1ve4Qs21eZCkZgpzan17ZBAnJs/Il+7t4VwfPSSDrjGGeuRQBk11a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTJwK/xK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTJwK/xK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AE7C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713977482;
	bh=W3GMT72iL0pppGPpqYCQLvzh23AWvZoq3gj3WiCDfgI=;
	h=To:Subject:From:Date:From;
	b=iTJwK/xKUej09oMhk7Iel7nvh7FD7/Id9GsLc8K1EJIyFTO6KE48kfr23FZzNUFrV
	 04g/JSOGbimMAMeLdfCie1h6jeGvQ5L4KWgkb15Fh/Lr9Mz4C0Mus1VwIL3ZSZfkx0
	 oFQ0Kg2M6W37cluDOR7LeiF+5qzWkE8Jek1Oc5hNF6CIyVW2NQ9n0KJxDBHxQfad3E
	 65wOYXRCU5t1t6sHxWDnoyz0DScwPZFGbyDAzVuULu09xeYPY1jSrG5UhRG1MZR44m
	 90W74UM2MiT+4uUnlai9B52HRXCRnKqhrJ2nDgnxB2yf1hDB0rU9RbFeCXvBsQ1v19
	 YHMry05UG0HyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C121CC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 16:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397748277.725.14281411368862616457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec99c6cdc2da9e4dbc2f4d87aa5a56eab1ad9a77ef00e48a87184326cd95fd2
Date: Wed, 24 Apr 2024 16:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713977482
