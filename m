Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815AD30F548
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788120634; cv=none; b=MnwciEKzSWeqfWj7rsyirz6HHpvfwZ9DcekYiht/UGRhnEEgLsC9zUmc1TsfP6WYS2BeWvUY34aoImrT7h8fnb2VUENV6cX0bbJISvveTzE2y63Lj+1FCwCL1+gxiWsaKU1WVhgSGx5grAOLFpb38Iu0UE61NYTOTd/1xIJA1Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788120634; c=relaxed/simple;
	bh=GM0LRH4op2lPe9X11MAE6UMStISUkFeAhZbKKvP7Dzk=;
	h=To:Subject:From:Message-Id:Date; b=ANHGmg50fVZb06j/OF9CxXJE8nmtSU4VkGHAW1ycWARlCrhcSixGFMgEAjOhpVOls+IhNmmlLTLe7BUgeIkt8pHbiND801uHxtXVoA+MnrtjofbmiCfXG6SzB4ftpZfRAwS3DW0Ae/CwA5kVeTwmBvVo1CeCZ2C+EQ3prSbTBmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2JLxM5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2JLxM5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB50AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788120633;
	bh=GM0LRH4op2lPe9X11MAE6UMStISUkFeAhZbKKvP7Dzk=;
	h=To:Subject:From:Date:From;
	b=G2JLxM5NussY/vjd78PMhkDg69R4CiUEj32/tXlz+ieo2F6K3pRgAnDoiWbMiT/cy
	 LZ5Zv4/BaZb6KXIv8190ukvAe+3Y/exXIAV/XVPZc2uKBOaFI0krcfsMbXURW3UMNA
	 c5Hdo3YQNz8QVKGCIGjYLQPUdlA7pXmnuHmMwnEzK+uynuukPBfo9S46wLhTK4xBvR
	 AmLsKTlWmy6jp3lN5N7c5aaPB8gN21qr00oflrd96aVkpvmV4ZDloA1FE6uqL+RUY0
	 7hIYNpGoEnVntETPT9/QzQmnX5mQAxkvizsD0Art8CJcJIXNJqfnc3Pz3OYS2z+6dn
	 oaa3eDGXCV0dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B103EC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812063369.14910.2586914854909981705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4f1050a8c2d79b73cdc084fc3fd48f9f0c1d3d3224bbb78820b3f162266f43
Date: Sun, 30 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788120633
