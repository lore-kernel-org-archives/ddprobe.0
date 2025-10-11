Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324121DF75C
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760202594; cv=none; b=CNQr3uriNX7GVrAeNBOIY0IlpKtrbc5oqvmxvoIUB+sGUWBkg1mja9z6tHuqj/9xg6ekmJHPdlovZmgOH1zSlM+ViCy27WpCBUl+LM64sCCdnMAZWaHMEwGK25sive39e2Ge18oQ6AagewqKkcgHvanV4ZcJooBOXX4xF6Xl8NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760202594; c=relaxed/simple;
	bh=pM9ctSobLrO6LXzWhzvPnrqD9EzcoyjRov1AhJhKhBA=;
	h=To:Subject:From:Message-Id:Date; b=mLqxvi4Uh2121RzhgL52zRDzLRUJ3oB0tsixRwg/MQtTl++Ze6vqWl+n9lopYElu1WpAYFzvIlodlY6C9/q+KfDhdVHiIVdLw6cgAGzVWjytX6wn7+rOxOQP2eZsMfEaC9lUGx8Dx7js+MKF6SCcqdu7IJ1CtQDt/UXv2mTwDio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZyTJ8zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZyTJ8zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD12AC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760202593;
	bh=pM9ctSobLrO6LXzWhzvPnrqD9EzcoyjRov1AhJhKhBA=;
	h=To:Subject:From:Date:From;
	b=HZyTJ8zxhgZ4ZYVmfMV44MasjMqab+A/eioZn+SbEdZlewCN9T7o/u8UQBDISSkA/
	 AF6D6wlV6APHsrklRWEWiueLcWLmlYXX9IobY6DoKPYxsTzg7HjR+IqifXMzvxP4r5
	 W/GZvHoCnNURLn6gPO8kY8cMsIZjUgjp/C26dl0itnv+NSu4+RNDham90/9p/bNblJ
	 Z9Y4uBpA5jtPtwZgBma+nfwT5gUreS3FsgA0pFTjgiJDsSwkqyuynQySgmHOwhNMaq
	 YcRT6DyO4PxumUvL/TElSBIgniITfo/IxANjHCguaUGlK5gd0kSd9iWqZvbZQojLK/
	 mYanEc9kgwgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98368CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020259361.3355.5025430358528272400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69be824bf60361a1eeb9b87decfdcd3988dddcaf0de392d94a0821b206496844
Date: Sat, 11 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760202593
