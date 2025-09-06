Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D511D9A5F
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757123994; cv=none; b=pRhfOwD3G0ypn1oBcgIWP2zy+525fMqFndTsmu4tai8wB4VoKJ+GpRgu9lUWjrndjNvJbji7DZtiZpHvPnTbq1v8ocJlT3IPHUJXRy1nmShO6r2npBTk+X3qu95GDZKj7SrMkL/y+4anImEzQEIROLBA2yWunA9I/JZoQWxREkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757123994; c=relaxed/simple;
	bh=wiBI3RCMauQHLciSHsbsEY1/VB2i5k/avrvAW4XJXS8=;
	h=To:Subject:From:Message-Id:Date; b=qNLulc9xXCt8N/bA8Q/CHISPSax5KnjO7/qz9VgCCQgiNEZiWkU4U9GXheLiMfbtxvqz2EEUCZN2z6Fiffm6o2wmVRqbFcZKM1FoxzQQibspXizSwH8N27PK1oYhk3UAoPDY9/AQGI2XbaBoLRPZKFoi8gCnazPonfRrPhyJjl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlmpMdma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlmpMdma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757123993;
	bh=wiBI3RCMauQHLciSHsbsEY1/VB2i5k/avrvAW4XJXS8=;
	h=To:Subject:From:Date:From;
	b=rlmpMdmaUrIEBzxqQ1YnpDMI8H0A1jCmV9L5UOx+7U+rxxji/Jazti4eadks15FLD
	 ILL53M1F+33jd7Fh5XdMAzAQbtg9mZ5xmZ06Wjm1xYJcvx6LisnNnaoAlJcTqhDY9L
	 /zMZkvO/cAREklmeycQ+gb1qhlMIfUSTO7aeU4Z/Qp4eFV0tFWhMgGF6mi5ekytk3g
	 co5Wg5Gl4nbavgZNEwcFsPcSkNckQp0x/tuipgjzpysAM0hRW9Iu+op7xrg95KCE9W
	 5aTc2P85kwWfh4reTnc4bk0GnEsDPdchRy91yE9poXcKwpkjZNEFOT0s72X+4ZEfR1
	 o7mJj4jjgvUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAECCA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712399357.8875.2430980349077080440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74789d7d8e8a3996e10c234ff3ae463f20478074e18c4f46f0c4ad29823391a
Date: Sat, 06 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757123993
