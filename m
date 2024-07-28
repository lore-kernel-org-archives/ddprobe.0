Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2FF6FD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722185754; cv=none; b=eOfKQeNWVtpN4Wx2BynMO2d9SU10zky42AltihWIUnvU3fpXscxtpfBONdXgdIgdsj3ARdNf7ZnbzwHcdDRcbLpSEoG5wk7uHp2UVBoHNRyGT7lNNC+cR3vpDZzbN4bsscepRKd3zB6e+2NyaZrzEglhvQPZzYn8+S/Ci0e41n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722185754; c=relaxed/simple;
	bh=2JgV6IyIreLb0ZWhrZr2FGGrF9ZFqCwsk8je9E9eITQ=;
	h=To:Subject:From:Message-Id:Date; b=Dmg5hbOtIBVKPjcXTal7pcnVuuUHiYrUKUsA/NaGMXoRos1eBSZh24cLqm78HSs7v35lZcCM60Bc6sC5ew1T+hkgLPSF2qdjQeBSpaY6GT0ASPDdv1IzzUHD2/dqCpucaOyylYMaCUJbm9GtJ5443TBTjXd1aUovj7ZYi/dV0xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXql1Sn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXql1Sn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15B9C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722185753;
	bh=2JgV6IyIreLb0ZWhrZr2FGGrF9ZFqCwsk8je9E9eITQ=;
	h=To:Subject:From:Date:From;
	b=mXql1Sn6ES0f8cZbn6Npp5lHfC0tjfd4zkW4nG8wT4/VZysR4BtYFwibYKypkaj6t
	 aPU0JrES2fJJNd4bJ2MhWU0NFvyoF0XCbVSNAYZB14p1wt2k2tol3dBSH9pdNIpaHY
	 tYelHW+Ihl5xwdM2BWLc6UHxmNnaIweBrvQ8FB9pRGhN9dBr26va/QpMy3hDLzsk3A
	 LVK0oswZjuusoJ/T2LOk8U6QCQL0shS3xgjnE21RizBWhDaTIKRiAKLCT+r/YWx6UO
	 zXVvyk4W+qTPGehwtnwWs2LChYVV+Av6lsxyDDOsJQVDLK6EChPezZg+lDFOFJl5J1
	 UcTXqgwUumy8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991E4C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218575360.11860.17184197030390844934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1d805137b39850617730b5e1a1f030460b990b1ba8c1fc75f89e2ad9760101
Date: Sun, 28 Jul 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722185753
