Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DD518FDC8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737368754; cv=none; b=qw+kil48A2CkQw9A+/TFJd0hEZJCJRDWz1HJxSGHUu4GoPoWr7quz4oAjsfDzTovRasBOncdO+WPumGL4EkelVRaTyoSF75EWIno9syuGB7nUhq0rE7JogiEN2CIqlG+X1M1SZyx5v2CX7rznP2bzO2eUqfsF8Hi0MEUClr8FeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737368754; c=relaxed/simple;
	bh=JWabgEK0gItE6ASZ0MCrkcQMwdFHcZy13vUWWylqhWo=;
	h=To:Subject:From:Message-Id:Date; b=SaCsyWytcZoIKUBT89WQ0AEe041j1zZTyqPRIh1hxxPNWO/jb23JsiJWgGW+WK4YgnELL0Bumw/o4MTT0RUC/DwnNbq45mS2KuUJzvhqozO51U2HveREDwIMcIy9lO8sT9wAolVgxZv9b6ttLyjUXksj8dmTFd4n+7P7N/UCC4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0/3yV7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0/3yV7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2899C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737368753;
	bh=JWabgEK0gItE6ASZ0MCrkcQMwdFHcZy13vUWWylqhWo=;
	h=To:Subject:From:Date:From;
	b=a0/3yV7vHNBs7JjBOolKAM8TyaGcrNZpVdeP3aPCnS4bo7Yj87ePthB/PYDyoSjzQ
	 vNhItg1BHx3iI9wbhWNp2xqTH64rj7WuKbl74mvSmip+FIeX092O5S+EQ+L1FNFEav
	 pvU0UyPt7YCTdvk1jUSM7uisf3dFhmC41X8cLi11Gq3pNutqqMe4iuyrT5s6Me5GBn
	 6H7eU9Icqe+OurmqmZGzWJZDI0nXif4RHTXHxfyf+Se1WxhGKuq+LMTx4zflkQoebs
	 Yovo2siT6oFDPb6HBPWHy7b3vsvk5Fvqx22Vb8tLDyEUILGweGs0mpZDJ5OBf25xgW
	 zHSrHWpWFLQOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1BC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736875358.5121.13953937220466053777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31ac1c3c4b322d8b9e46cb97b11875b8b78a037178b0ac1a957057d2676f305
Date: Mon, 20 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737368753
