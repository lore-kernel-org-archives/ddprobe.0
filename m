Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0800E36E47E
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776842254; cv=none; b=p6aNtOEld62tu7vvigIVU0SaxkLQl1sTVYmw9OZnkzeBlpb71OXm38dnLPe5ygQqkbeVdmzzL6ppmOHMkiFbLj5rwjTTHrF6koiXTbrWmuNFrN7Mb8sg86iZZ29VEPJ6La/6O4j33iozJa6o03sUP3DgL0Nosao9R3i11ERYqhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776842254; c=relaxed/simple;
	bh=rsJqZsXrqx0M0LIv4oYNgpZdE/kKxShoX8WaNdiOYfk=;
	h=To:Subject:From:Message-Id:Date; b=n25+fx3lAV+3pR1nB3Nmc2cqv3mJO0F0R6LBGGcGUBXEWt8bA1ezdkVl1DyGtV07ZvGMvAlKPZF8eGRmuzFmDzsfQ4RxBlo/X6Qt2kODjrRBcKrtO4OH1I8dxT+tBX2ofEYcc5qJonK7ayk/kn45bCriveVR9dxeZGqLq0IgMqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frdH/wWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frdH/wWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA99AC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776842253;
	bh=rsJqZsXrqx0M0LIv4oYNgpZdE/kKxShoX8WaNdiOYfk=;
	h=To:Subject:From:Date:From;
	b=frdH/wWFT+iTsNn4UyhubUYn7TzT6BnHcYG+0gDUNPvnIhUlufihJ0vRa4q+ZGP8o
	 2LS6vKWnjzVotT5UnuCTJ1lVqEptQGRHDKPdv8lWgbYnkF/xpXajLauH9vufp1Vigz
	 YT25R4eWfZofDIbdrFNxM3BNVZU3+4pWFOOX5KjUuOwiIKbdz1HrbtMcOgHVn/ZxFW
	 Mlnjz3EcO14l32FhAXDCpvJDBTMTtLfESXkKpbmSV1OqAR6uuYnWhQ8QxeGNZa7cUp
	 l29YohiY/Y45GzkJ2hY978e2U5tIQ443tLIwyS8hw1uhRqHswei0FhGCpWE6gWC1VX
	 AbUHelJDBGTUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC59F94CD8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684225369.3967.16192977827024019140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48df0a6aa4bc436b898dd9e5d1cc4cb496120c29cffdada13e603d59934954d9
Date: Wed, 22 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776842253
