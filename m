Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B0D39FEB
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706740697; cv=none; b=P3IJvtM8RSnce9jRPdacSq7pCQ83V+/SU85ineqjiYDO+kIHwwhEaZ060pAUHo6FKpG7QV1bOjzlio9xKD/9ysFZm0ShLz7VB5KpH5487wi3V9AKG9f/75CSRURwRryFgj3yfmHc+jj4AQX16ABGhQVeViT3IYFCPEkeZzDRFtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706740697; c=relaxed/simple;
	bh=nZlHuT9yelHnq0dxmXopFv8gvwMORGiz8CcqoitwtzI=;
	h=To:Subject:From:Message-Id:Date; b=oWL1XNQ5V3j+/9IpwBhIs1/XBVJR1cDC2tsFLFHOjyNk7xVhn4IhQiSVD9mVmUY7jUcHlOKvwrHIn0dI2s85L/8xdb9G53shICyium5aWSKvSmR15gCjTa5rKbEc/teuzHIFyKVUnhfOSsuyMIgvEl7VU14Q8Btd2MneB3dK1bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRmO1eNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRmO1eNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8292FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706740696;
	bh=nZlHuT9yelHnq0dxmXopFv8gvwMORGiz8CcqoitwtzI=;
	h=To:Subject:From:Date:From;
	b=TRmO1eNaI040UNC5xCoVhAmyjmDm6HlXXoOve2xVYNkzaSo6CkRQ6Yixpx4AzJC2n
	 QvpvGoeB8+1KO60cPTwuP4wD92f0Z9jFQX1eZ1Nr6U6SFjxqu0orIuHkMoco8zwhLN
	 V2GcM1hsk+dyjwDN/pDSqgfYmTNHXchEN/+etFYz1Z7eVRtl1tMQ3Im2954K5W9eN/
	 kNHjGYmo2Hmmg4UElPHec60xh64GEKSuqMFA0iWO9Tc/uy+ZKOZfDHAKdzZ20GHkfH
	 yfBg+d+4bMsXrJtu6rUGLYdDKmoGkSLQMQ9VnvNWgevpaMKlASure4PZhy8HgViKDx
	 KayJE2CJq2Wjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659EBC47DB3
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170674069637.22950.14910689885032202241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708ad4ade052628dcd152845b936560b075c37ec1c5e10527bd2b73fd1fc0b64
Date: Wed, 31 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706740696
