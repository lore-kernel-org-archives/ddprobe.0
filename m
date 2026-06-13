Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C8A3B42E3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781327794; cv=none; b=j8fdnRBTb8nxhsUFYRwSe+zE9gxNgi3FF4ZXLqdFON1umIyZAj4sWaMNZQIGIhvvsneErmwqpEXu1hW/snEI+KY6TujuQk74dU5N4YDijbnwdlyGOu9fV3gbDMgWOEtAz8r3EUNY88LSopN1nKV9QGwWNPbe8aSbSadBKU5j6sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781327794; c=relaxed/simple;
	bh=ZsgwMDkZ/pnanx1jxe/85GXqU1EPK52zboOP7u54ckM=;
	h=To:Subject:From:Message-Id:Date; b=lmz7+YxBw1+xER+9BGShl3ZI79praG8cFUqk5mglJgxMe6ySFEMzOSv2B1ROeYPe2MxSQW8V4aN1ISljVOxmqih7aKg1afLbrezlzSkucJ7uOVtUUW7OHWaoK32+mDhuXKgcAiuoP+7V52NZ2U9s6QoQthRAZK647W78N73XAD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL3mBDgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL3mBDgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A13C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781327793;
	bh=ZsgwMDkZ/pnanx1jxe/85GXqU1EPK52zboOP7u54ckM=;
	h=To:Subject:From:Date:From;
	b=AL3mBDgmv09/7meyYSLu3jlD2J8hupz/3xATywwx7tkzjy46ypKybjvgT+TmnkK2b
	 UgAJwvz+ojCVr68bvsJMu3j21YQva/E302l3TGrvyRaEE+A6vsZg93LobcZ2RzNFzt
	 7yd6vaSfFWERBD+sqQvavrQImRa2wNfwdHSoZBqHMpJW+vMR9qR/nioJzKxTZ6ZNML
	 yQgYKK+CSvz5aQUnr5CVY7zIOT0oEv3qKkf2wY2bGl//cdC9UTyxlhvIeUY+J6elxQ
	 4WGOiA4Sf76/zkdvx74ruu1pl54gfDlDeSfI2LWBO5hNkUtwcLaHhopupSjtOWwGRD
	 1E4AlBQ43AfEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA215CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132779367.1591.13502119127128647593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b65202f2b39ea0410ca3fe1df2833f9e2390b12a7c331edd8e09736d2d1c1f6
Date: Sat, 13 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781327793
