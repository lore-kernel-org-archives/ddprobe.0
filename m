Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA4D80B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747009794; cv=none; b=N1z0Dg9YtRoKzxLZ5EXEN3bqOuTU8FNTXVbpOMRCyt7a+0C99/w6UopcyvW4f/yjn01/O2Dv7jwy384qEmZZfGTtFA8VseIUnayNWfYZ9New45i/+DOoMNT7IvWlisycW96JJKjqTtJxfcMs5nQ9bOHD5Zotz5VLHoHPzwX0f0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747009794; c=relaxed/simple;
	bh=3//1bGUTxAKg9v/xyQhB58XvQJ3GddrxRoJ0L5EhKVE=;
	h=To:Subject:From:Message-Id:Date; b=tN36CKYNIRTi+TMybjjYpFvhkBsOa5dvdHdIUDy88X1MSlpH4THScsExb4VrzSgwFgN+qyYYp7ILYmf4gCYSq8kCIxGWNcxxhbbKXwwGClIlYedChj4fJSThysOldUjqlGUc+58aK3xQoOqq8b1XvxbyhuYy2Rsjt8ceN+viUgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZmViD2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZmViD2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC479C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747009793;
	bh=3//1bGUTxAKg9v/xyQhB58XvQJ3GddrxRoJ0L5EhKVE=;
	h=To:Subject:From:Date:From;
	b=CZmViD2cr4CGBEzhu+rXLQm/U527MnRnyWSSVV2vacy6YyQGGiVTrv3ylciG/nVzX
	 Zt8IGEM9KU/KiUNvdLcWy3/iR2YwG/8YPRL3h5yJvyl8MSqqU10+aH0m4GgUfTk8/o
	 KXhvX59fHAeOMRxaz6ueQjbJGS3OEeeGerPxgv9zbSr/p6q3fGefwbD8QmJQqd9K4m
	 mHOyR5V5liXAoooRy2hNlxJPG2Cyl5uuA8mCYpj4D8cz4YD3FrKYHQEmS4bgBSMx0j
	 4/VrFnZ235WKYZuLH6+ISgfcBKAd0qzRwL6PWNBYG3boJbnkEh3EDL0izAw/H8DGl7
	 i7P+18Y9/ciig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700979358.10802.8299136980721152647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e397bf7a0ad2fbb717162fbb55c1fba5126f7ae29f483be5df505b925bd940b
Date: Mon, 12 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747009793
