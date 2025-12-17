Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14B51F0E34
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765932234; cv=none; b=W87hmyJINkSPl156RXV2l9vCu2pe3XMCe/Lm+z0SqjAYKsnEKesdc7aoLIHp+1MZWEMlW6s/UHwOS993DVmM0lNLl3TLUeuCuC3kvJYQJvJ88EKvrdVI1c1NiO4uhlvedKIBfu0Eue5/wZJSG9Zw7RyLzmrEa8ow15RSNMiC2RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765932234; c=relaxed/simple;
	bh=L/867i/8SARVGPjeKBkVOo68VUYFRRgdsXeqIT6fkCY=;
	h=To:Subject:From:Message-Id:Date; b=TIPFLj7Bgb8NiaCwwBnLCOD6FSo/rleO3Z3ul5hV7kYEKEW1KlhRz15+3w4MdiIFgaSNM2qbB5BVyQog18xVfsli0ffZr+znTZZIO58qS8FZTTriIQhQCDv5ADuqVbaQORxzw9n4mmopTvFNFOiunQJPiqPh1dtL6IW/CDEKddk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbLLK1OS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbLLK1OS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA0DC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765932233;
	bh=L/867i/8SARVGPjeKBkVOo68VUYFRRgdsXeqIT6fkCY=;
	h=To:Subject:From:Date:From;
	b=nbLLK1OSLe2WaTPvStgMVV1LInmPnrk9P9mXNxetUymal9b4WzfrKUTlpUyPsjqb9
	 T1RkstUAEF9bMSNDHGlIX1IkO/CbUUXUTBbcOUmfoKIUfk++4dthZwEBDv0vAUesbL
	 tW8vvD8UilJLBk/mTl9+C+0XBCFkDGPoGPjUElcRNgNwvZVRjDZYqlN390XzQAkywW
	 oxfFw4ADvQaL8qpuAWaSU6NQnnyt0QS5eE9FCLhWY+5Tb214rtP5+nJ0yL1CuPcRRA
	 Q2UWwGv4roRp0j3DADIwDY6WUIwmP32D6Z66Sjnn4qAkzpqLaG6vDKdEfdwGSdMhUL
	 /HLVPf8Y5YvoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5AD637DF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593223360.11698.13138893337793444856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3512a095c3acee4e7ed8a09077e5b629b2d5c58fdcfa3b9042ec7270e26250
Date: Wed, 17 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765932233
