Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233521F37CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734004554; cv=none; b=cyqGs55sxHE+jVHuEd123rKpR+wIyUnkjbtz9fy3GNS7VNNlZSSleFhioNaU0vXpoIkJnRtu7s+zc2U6YYRrQtJu4YXILd3X3ygQu53zL6AmeCUZJMgCE5hIvD2QIMtxXF8XSAyxuKOFGV3csZJGrqF1Z9M/ZFol8ZZaAB4WB4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734004554; c=relaxed/simple;
	bh=n8tz8BLKdcM/bTqOVVJ5a11TwkAl9kWupcV1o95DYa4=;
	h=To:Subject:From:Message-Id:Date; b=bKwdoh6XpYe6U/UfTO6WnTyQTUGIp9uhaem1rDx+1dhihqS14rhddYjO9tlXWbLwxgagqLwjDwBar5UtOL86u6si4byp15bciID/tdQmAw53+ZtOa2rUJX7FAMQkWaQ9uEDgkH6lMxzQ9Igptq8x5xbrfVVSXQCjkHxaTt/f1ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/FdBRF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/FdBRF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F47C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734004553;
	bh=n8tz8BLKdcM/bTqOVVJ5a11TwkAl9kWupcV1o95DYa4=;
	h=To:Subject:From:Date:From;
	b=c/FdBRF13AxOOaVkRe1/M/SLSwKzPa0+erR8ZEphv6F7XtSDc1fL0tLwR+yS2P7LE
	 lFWSNCUx+qdWx7x/hU9d0jFgSaYLrHnUno68n6JA2zFV6MXCr4lcXmYev0fBFGeK1F
	 FM437Dv1JgrZgze/fF4QU5g0d1JJoShVy/F+3HzxoOUdqQ9ZkCaB8498xwmt65p455
	 TYDuw+I8+wSH0M/gIRZXyhmCxc8IBV5NhnrDj4DzRel1Waq6Y7Tr7bfEDoYgV/C5ma
	 XptKybsM50ALdE8tdPqQDXuro7Uum4pz3k2CW64gNRaEl7e1+5EoxnqrMPx7b5amsa
	 HhxVnVpDr8X0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A1E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400455359.2250.11115785795290825914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0acde9b9c8c20e46e5dd45155870e3f36cdb878057d9172d00f14c3ac7537a
Date: Thu, 12 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734004553
