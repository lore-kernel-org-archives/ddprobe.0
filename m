Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CCB221282
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748485194; cv=none; b=ICyHPyghISeKqKXBSeYrlKn5ZaoNFRgEYQ8zSVuvw9511XoywCOHkoR108OtO4fvdx6sDQbOCwDxZwlTg+OX1fDyOuTd52Ey4BVRz+amp63c1XW34CzWJKTAz/dKUq4ZzsOLsHqte7rul/jSGlm56L7zAyN5n+ujgNklpKXOdLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748485194; c=relaxed/simple;
	bh=kmz5d8wPG+8xp2wT9BSsxZ/CYUAuwCFcYd/tf2lmX5U=;
	h=To:Subject:From:Message-Id:Date; b=Bfomfv8TCxqPebMW5yElJcCcTNUgczGjPKbUfbQwg3x6uPagMAA3ezVYPkWzVaYVZiHPzEbdCwj21LWlHRJe6U0lbfpbFVxrv7UwCL8c0iglJHKnI8SI7ZNMQSYzQ2CkIJ5azLTFHjLY57bGkkIYcEZhl2xvHr22Vj/pkSNfWiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4eh3gNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4eh3gNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A159CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748485193;
	bh=kmz5d8wPG+8xp2wT9BSsxZ/CYUAuwCFcYd/tf2lmX5U=;
	h=To:Subject:From:Date:From;
	b=U4eh3gNlndcBvRAgkfJXk9SD9QinBqWAZxN3jy6Gii0hS75UdkAlNeh+eYWNeFoGB
	 h2ZmRlr0GSezCCfVQFgtireS6X6XjDUEo49jFOULAFClGAaO0KVEhj4gX3XyCvGKBh
	 SFLDfwA8zPyO56Pw2nqfDUXs4V/ycgZj8sTW5w+wGQ2BJet3tnYAzBGqgGAre/sjeH
	 Yg51799HlL/NUqcmaOrx/jCwHx8VkLVgPIO4Od6U8P3XQsoXiKNDyULfIMFSIOO4uN
	 1EpNVIGX38olcIIO+xsQ1FanUh0bAIVk7QuQDjFXd3+K+HpSBBXVprY/kFLrROOQbx
	 ftBJLyXvTTbBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D6C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848519357.2028.6659412195525716983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe2fc3d263b83a5cc4f6a220f824b30a60d92eb479f35b744c9ba4d841ab31b
Date: Thu, 29 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748485193
