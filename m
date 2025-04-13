Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6E82367D0
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744526994; cv=none; b=VruGs4CybteU5qRGuMDY1FyH96j0rg+qov2RTm7mEvSX3PBtLKQNAyrRBDzztZNErYx6T75a7H7T9rifP2X5LZBFg2fhD6ygiFttOECjyBfrxU8UIE3UIhVOWwyTWBmaXncpWZ23+PKktQiSfEoSSP2SOnwCR8WJub6+gnPbNqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744526994; c=relaxed/simple;
	bh=f0a5RDyrQo6SARXJPKFjfJgOyIIIC2jt6YOhozhAvko=;
	h=To:Subject:From:Message-Id:Date; b=CQ7mLEuF9aKUPO4Rkzt6g/bWbRBDgA9fXCPywjUvQhDUxH7ND6rsG4N42yiMKWjy9UJlKOucXiwd7OgQJzfHLJAuvTgKPle7NfUTH32QT5P0yT/Kp1tvZb4eSL714kDQX3KRerofUo3lqAEk2dUjfRsEvN7YAeh1L1jRF3zaqoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LB7TrSih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LB7TrSih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97E6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744526993;
	bh=f0a5RDyrQo6SARXJPKFjfJgOyIIIC2jt6YOhozhAvko=;
	h=To:Subject:From:Date:From;
	b=LB7TrSihawYbgT67qYNw2AfmH6etw2uX+mwAdaMA8SkKjrHc9zmru140c08b4Yt0f
	 zZi9B6ME76nLtxqV3y/AXRLCPCMGIHbsu5az7Y55g/2cio2COHf60jZ9+AocjMCSTZ
	 7El1aj7zpVzQo9dtc0ez9FWgUHBStn0V3ntqDNQNR9K5WhXhpvqziU2JST9Tq4jkJL
	 dpuvKbsVELhj20U4yuMCkZlogepakGo6UtC4f9rjI2iTdU051MC2ZteXrRdYorr4nn
	 jvgZt+qG0ZHBqvwJPwfXRmyR8M6NGiq/O8X8RoJbNzW/Fjamx3fuiIFWiXCAl0eT0o
	 xKbJm5xIcCGkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1277C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452699364.18568.7790858980437123474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cb766056fa22bdf0e86a3c325efbc13fc9b81cccb60bf60234b6d52061d8a3
Date: Sun, 13 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744526993
