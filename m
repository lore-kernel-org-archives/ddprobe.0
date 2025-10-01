Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A2175A5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759354794; cv=none; b=LeBDKhjihlYro36/PYGZYtvxRDNX0xcl+6gE5nGM7Seuft+ZYrFd82yW6RiGTcvlQCGGV/wQRucauetoNKH2Fz392XjhNwbh8CqbbgQQrv0H4rElWl/YAYJV5Ox5qUjSYz+QpBt/K6o/H0bnM1bgVPj/uACUjBz5wZyr5q1Mj6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759354794; c=relaxed/simple;
	bh=FlF9p1UdYMPB2dJfu+2dgMzU1IuNe7izPXQ51ZiYU4k=;
	h=To:Subject:From:Message-Id:Date; b=btlWp3UgiULETa8Rqw+6AP74GPNJXIaeZZR1DTDce1Uz1ox2ailm+9M8/C5fF4okK++yVLhDOONGotkFklsiENh4KW1YVsqqQSyh/gVKkPmCZx75A7ychA2PPHaQODW9QOAFshoLwBGKvTUNoqMuIS35kAbDBAk7QZWeNx/VyBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWLTjSha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWLTjSha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D688C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759354793;
	bh=FlF9p1UdYMPB2dJfu+2dgMzU1IuNe7izPXQ51ZiYU4k=;
	h=To:Subject:From:Date:From;
	b=VWLTjShaKxQIDz6EDPe+nRnuAkyEK2pYwV0BlhI4GFohUyX5C3ho3hT6o2v7TbJHz
	 CIpeFf8iTCG74uBI4LY0CFy7BGp897NADL8SHyiTzSmV/NGH4IoVsuReEa9iY+FvgJ
	 CB2WoCDLzuiVQ4hJvh5Fu7roRwsdE2PeOvHveOmUe/kmWezbXV0sAFUWSCW8nGRhuw
	 yz167iSvj3xynwRbt8EXEv36oGV9dJjLrA0oZOOl3S5CHrDJ85XVOM1bOqpt9AQLnK
	 rQR/iozLLc9v8k/ikVilrxtkqGq8/jjTZnwk62O9N138eYaFRNaepHoJUmkaqvTkq5
	 kd0OM5FaEiJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F244CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935479357.1812.10098777055629357864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb05087cc7cdb35736f8ed7ffbf43968ca08b73e1e5114b7d309aefbc339bd7
Date: Wed, 01 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759354793
