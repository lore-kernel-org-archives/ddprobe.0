Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B85747ECD4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781123794; cv=none; b=XXaKyR+7zKFihbhWXD7/q07P0Z6bTpmHfIix/VZawPMpdo8SjsVNV6Z6U2m2Hcy8E9+kIA5w4EE8ArJzGtyw4p4PsbigdqpaxMCu7uPL1V4vto7EuhPOffMw3QQZ3LRZFBRbeDgtEQflbPTU0Z207u9gsxnS1aktG+dPf850FbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781123794; c=relaxed/simple;
	bh=RTHbRjaBVSrDe3+oG929d4AU84P87CNmrj+PHZr6z2Q=;
	h=To:Subject:From:Message-Id:Date; b=atgQpvUanx37Vrw1qlVF2PvJefGlKf2qrJcrca0Uyp0Icn+PEwBCBgx+84TL5U81839swj9TEW1NAn9sEXgClCxRKG/o5DELc5hQYUl9SU5eM4WSwRQF2cT89jreZ9K8YXJNSJT78l5aO1eqSiiH8dkfD6oyHXBcLWp6tz/tSOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twJ7vb5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twJ7vb5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B5EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781123793;
	bh=RTHbRjaBVSrDe3+oG929d4AU84P87CNmrj+PHZr6z2Q=;
	h=To:Subject:From:Date:From;
	b=twJ7vb5OieMCZFFM1ltH60v5gdEYHXfgT4cyYgeOinndyNDZZSRnVxALORVhgQiOd
	 Fr1DLITQeKb2bpZxDRplWDROZWzQxyiNMYCc77wS744JavSCnw5IjuU5AOsjHvbNGU
	 ARjAldu9nwSD+bo5YWwDLUvR6mIUJOlRxdoORJHGk6zTgj0pIpVR3baYQMNS3ilbyu
	 m/kNBaa2iD/L/5KTxUFXcoxkmMKboIZogkWplmnrA24UKr5osWXynSNbZEWt5sOnTU
	 I+ICT+F3iaF7/9nz70RnrIClBkn5hXtMl3uBADSaamkajoX9TkJJdb3/Emfpm5TYlI
	 3HRqQmJ5hNSPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFAECD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112379369.18176.211069221306420944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0dc1186f0c2da762e83ef83f6fc52f9d236a30547089e945b0d3be40085f48
Date: Wed, 10 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781123793
