Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11918BFC
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711807097; cv=none; b=SrMYALp0V2GRI/7l2JytckLcnyPpgQqVCGH7/lQUrkBgNU/Gkyvu3rYveeaVTtE93CKcMuOI9NoQSGeMKSzSJrPkyyUfx77cxSvkipWI1m3F0dOXtN0pR+X1VZLj/8F8WNUyzPpfDWrTjp0og67bKgmL3HTsY+Tt8qMHVFgEjU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711807097; c=relaxed/simple;
	bh=yYYfWWBPDh4tpeEkgPHM2oftTRzwXBUReBLxdJkSkqU=;
	h=To:Subject:From:Message-Id:Date; b=lkeWOHM8ZlctyxM4xl+dDA5tvHdQZwwy+6+4dAF1L2IGCmeQdjrd04n9mkjTyexocMMlf0+mWwzg3yJwClytNl1mBbuXUlwlj42xR9tZHxIqof7ozLct5kXhWDOUi0E3IsRfADPzSfTboT8RrV4G6iPpyN3kUqgyvNYJPFPa0mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cufdKLAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cufdKLAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0D9C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711807096;
	bh=yYYfWWBPDh4tpeEkgPHM2oftTRzwXBUReBLxdJkSkqU=;
	h=To:Subject:From:Date:From;
	b=cufdKLAMPC46PezoIQT0E7h6FSf021BjKmmyYn92F3IB9qrk3Cd9rmlPIX4UzZH1w
	 8K38CPG7uBwmRjfdZ6DC/jBf/RicVscRa5z8pagpiV+h4mcB30h8kjNSwEJQro3oCj
	 DI8Q0Wg1mRanO4b9RP8dYLcOG9uGlZahQ6/drYs6qy383DNl5wJAhW3HSsCvb6byJc
	 PKKfy9VL26eSYrA11tE9VghzZ4XLw/zCMdEDCuAxXXdRDaTv0y6p3j2MbuayQ6XNJ2
	 PsFotdEArj34tXhPj+CnFzhTXoihM5Gpvf2dtGYKyp5lQD8QvUvzejyyaWSOok9UBG
	 9AD9r8+FIuivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F20C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171180709640.2439.16116064514656949046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0865f780efda5660bb53c3dd0f708d51015c146f6bf1df0536eea060ad28f0c7
Date: Sat, 30 Mar 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711807096
