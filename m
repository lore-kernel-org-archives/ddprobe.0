Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA6D2494D8
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776526054; cv=none; b=hL9DO6MOV1oYG4vPWoGHo3a4g+GmiEmRkXHCeQYPpIx8nXJn4HLxJl3gTpRrtyr5MxvpnnsKqDpTBheyjgZoaNLUowOvMZ6F387PizwnxzdPEZwl+KcrlCoX0LPK386aUQEHVAZ/G/7P4/G5OOYfn9J4rlejw3SFGXrTiq9teaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776526054; c=relaxed/simple;
	bh=7tiGy3x3d2Ie+Q6qbC7F9D54JKMg5FOo9gD0SQbP6mg=;
	h=To:Subject:From:Message-Id:Date; b=fdTu9Hv1WuPMjyXZua8RXGv17IVWWoBESQ8kPEQ1J6kFrPnfwza/VYYlLNnij+YCgRsaITYHeVrtCp77XP1iHe/DOPzg5WVS7GOD7IAeCxtl7Y8JhDTmt9qJb0F0HWrNFNGwSF06o5cd9Vch8X/7SpYdqM0isbJ7o0Nv1Vl8e0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paOFp/B6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paOFp/B6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB21C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776526053;
	bh=7tiGy3x3d2Ie+Q6qbC7F9D54JKMg5FOo9gD0SQbP6mg=;
	h=To:Subject:From:Date:From;
	b=paOFp/B6m9nR/q2+WzJi25aIxWN4TUejaJUw2B6z3vC7QdAcBvzt6bM7PfED4amAF
	 pfzdHmUhXaOhRcWYkF2XP1x4wUyQYRkUtkIXg2F6Hy76RXFObsaiYgFvq5J2XWZS8J
	 ZIRy/WP4iAkB8oWBtlf2BJO8hUCvZJ0/TIWfdMRiVUlPRYVa4i+ZN6XIKbI3sOSht/
	 a429b3s43u+rXKWj7UaDjitNvy+068k7rGckNSKEVUU7VIVTYBJYdoUp4H2jVeIqbX
	 GtFuEQu+ZE4qG8b5a9J/OpMWI47Fpdnt28T44xP0LLeU02o//8hfo/ectb2lFXrwc9
	 GB5dxFtXTUEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2E3F99C88
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652605368.9545.2202402205859067600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737ecb23307003870be4c5dc2759a4efb12c4126839bbb09a4acb9754b5d30ef
Date: Sat, 18 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776526053
