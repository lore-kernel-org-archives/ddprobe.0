Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5954A0A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753009194; cv=none; b=haGqd5D6yDMmuBRH9rOod1g/xoll82UgwZK5gYyftDfouX2/FzzigTX1FHehoVzQwjyl6kB2QEE0AFsGULiMdcgMWlWZ/PFAByC/sJpBIPXdpxV7sXKEXivMJ62xJZBG7OhphtzUzVWyZWYqtQFZwl9AH/JOUOUOlTgTiq1sQe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753009194; c=relaxed/simple;
	bh=KQfs6tALzEylJrM64sAmTYWuqvbWao68SYaBwfD1lXE=;
	h=To:Subject:From:Message-Id:Date; b=eISBDRkgybXfa67BpRUbZRtFsEyyPkNMpL4650OrcobgFcyg1rsBp8wPpgod7J4MMEy/PfLvTiNlXbQWusxciTDST/p4RrpmY5FwX3T1zropy0fBg8hv8DNCSSVGHR4GihJWzAseecfL/WWN+ls4D5gcVwCkCLbpQJTKA2pXbdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExxmIj2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExxmIj2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E958C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753009193;
	bh=KQfs6tALzEylJrM64sAmTYWuqvbWao68SYaBwfD1lXE=;
	h=To:Subject:From:Date:From;
	b=ExxmIj2eLudqb8WiECDyGLOneNJ8o9U2ZW0wZUKted4pto4AFAVyRYle93GeYyBAt
	 cTX5GHDzHSAc8yGRjFZHIiwjXIA0mfsdOn4sjKeaqpDw9K+atpm8kY3dfuVeKXZ04R
	 jiXkgRab/+KarOX9p1Yd6aN0l8U+aRHQs+zpi62ztNlUj2ZtVvlF6ngMU6BnEIS5VV
	 z6J0nWhrrglYXtFM3r2HERuTeHruO7uwyW684iU1kCfqbt0gOX0TYJBjIsYCgKON7U
	 6doiE6Bde85/fxFzAonlsKcASEgljwmVKCExMTs8dEzRmgzkRk8O82djx9EobVd/7r
	 /YhNnm9kqn+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3DC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300919357.5504.5106206369282659104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581b2692e6e567cb09ee360fd1f3690c94c897d5f200ebd93696a98e673b37b9
Date: Sun, 20 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753009193
