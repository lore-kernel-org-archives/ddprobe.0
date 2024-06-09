Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB9D360
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717909043; cv=none; b=Td9tiscGCLN1kkDepSKS2PQoFel3geRnZ/n+GprqrP/mJzjXxJQ58PemtiQqBjwidQ3Gf0Xlq3Ah8wiPHXiMW6TBCEB339mlpgGHZ5TsvXzzn/ra0kY8/Fwux4beHWoulJb1qKdRS5mbqePpbEDdx/sMlpAa598ZrcpOwRJ6GZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717909043; c=relaxed/simple;
	bh=DnnaV9cf9tqf4TfFurIi5rK+MDEhOPZbwV/ObeSq8G8=;
	h=To:Subject:From:Message-Id:Date; b=i4zQk9/jjbOqqLUxthOME+olf5uZSisxVSVo/Pci5eAjRmFRZjLQSHwLWYS3A5LRafgQ2f05wDJDQj/YGehIOoD2jb042YJoXe0wXCf1rzQOE53D59ii+zYOP0KyZEpVX61hhQBZFWe1ocL+lKZQ7f9QNbRlaYqhhz+qPYd9Lfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKAQMKnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKAQMKnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7620C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717909042;
	bh=DnnaV9cf9tqf4TfFurIi5rK+MDEhOPZbwV/ObeSq8G8=;
	h=To:Subject:From:Date:From;
	b=WKAQMKnM8F8pfi0ViTaQNr/zPppRUGanbH/CDiDUpQo/OcxKaBynO7qCJ3ppf9y4R
	 +lTCqljE/GwVKmYW0x5lOgXKWrN8E7EdjgC5VJGy7yP/I0j8LC9i2wRutQ1qYDmr9Y
	 fHVpg1tN80Pv9VZU+SxiA9M42+uxC5QX3gF3j+dIGpOWeIW53tbhETaA7lJWow/VWB
	 b1Kwez1OJyL+eljFDMDoia9GXYGySZnmLqej+UqKLxGZ/CUeUc68nO5xpesTCztXwz
	 8uCXfDg0E3TGVPg/tGpdzA6Vdeos5mFcBNSKGv43VAlX+RGRYS/iRUkPqzDxLLpFX5
	 MqoRmmkkNTweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CF9C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790904276.23207.12308588397466337660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaf1fdcc06faadc92319754ad9dac5869922168cfb7193e31190b58c4d7d7e0
Date: Sun, 09 Jun 2024 04:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717909042
