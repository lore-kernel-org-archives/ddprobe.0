Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3AAA935
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759600194; cv=none; b=qih7GpBimmo7d9e1a9xbApcdSu//3ukN7e4yLHG+1Y/+qGjcUzlaun9p5/mFHRkRru4pmpw+cDH1+V631EnDspFkHp2ICc5UIlGvW8AXYLHgargYvePAsBciKf1VFYCworwDizpg4lIlZtFttFRjxzxvQDl48kHRr/mOF/DH5mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759600194; c=relaxed/simple;
	bh=mt81exl/egqI94ASzmqpgAbytswO8Fq1AVwCRom5XnM=;
	h=To:Subject:From:Message-Id:Date; b=MBJXAIA8VOsy1ARLjjPofHScOqoP4d70TO+1ytLCjZwnFXSLdr6nhvUbmIoEIy4IwCY6hXBfor/o6qx60qftE3BGfs82tVLjC6HPGnf5w42VGSWTr8rwDYcYIKCan35+6OY9YMuydJOzyHalyKEPlWj18CTnpyVtKNTQ6p2Em7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScVzHmXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScVzHmXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5CCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759600193;
	bh=mt81exl/egqI94ASzmqpgAbytswO8Fq1AVwCRom5XnM=;
	h=To:Subject:From:Date:From;
	b=ScVzHmXaesjXsE5Ub7u/jMSy+9mQ6ydZrrMcoi1hG3PIQbe0PtJWxzjcdk+E8k4S5
	 5JE4tjApN6PQbam2mEjMrkYFQDyOhqePLkOcUxAdsUPoGVHYWkz9bM2gYXgjQJX4C9
	 YpyzeN2PlLDdRSBQlgdJepvH9neVu/M/PAJo1/UI6ItP3Fn2OmHWF/PYh+j1bsZmAE
	 +oQcBKdelrhBVSAr8ve/Ry/z+WUHw0k6waqLSzQxf/cu7lS9bsmo+ji17lxQWfNgTN
	 SdfKDCDfFiSMUSqDfqqPSAEk0TGbbKg7N77JURNFCeDEYjYX6XSIn17yC+aY6kz1CR
	 gFpcivkk0JnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E8CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960019357.5171.11316087001883853297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11b2c46238c1550fd95f2974d08759ff87c60b27c352dd9fa46602eaa18aebd
Date: Sat, 04 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759600193
