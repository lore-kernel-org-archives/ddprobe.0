Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31C61624C5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759375193; cv=none; b=Q3vc5PAj1GoESanweZ0S1J6UvAT3/YGOrLuPDglr0jncfCpe5dyPPhYbBs4278LWjUqCcB4YltRBfDm6Dr18kJmipue8PkWB/njWqH+ODUIK7SNusy0sBc1uEC7pGwDyNaHL8Iyc1pjZOFT+wUK8KgF0AwlSwrqNzL7uXd0MzKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759375193; c=relaxed/simple;
	bh=NAdpTSfkgDzoUG4DkmrykW2YFSG66pk1jO5d5jIlMG4=;
	h=To:Subject:From:Message-Id:Date; b=h2n2kjy+pZYIFmlRt5rgUH78TMnVHClt62qG/GdoYDwwCvoPis8/frN9M0X6vxzhR3iVXtvWl/82GnA+DKHk6IrBVTBGF5rdeSxJL6GKJN4dfHk3im/sGMHYCv67GqYQPynv0M3jrEhcnB45ZDuinD/R+aRfR28MLIZb5p4dQvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDK8EHu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDK8EHu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0375C4CEF9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759375193;
	bh=NAdpTSfkgDzoUG4DkmrykW2YFSG66pk1jO5d5jIlMG4=;
	h=To:Subject:From:Date:From;
	b=cDK8EHu5h+PQxM5fvjonKISAtC+ZEy07PbAHVIEANAMHC8u6ZuX25l4oqVqrINUfq
	 WNwv54mD0DxWuxtqKY/ebKG2JzroOprLSmZyj5uB43rbU913dOPzwfG8svAoYdUj3f
	 bhLwcxF9eJB9mTGHzsnclQRZsW3utkRrny4bVen+9CEBbWxwcs/zTjJmzwbE5eCz4E
	 dpwRcOYnNwuFtajkjlRlwXN0KiYzLo5o5Orm5L4HlNTWKL4YTw7rzySCJCwY6osWZV
	 xGR3xUU/QtO1Z+Jpz5n87KOWLm6kXKEUduM4IU+hyM2Cf5etFP0i7BVgueJYQCK70J
	 HcwT7ebUAsPEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E596CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175937519357.5673.5801851056957182707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726f19168c3a4c8a5db9eadcc432516876a52849b1810291b3be26a2782baed9
Date: Thu, 02 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759375193
