Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086E235EDA5
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768475634; cv=none; b=d7grNAIjSv2Hq+Qv6UOTTN+e9w604vNy7hg+ByI6tTAU1eO9bNVAg1tY9VnIsCizuSjzqB6vPSaNzPEjqHx1dbmBB71WSAhxUlAS5n1pMH4IU37Bb4NULeFhmZqrWGVI1e9ecOTr8K+8okFscrjrf4uurj6Tk4bnz/UVyquG2gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768475634; c=relaxed/simple;
	bh=i/Rahbz08mN+DGILTKgD3VAhFWn28HDsInICCQt6Ovc=;
	h=To:Subject:From:Message-Id:Date; b=G5I4iFKs/bC+kvhVOeeveSmMF7BeSHz0GSlCAPJ1Hmqv/UuW4lxoDcwYfiGioXrU7uetGvVZYnzPafEpy+4/0BiQpMu+fcu/qmjYnvSd9PXbcGGZSiWFZNsToglrteMrNrkWXWooa6Oyf/tgsR9vyRYw/GHQ5qBOgikn4/jSihY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8eBDq87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8eBDq87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A346DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768475633;
	bh=i/Rahbz08mN+DGILTKgD3VAhFWn28HDsInICCQt6Ovc=;
	h=To:Subject:From:Date:From;
	b=Y8eBDq87FKobw9RBiykWRPiZ2B6ZBGwWrRFhyAJ61cQilMdNpCSovtci3qirkzI28
	 rws2SOFA7C5+AgXWFU7Wel5c2rRjhQ/o7jyC2UUqfpTqxAHkS0FruqMMQ79Iigao4g
	 F8f9YZC9or3bxJ2Ozp3aGVJTl6WnIWgQ9M5OINY/s4S3b+oA8rb9vQ9LdPo/ewMb3b
	 CUE4hEEKgDLG1rhqMJdw7qC6RSfltX/jomlwclKm8Dyk5Jo3cUeJMCvTRL+g8Z2btM
	 0DKFqbS7bzrIv+KwFzeX9kzLoCQ6kfHVHzVjgBt/iV/JpqBBnpI5zM/AmKMH6jlM3b
	 Tpc3YEa5TIRPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955DAD4116C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847563360.19878.14442771674380179203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f6e323b689edda2201dcf0d3be4138b5913a47e5b2775cca59eac6752f215c
Date: Thu, 15 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768475633
