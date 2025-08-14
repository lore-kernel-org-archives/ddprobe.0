Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336701BC2A
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755131994; cv=none; b=hBqqPtZIiRZaNgZ70zrsV94r60VMILrmkTns/iGiD3iT4t/MK46jhQFFzUwu6+roiD4FqpbBf+prgQ81OI8jfDXMwXngVbMmTvVueX+4NPzoznrDGgeLlS5wrsKp354RxJmyXda4IscNTOBDnU/dPsg95BZb8bidv6DEpXd+B8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755131994; c=relaxed/simple;
	bh=YL1Xbl7E9OGY3dFHsdDTszZFE6uebywPssuuV1X7ONw=;
	h=To:Subject:From:Message-Id:Date; b=IZMj+2ryAxOBiDvOpkNaQLUUjxAE3aD6jG0bO+xJoIqSV5MYCWHBSkj3UwaoJ7U+9+kXvw0+FKLkCvnSKrHoKY1mKFsg4vJ2y5iRhxy63PNj6ZX9i9bv4hZ4O57c3TjBvGJlyIdHlnSTlSZDZb0AVyojUFAaHuF2hA9q6OFQPH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R507Hp4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R507Hp4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB321C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755131993;
	bh=YL1Xbl7E9OGY3dFHsdDTszZFE6uebywPssuuV1X7ONw=;
	h=To:Subject:From:Date:From;
	b=R507Hp4AhwVA7yq5MRJIvT82v6YRh0wGJbvM1PmX4HI5EISir1AW0NbzcPpIksUCD
	 4Q6w04EPI2dlk7BzhdkPDmRVBjJKfRjctJvLIugpnS+Um/4wT5ELTFr/NqjPFUpzJJ
	 ctWtDlHRLAN21HEd/Tyi0SlVGKa+PfkEVVGSCnjE4PzD3Y23S1M9rdBFxGI9X/Jycc
	 N59yGsyoxat3W+VjHV9lTCoaDzF4F4V/zD2fDfX7QoHW6AmCL6sGC36iMabjkQYu0j
	 874rP6ujjqYbCJ6K42KqAOOST2w7P8kjy+IM/FrpklZQaBMXUZkrVfCtZV6bDoUVgj
	 VNMoERaNKrrSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045AC87FCF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513199358.14361.12784927263465795920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4fb5c835f9309a72be823aa2c537a4c534547a05c42be9a98bfaebb38bd504
Date: Thu, 14 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755131993
