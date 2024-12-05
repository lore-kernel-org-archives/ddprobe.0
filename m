Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB8E1922FB
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421355; cv=none; b=YBpEam/svi5sG6Je3RCunRKvZedMoeJjJCfQCSFuTt8hWCVQiWi4AoiHNIPw6X39DSG6Lw+P0a6Iu5qgJWZWtymdY29hIVhPOxo98HEH89yrXKM7SWq4uNqkAwyHwmf4YlAVvg8Hxf/TINhJ0OugTQpFQ7w+7ywb9r1DM2GUr5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421355; c=relaxed/simple;
	bh=DGskJwR0ZlUe/eg58s1PCNl6CVpNW+OzIW8lkKI6GdM=;
	h=To:Subject:From:Message-Id:Date; b=SHWukSpd7UDGLeuKCM8XR0RFP63bEkoRUdieImR7/OhCZImDcpmc2WF/26IkBeBwk26CAhdrC98GMvndIckmZUVHiH/aWQ1MHoUuQc8YUQnPXGciZrXS0ciJVMy9Vo2gAXWekCZEK9+TJ5kY/H06QqASMblGpYjQfKRegBIDaiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQeMrQpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQeMrQpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8144C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733421353;
	bh=DGskJwR0ZlUe/eg58s1PCNl6CVpNW+OzIW8lkKI6GdM=;
	h=To:Subject:From:Date:From;
	b=aQeMrQpbjiEo4ifTXElsQB3adXwagBw25HTmEVy05XKPXEGzFeJCXuUiQpsQPCcXA
	 LpaWnIOUMWdAP7iwEAiGLkKUdT3yzzf9efeML6WZYLVI440WRCN5wjCGcFo6ptjeY2
	 b688pHQdbVrSfEBxIMO8pEFQCqmxObegEY9faXRupWcnTYk/8qwVpTA7YhdNUr4Pgb
	 agR/qoiLGwsqyinH3pkgJqlYlDbPtT7UnBidZIe8e7SGhAZedxQo17/6tGtR1R0vAv
	 Doaih9gptg8aObVJKFUxYLE93f+5coS85W3DGBjTkH88A129dsDSCWiZVydqNfFyEC
	 lKlULUUa0+VDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97415E77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173342135361.22426.4438295432807922957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205325f550756b742adb6a4e8137abb2d51b44e05d9badddba8f2ad1984975f3
Date: Thu, 05 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733421353
