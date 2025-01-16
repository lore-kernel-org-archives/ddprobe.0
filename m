Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F79A433CB
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736997354; cv=none; b=grNqFpL54ku8ufCtPfkYJhhcWToAeHuQyX0y+TUN+TsL8GY6+SEhjuF+n0Arfcmpj1wVyL+zTugLr69LWRfQUtZyfa8wuFJamsEepl4/8Vqmvy0tBfLnCOtzFdz9j79O+4E2CAox/sCCM5xv32RXH5WENbIgycBZYEq1y0MgfK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736997354; c=relaxed/simple;
	bh=g6ud+dIWOQe/rvHT3qUMSj3SpKf04pcI01TC6tZrvjs=;
	h=To:Subject:From:Message-Id:Date; b=sR96gTcbX7DrlNv3tv4exdpn5ueDD3aPi+B20auj9mBo0MLqo1VA3DjFGSG0UhLTSFceCn4IQR1KKzEL8iltg/gGa6/FVO50khkHzO62uqJfHEZwej8uTQS4JeIX6oJVW2gjy4Ao6l5N2h3BBBc6veIcGr4RMDeSpbXcLptb1JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtHAj4xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtHAj4xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7636C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736997353;
	bh=g6ud+dIWOQe/rvHT3qUMSj3SpKf04pcI01TC6tZrvjs=;
	h=To:Subject:From:Date:From;
	b=YtHAj4xq1jozKl8MjJJuzRoR5rU4YEj9acniyh3BZsQP5ccE7GVULUmdFGBhn8tR2
	 MkP5X7YFhszzUKwxZyx5bwO4Bn3WQNWzfbgT3mXorupNF+v+W3wk1sob5BcBJTPOog
	 3oUZkpejI2HDJjOkUaydUvvO/5U5Y4nMFL2BJGcvaOfdd54PIH0Ui9PyiVYRNSAHan
	 9EpQRXdgyTc5/1VahRu8pHz6i2teYcET3PSYOIlPzNPK/xu30QvNws2P2m7iRGvegB
	 n8ngF7Z5Nz+0YKeEPSnbki8TUPkQKKd9cFQ1zjtNfhqv4uffXZgD7ojcbjKBP1f5BI
	 m5Siy1Y3CA86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95250E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699735358.32484.663107877492594412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e13465acd0f52d9ee840de7544c1c3d95a9e7dc5223bcaf13816a6e84c170c8
Date: Thu, 16 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736997353
