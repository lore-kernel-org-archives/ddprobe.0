Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3A71FD4
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783745314; cv=none; b=QS1QdDkHZ89tHoMs2Ud776cgIIhkWK5jYAptGPZPLRFxGgosppqaRoqPTWxFWB6P4MWaMv0n6AxsX6jz0G/snNbbAkljl+YgBmuugkwzrm6LvzwpjSOvoGPLw8uyUDLSfCBgCqdw8NSsNVoQiAUn6jzu4RfoD9QzcWlYsUAx1E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783745314; c=relaxed/simple;
	bh=kjh7LNEl7XgVxVUyr1NXUplOKO1kJxBa2m7jjLfMc+I=;
	h=To:Subject:From:Message-Id:Date; b=NN7p6krGZOoM0aw9gI2yG5CtvN1ghhO1X6qAukhFuID88c0SHsyKWZ8uvxGBb0udJrtg+1r4ioLiAsGpZkR0AHqdAJRbbEbXdv93frqUBTZzTOweDMscMINmkYdgqcOaph2C5XnewsiYY9zfTLb12Ip4ssxBnMzpThGa7P3ldZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZm+wmS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZm+wmS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AA3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783745313;
	bh=kjh7LNEl7XgVxVUyr1NXUplOKO1kJxBa2m7jjLfMc+I=;
	h=To:Subject:From:Date:From;
	b=IZm+wmS6wZUpQvecG55sGhsRsCP7mORtepSDMUY7kgZ4kRsa0cavFfojxRHzG5coW
	 8NgDJd48vo+cg8L8DXDbRvSeZfR+dlXcv65+9IBa4TqV9CXqNpjq3Ql9JEmBBWApte
	 ONEa2k4xt6Jt22ws2igtb1H67rGCquXn8E1fx9ohdHTnPVZIzRNTN/MsWANdwTv9Ic
	 dHxo7+D1wCsEgOlAo7MWLvBhcyFv0b3qNdJG+RnjRZ469yhvyuJdPa5laOGyf+2EDu
	 OIFQCtvO+d8xWQ6p7+KeP27mZbHtVgcB4s8nTr/FJBxUOLTQOl0IVGzKnU32nkWiZc
	 +JHXZkXtEGt/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC05C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374531368.20964.16444159712864852859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d828fcf6839e8bbfe46cfb8479f1da271fa6ef665c4e03123a95807c99fb3590
Date: Sat, 11 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783745313
