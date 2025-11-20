Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277581E5205
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763642514; cv=none; b=ia6UVLv64tLT+lrhE961wTsb/xkdTfWYO5tNfbBPFWaqtlDiF1Fk8/VSH6uTAlRZsrmorLqL0Ci1jQbZY+0n3hudwPTBYA0+PG7AcZ72Sz0VjASjSB0d52pm5SVe6cRHr/pVNukm6dQ7K8DjxXYOW6JrSrWd/QiM5lfUSm+etdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763642514; c=relaxed/simple;
	bh=0GYpPPd9jfkhwnAmvmHzhaOR/YhB9GD3sjfsDkVBV0w=;
	h=To:Subject:From:Message-Id:Date; b=rVknxaCahLI9qYew/i7uolF8p5s1Xfheu+hLqFJk4dPTn8iq42k/8w5duSiFEDyezyRtxxkBnxa8LPt4YOktxQhcBivvA3kDI+p27wuRK4+x/8GFco7Netq+L2HrhQR5L1Zh2UjnjJdKbpWjpQ8dwAeJANbbadaDFrTsvAE1V2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUrqdCDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUrqdCDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A639CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763642513;
	bh=0GYpPPd9jfkhwnAmvmHzhaOR/YhB9GD3sjfsDkVBV0w=;
	h=To:Subject:From:Date:From;
	b=EUrqdCDihWHIaJrqNYRrdzo+vQkFbEsj54JVRKyqmNZ7taLoV46JCaE/8arjTgBHj
	 27KE1YD74VHiX7NuP3uS26XrXw5z8Nnz1JyUov3LXJV+KvDboCG51e+EXaMLhd6pqd
	 h1lAWPA/tIdWFYvkZKf6IwE39mLLVulWuNB/icQnGbYYLALV5p6iILeK0zo6Dq1X52
	 fIW1OftI6UOuJ+5n8b6C3FDs2xb7O21z300F7F4yXTObaHbXE/VwEOOCB328Rmmd+7
	 2ubpSJzIhNz23XTpts8dDa19kJVwozN7mQahQIIAOAiY4oeN6d023ptlcHK7rmzZSZ
	 YhoLbJvJ63rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917EACF884B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364251358.18129.16005675213492366193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace9e732518c61c6cfa110dfb144ae7e5333d8cd501c5d5fa1e0a88e699dce10
Date: Thu, 20 Nov 2025 12:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763642513
