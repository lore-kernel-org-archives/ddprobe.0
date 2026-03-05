Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1F62D661C
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772741694; cv=none; b=gO6P+srixPFX1oTmLPQH6EyCBxpbagWbeWm1H9y/Tux3RgsekGUDv7F+eK/GBreyiwWtfRBBrhjBatzOWMX2PTjGd6LLmziPfQjZxscbIt2aKirYhM1LNCaYZL1vEhD1xPRgVXfN6nWa4xgqnS99rSRBxjcP32bjHRjs6hrCqEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772741694; c=relaxed/simple;
	bh=zemqheE2wiRXRqZxb0RiIYplveB9xm7CZYIL9OoPXaM=;
	h=To:Subject:From:Message-Id:Date; b=K5TSIBIxSR2HHq4805ejhwHqctrLpjBz+b4GOvhDhBisF6P6xzDmAkDDTuRe0Sy/bENjSd739vfK/Sk8GXfxQTVLvIyGqWEcMHPBT0OYZtz0MHn2abtNNB6A3ieTgwCQzcROAWd3F5yjL6KS2cv6u6ylRohQ9ophPsnDp48Om+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRS7lzQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRS7lzQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0348C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772741693;
	bh=zemqheE2wiRXRqZxb0RiIYplveB9xm7CZYIL9OoPXaM=;
	h=To:Subject:From:Date:From;
	b=LRS7lzQzfnMvG/4jjJgkYj7wsHEy7NNsUrz9jctbebIJ1QYG/yrMe8NCULBUaJTBN
	 xDI/rNc62LOkWrrI3u6jVgdSTd9T4YBKvXcYo5rnQhBHzfqSnnV6D7doNjp7GWGwOa
	 RveLgbzRV8Tjl4MpyZpq8VAcbnFoWgTa2kqsT06H0xybadhirc38DJNs9myFZ0GX81
	 eWTC3AfwCWXL0olRybwAvV8Tdm0QRjJ4hkdUqmoitdoudJaTpFIgQLT04hsKiFcns5
	 JRoSvuROuQ8luX/QRgiwOXDbvp01ipz7z+O+Ir1lvCE/xsoRWZ6I2f97QRdkBoVu0E
	 /lq4kRADKzGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9032EF47CC8
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274169358.3242.8050442288494777480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51334dabb6c534b74795b318a414d0441fbf204d4069c0a9e47802ae12f1af9
Date: Thu, 05 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772741693
