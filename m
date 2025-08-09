Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1269D36124
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754704196; cv=none; b=OR45Ii7sBkMtJm7hobCStfVOOQ8M43CjvtW4q8680G+ldBdu+eb0c6jD7Ob4r1By8DOlPqoOAdgq81jh9fRaDhi12Ya2ORr509BV7YoFvCMPh3ak4zh27mp32rR5l4PwmHZOKNTRSSaLpc7VHkWtwdJrMdW7pzEbg7oBfSMEScg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754704196; c=relaxed/simple;
	bh=Ee61E7I9j9kBBWbpbSx+iyh7oF6kXRpMVUcodGALrfY=;
	h=To:Subject:From:Message-Id:Date; b=EDMOtSd6Yd21wfG/laBY7tE2ZncmSlC4xEO43xDNwbnA1xEWPSA9uE+1zkeaxzHeFIYCHQ7vEnhOZ5tgHZDyhmU3R8FpSz7MAHBzMt1k7eT/h2v76tcI6WYvCZIDJhs7KDPBHCVV2dXQ1+lIkErLdo9sRpHghjjQj68lsd0eFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC8H9Ez5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC8H9Ez5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67CBC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754704193;
	bh=Ee61E7I9j9kBBWbpbSx+iyh7oF6kXRpMVUcodGALrfY=;
	h=To:Subject:From:Date:From;
	b=aC8H9Ez5eCQ80aVN1WTKCe4Xei1UgFRquw8Q6wMBjLnXW9icPm/cHz6zKFaLVG7ne
	 kR1oT48ta5wOfs5gU8g707A7Bqy0vgA5QBaWUZA7pKqS64OhfAq3CdYkkgtCoRE/Yz
	 SoB8yKpheFokOtgGYfhrvhzX9DCsGbw88zWChupJ/S7P3rGO2F+xsoFUygup3q+VLX
	 GWE6Wps5dO61Yq+RgEEiDby7bIUhPs4gfo1W8yk5HpMdBTsHSDzPuS/mBk3d9TmfeF
	 C50lpvb+/AmMzmnU4lWBQTbWqrHc2gftFvLGHaUHDYDLIrDP2+VEghne/xzu7V0APy
	 vVXMiS+Pgw7tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EAFC87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470419357.10461.4677182011919476291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f3de9c84a9f31e39db1c1e7bc59a35a3ef47022b1fe8f8aa9ec40d3dcbea78
Date: Sat, 09 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754704193
