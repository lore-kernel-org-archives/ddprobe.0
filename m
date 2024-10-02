Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F2220012D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727866554; cv=none; b=WcB2IgCtCF8vqK7HThJY81V1aaITVce1Kq4oq76XmT8OlBK427XPnWie79aWEEqXAnJu0lKDbz3cGMdEtzVfg7GMUEWhHL5q/VzhGevO512G9HSpht+98edqunm3WXv/A3+gRYpeLQRk9bCT8z2AY4ZEVoRU4QHFhnuYh8+LiK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727866554; c=relaxed/simple;
	bh=XRjel/5N7c609f5bBsMbvrQHARcj4WYnICnG1l2VWS8=;
	h=To:Subject:From:Message-Id:Date; b=FC5F03dLhvrvfYdDMdls1vcslLrt/FrIETP2B0G/0OaNJUt8HCbqEttJDm7L1WxUq4ZBySoybEOXOT8FRGqdFdkY+qTdxufoGZUsaUB5FNmcnVezIUl8rhugdUcTeEUdewGjgQAvSX/V4u1UarjddIGQASkibFnNSWIk/L1t8OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zn5zmkLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zn5zmkLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E9CC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727866553;
	bh=XRjel/5N7c609f5bBsMbvrQHARcj4WYnICnG1l2VWS8=;
	h=To:Subject:From:Date:From;
	b=Zn5zmkLlaQEZznGifImC9vGVwGYtr0OEg0bpuWt8YY7bhMl6rRFAdJcyOJRoubAA9
	 OCYyB/q5N9Ls8ucL9fhML6JW8bPZVHr26JjrvEvDgmL7FbD71qU+T08NSsVUIwZ/Q3
	 zRyzC9k48xKub9BLhEl31Cwp+nuwCmGzPI6LWa61ZpcG6CU4P+l+kz8WUwCl40JoMn
	 ELjS2qiJ8L1Pho8OwFAWYIh+Hk2GsGLArbvDLL8Vp2PecFcFgeKWiDThzZsWzNRP3T
	 OnxH2OVoOCm/gOmCKYjC4VrAY5qXUKd1vEGChoR6W48zTWCoUVSojOv1PSmM+HDkpw
	 4LoalqLvVJTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A7BCF31AF
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786655361.23736.14210770248396316513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce879c9985c24adb3b3cf30f22f6610f8ab196234c7fbb627e1e160c9c5f6396
Date: Wed, 02 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727866553
