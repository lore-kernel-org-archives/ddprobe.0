Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C142DC796
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757864994; cv=none; b=H4RehBgV8ex8BIsYb944L+55jbaSr5l1+lX4i+nV2EYG0Ep/dujrsK5zHPjl7VhYqzLrigOEQo6cu0XFqGIyxOa2txjEOEHOhVlPiHBl4gnpjmZ3RkPiacrJGYAfS4o9WuflhPSgg4UFkinqBEVAzN/NQUJRoV/8F+RgMKQcICk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757864994; c=relaxed/simple;
	bh=YtRaAtoFxZVBdOYtgimOUFTQwjRr7R3NM37k3kKDYaw=;
	h=To:Subject:From:Message-Id:Date; b=DEGoFgwP8vJZaMm9h57NJm8Us/G1XqYMyw/MX9F34dMeayeeajWpYGmocBRSYJICtfxqRmNEFpWtVRMX8yeKn7w4zl8n1HQE6p8OOz/p25dqNfYP5Mbre/dE1xky2BwXVFKUs1W1wg2YCpoj4pxoA0IJ4kvd5BenhiRIk9Linww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEeez4xo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEeez4xo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A894EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757864993;
	bh=YtRaAtoFxZVBdOYtgimOUFTQwjRr7R3NM37k3kKDYaw=;
	h=To:Subject:From:Date:From;
	b=LEeez4xoCcd6oEzKtHoWGy7U2T7KR4Itn6rJOaQj0U95uWNmzAAtQUCyxUPBB4g5d
	 wIAL2ugl+PpYLdi9eLaEHwk0VorKRO6YjgjkUA9WrHyJAKgrFAPdBl9jH42sO3l60l
	 BuW+4DmncIwuMJqufWhCUt15pjbEqQ6Oydkv92wQ1drcrzeEunU8hLzwhun0F499vc
	 3clzerz5Pg/VtljEEJemvwACjlYdc4AcP2mtKEPOURWcOHQ0lgJI7TeI5RMH6ZCGg7
	 OfyUJ6JDEsSCZRpwZA5nXZh9jti2JPG6EY4+UJOKkKGYw5wU2nLBnYeVrQE9oP8PVd
	 AyRGzVSCERdgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967E8CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786499358.4427.15380562573667776547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bb567ae7f2ed34d0940845f22dbd1353830e921cc84a87e2cc03ab880fa205
Date: Sun, 14 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757864993
