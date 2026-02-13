Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F642F851
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770950694; cv=none; b=MpLv3wqUS0JBMeysOHAH4YSIp5NmRwtddkR5kCp8Ae6ruKztxSYK342BLYqUdgv9xCVmqOUG+wHQpc3/H84WtTba7oISm7phnYInbbaz7FMynsXKUvDSKZR5625mTSsWHDMVXn8jnnYYfU9pDEVfi5ZKNoOUA34IeMshC/R0g1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770950694; c=relaxed/simple;
	bh=2CI4gMU5dz/juzqNx/vbhtmgB+Jz+undTpBsr+MC3Hc=;
	h=To:Subject:From:Message-Id:Date; b=YV5gIGz+Xp5rDyXvm6zUqhgKE+n5U8kuQO6dDaYvrZ3AmceOxnNVcNAOu1Mh8Q/uP2I9Uu6QICpmbBQhFtQX56ufNvS1BOmLXQr7qMiVvr+KCTCe1cvED+X3gI92ZuYj+HdQLBTCTriek9HX2BWFsGCZSaa+yX8KeYN8a2I0rjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckrQqdpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckrQqdpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31C0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770950693;
	bh=2CI4gMU5dz/juzqNx/vbhtmgB+Jz+undTpBsr+MC3Hc=;
	h=To:Subject:From:Date:From;
	b=ckrQqdpJOUj7rPFP4Xrc/SFHJOX8HV4tmm97yN7KyYHbgR9N11ju86N1lCDePHpD1
	 cr7Lqd6M4jHAnqTsvJfGhNU9d1f5SBGRhg1RgYs3+0UbvHkEtgKu9WUj/0eL3SCB7a
	 rw3VgYmP5cFJh9IxhkYsDPkWebLY1ez5AjfUhHxlJPuzrdqIzqdzl4VjnO9W2qyp/y
	 P0TQFc6KcGkYOcpev1OL9uu/gnfijfGKflgVc18VnTjFmLZAQMxYkdYBwjdPn3pgC6
	 ZjeInK13QkzTmZJQivjXJjK1UMaNwSqDTigxobelXe2a7edQg/XPnI1+RWmOrPLCBJ
	 VsAd0AwpD3keQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98537ECD6F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095069360.6247.4356127597487891754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39581f03f9d8cf0558344b74bef76a8c8a488a3c9d086868599b44bc0eb5e83f
Date: Fri, 13 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770950693
