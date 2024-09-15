Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED9410E0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726365954; cv=none; b=T60rwPs+NGhW584RxIQQafCFkyJz4kHAWflhA5Ad4VhAl2tSYcNTJKVziC6SlEaOFivDZb1eYrcA+9PSWs5zAo6o0aMq1uWfNLrYB16a0VeIBmvLtn8tz0ZMZv/o2C4rm7KDO6zco9Xu4ULJH8AYN+4pHJ+Mdd7NawohbFFdWyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726365954; c=relaxed/simple;
	bh=8FX4yR4RH43FyR2/V6nRTsAt52/DaZr46BhHXc+wXcY=;
	h=To:Subject:From:Message-Id:Date; b=BU//4mtmbJTmBgKmo4x7wWPKpWnv6pMCWEHxx4zUho1sG+TfxtlAFQgu7f+6i+4CSEPKP/R6pHDER+kAqSSG1KNFhmIJt8TOQNrVX/Pz8mXZpAkarMWlN6DfxQGv/rp5hAj9CA8tVPM0ycJV/CAhCZ9u2VL/dqI6tNUqCBT9Y+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNGRbzw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNGRbzw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE862C4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726365953;
	bh=8FX4yR4RH43FyR2/V6nRTsAt52/DaZr46BhHXc+wXcY=;
	h=To:Subject:From:Date:From;
	b=tNGRbzw3XhKhihA7t83muYbfkF3+52qN+G1dFwdoSUXBL89vTpoAK7MfvMK1vQApQ
	 VgtIEwal2tX2dtgpjAsEVZ79otWEK7MpJJiSWWR932CrrpOU+h077aqCvYoQLOaNNe
	 sZ9suEmRLrUAXxHJphI3YpT8pvnUjLFAFMHWSd0NVWyuRxPZ5slP6UJUdAl9E1cnbD
	 cpk+fsOPK4sOIqOSlNZvIdRa9KS2NZzf2kLn8lyyjDPKI+5rCKOvnn3HBuJXq/gj9D
	 YgxARWQ/nURK4ZnEoWid8jOwuxry/pRpLnIDOA00tUlsTCkZ5gr2EOib7cNmB1Fovo
	 kwxxcpT/hCWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A218C35FE1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172636595360.30366.12567789823146932243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0299e294981217a4ee6f54c7bbc7e99a34e6b99ef6a6c0e6650dd30b4902e1c
Date: Sun, 15 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726365953
