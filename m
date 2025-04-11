Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C32AD14
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744336194; cv=none; b=vFVhAvHdNa1ymRRQQ5jbQJt4xyNjeeDPXaMsIcCD7FwYY3ME0CCJhMPFdIFHeulNkwg6NwqM79fMoJPA+0G4UquPNbsoNiCS8dz4YoiZxifBm2sxeB88ZT/oJ+XgVGyJ1KLcqlZz2yV290uNQTGjKi/AYmjRFTv1VrRVMZubQQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744336194; c=relaxed/simple;
	bh=thR/JqvcgnnY2QNnRXSpnc85lSi38rWnureYzXeuTtg=;
	h=To:Subject:From:Message-Id:Date; b=Ce7EyE2SOWsTqIvXCWux+tIwu9XlXuXW10Eh06P7nA0iVOUSgE1sT3Z94Ne1W719I0zi60AmXWiHwC36UM7rU3w4X+YftHHKv2mAZ0s2+aU720aLZYSy8/Pwx0sga8F42BgD6hGI8DYKaJdfE0+d47Hh5zvnKip6LBTv8juqY5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJfAE7zC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJfAE7zC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6379C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744336193;
	bh=thR/JqvcgnnY2QNnRXSpnc85lSi38rWnureYzXeuTtg=;
	h=To:Subject:From:Date:From;
	b=PJfAE7zClqGW8nSGVqU/pPX4ZzHtdKmQQLhrI5dBZOBtKOOu/DvEpWQok3rly6A9B
	 OLHa7JKHt5Kq0MeXMjltgFoAUVzQ+EsLsGB0fukLA4ZMa266BGDAh9E67f/clD+7yb
	 Ch0gUAMV6y0UQl38BBl7rN2uFKzJGnytg2XjRu8ACZw24mfcFlR0kumAQCrmQZSu8I
	 tDCzsQMUtTBtf3pNAVQMxSPaGiG/EYWzlywA7P8CLDjSCTcRwBOS1DqwotSbQQCJl4
	 hEdKaNMi6hJyc52pk4UFr2otkfd7+z/o9JWOlBOEWoQ6SVDfUL2xBvtd9cdrB1yTXP
	 ny0h+fo3GyyZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD25C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433619364.11867.9842550666574296541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd50cfdb4b3973d99ff5af6b722949a40663f4a73e73d1720e536a976025545
Date: Fri, 11 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744336193
