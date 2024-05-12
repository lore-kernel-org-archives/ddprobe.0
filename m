Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1CE6FDC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715545943; cv=none; b=IL1+IIBo8s7iNKOQs9NxfoxCFmK7dIz+2L9Ba8GvlDp1BXo2rkCC5Eh4gsXIRqrhNBHfKna+5TM1GPGyj2CDaQ2Io5JyNYQ2ndY7RHpsFQDqHdtIpCVnH8pazF6URe5UqNusv3F7bmlMhxOo3A6Otagoff+KLC4H/H6+7EkL/cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715545943; c=relaxed/simple;
	bh=l14nUztneKW6Jw0SDB3N9PUeuaAdeiQtrOk7/u5NUOQ=;
	h=To:Subject:From:Message-Id:Date; b=tOX0QPbD7CyEN2r/YM8efnLxOO8e2Pck3i2acwZSDsms8xSrodTn8HSuBabUMbMRR2OKijeZeuMJSRHa67CBzN/vQaq0JDMSZ1pwUeSbuyf1RWMjL6TSha/hRo2935FBlcQVQLc2Tyc5QGuCZGjmBUscZOL8yiciJ0agYm7iAhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EL9i7MpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EL9i7MpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BB0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715545942;
	bh=l14nUztneKW6Jw0SDB3N9PUeuaAdeiQtrOk7/u5NUOQ=;
	h=To:Subject:From:Date:From;
	b=EL9i7MpGJnFjso87VuDhewpUgMFpC1TtVsMx4ZoStlIWPvXXvHqhmnU+53uSRR4sz
	 xEeqXbyrbe8xVHaWjh9Oz0qpYQ+yTe0wMaYr/bNSlQmWbBVQNlvhr81+3MGbty00lX
	 Sfl77zSRZKkAZD5rJ6EQYqauktqUM0KDdMF4s/Hu1QTnIzmgBCYHsb5V6GrB1UY5jt
	 +DyOzOOefstxrHeO0EJmB9BxPJH9TZ8RX9Esv4r1rN4spEJas8kvJnrkdZ77SV1MtZ
	 HeHomVqBZngYrb9GYOiw/ueMnCIq4ORk1Q5bmFKgHyEX+lR1Glye+gbutOYYX8pXot
	 Eh4FrBlU1sQBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE36FC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554594275.30649.8319708656874307088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57743a7d9b3aabf5ed6ab7c5db8cadc1be2b7ad703349cda62445158939e248c
Date: Sun, 12 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715545942
