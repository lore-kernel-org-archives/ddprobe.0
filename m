Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4CD2DCBFB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753894794; cv=none; b=S0gbbXIQWgT58bfRqqvxHHkuv1mdZYeaEuV36Sk1IRlQVRHYrFJMCY076tThMFeD2WYmPkdCJCi4rivY6y2INStOdHNriuycMwoaaq+K5+eMwY0JkoifGqM/1+DXDHNAP/cPShDFHd+pX+srtvBOxaSARKoZvDE/p+bOl8buBZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753894794; c=relaxed/simple;
	bh=Wmh8W5IeJRefkLf3f1mUq2dUJ+XuFzMliyzvdbSUi/k=;
	h=To:Subject:From:Message-Id:Date; b=SP02kU4uOgYibehibGWgNMVy9y3p8SFdzOv/P8jeKdwJYY4KCom8XYYX//NSBbGi9JZNScoezVYvtoppE6yh40+AzzBbJPhsrk++E5v5co2zG+kKi74c8OTPJv8qI5BSlsWt7yljSD2STHI1kY1NSIwJSgsnHpyJkwXU739Tb48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLvaKqZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLvaKqZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB9AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753894793;
	bh=Wmh8W5IeJRefkLf3f1mUq2dUJ+XuFzMliyzvdbSUi/k=;
	h=To:Subject:From:Date:From;
	b=mLvaKqZ0EYJM4AZXQorfZsbnO2vmEljXjFRVTpYmFfFlBxY/LXAJXYYZ06+KMK7Q6
	 9AhNESaf0Dhl90ZamahcK4KIXgsTTrP/nwUX25c150MLg86vPQUDHyTYb9kun0v7V0
	 2n1yBs28PvOGSxNhMC9JKR/5vvdP5Bv3JOrgwSTWtVnXNi5xaL2Sv9z9t9996Pt4nF
	 g7jdDKQXByJz156dtWqNAnTMBaXvuiZbuoeGT5Uw+EIRd2eYNoYf4k3rtnQxKxzV36
	 HGVsRtMVTKZE4XRyl/bfvGxiU6q9bxYukVNnLhFgXO1nbSkLDorPHGfFIaEPt7W4Us
	 SVCDDd+ZTn30g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC41C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389479362.26381.16341588399794559764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4971d4308acfd986a6f4e25312aa6ab99a6abf2cfedba0d97c936aec59b18512
Date: Wed, 30 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753894793
