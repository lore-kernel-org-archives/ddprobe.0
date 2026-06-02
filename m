Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282EC3D333D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406074; cv=none; b=C6vzWLTIUtWBHYBXC138zab/21dMfm/50KpuwjPTdmsRFKfy0seIx4sFBPRQ+YQCusadttBwPRkD0BLUFBtFlXm4T8BGoTuwD/qjW9f3v5i2YdIabyY3+aEW2V882NGw9AuOCQ8sQndqZ0LqAxtUvIqNM3ARIK7FE6l9aTwbJ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406074; c=relaxed/simple;
	bh=otp2PB4LUkp3DhN6xJS2/wTH6zD8kTVA6ycPyokm26U=;
	h=To:Subject:From:Message-Id:Date; b=bjQUN5m3l8jsaIGI32jByajLVhphOHSFneoX6NxKdVr5xAdV5+UsaJwuQXSTuDNQy7WXDyoYaPLWFQkB38gI+IItMrEXfxXGd+gANclPonvivT5hg7j9XpkPUQeVPJUg2fx0TKiyBO4DeYVw7ZOkLZR7B3kBT95rIpdf3eYNLZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiuO8Nh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiuO8Nh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CEAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780406073;
	bh=otp2PB4LUkp3DhN6xJS2/wTH6zD8kTVA6ycPyokm26U=;
	h=To:Subject:From:Date:From;
	b=hiuO8Nh/Ru9Xm7q0g0b7zsv57ZmUvvCcdBdv61p8r39scvmG7oYfXxjArl5HuikiZ
	 djNUbOBzQ/wKqJG76q4X05KXl2G5zIbPZ5F+tmWeRMTKSNipNJmjVH+AKhl0Bc1wmj
	 nBDKEAMgB82MV/8ONL5VGMXBwufPPvJl8XNn5F5zs8nkfjqYILS1A+Tb7PFy567GC8
	 110D9PUR+9UsHbjkTGCoTa+wFJnYJu25nRc72DbdMVtYUHvROgcMNHHMsoCOnvyo/c
	 qb8DarcRE7AUzXe+2HrLjJV8p1pkI570QtSXIvOmPb/R7Ay9NDDYEbuJ5OiKc6avqC
	 mSXoaZl2y3Xtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DECCD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040607368.22038.11057467860281877473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0e2da135f80590e42d1f123799c026cd140d9307212c824c4331ae7e33fa0a
Date: Tue, 02 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780406073
