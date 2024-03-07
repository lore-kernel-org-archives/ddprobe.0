Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38461F95B
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709799497; cv=none; b=adNI9eMQfchxhJMNAQ/11cFI8x1lA7NKhLJeJb32+y9fbbGHctBLoifkwzcRIdb5EfysjEVS9HgEUSa84Og2M7ZzVoMn0o7+GTBDiHPiKtTPvFDolzYyS4zaglZKoF5sAVUU03hZOEYa0b5EPw97PvasabEGjoENZ0sv3WXBAGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709799497; c=relaxed/simple;
	bh=yTkatToCIAXwujx0UAJaThXt29p+fA/uxdh8h32a2Vs=;
	h=To:Subject:From:Message-Id:Date; b=EE0+7YbCSeAC4sWD5goA9CR1MBRpursiRwbzdItJcrZf8qmrWQOpZ0U+nexFXQeJD2XUUuG2/QtvYw2rDQINIH3jWeNRO5uXeOOaUyPm0RXYAqUIisOaPvH+h8TJZfQjJu1hI4JPF+rEVDaZV7/2s4h1W4N418JMAqZrOPw+XC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVHORipx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVHORipx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB13C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709799496;
	bh=yTkatToCIAXwujx0UAJaThXt29p+fA/uxdh8h32a2Vs=;
	h=To:Subject:From:Date:From;
	b=rVHORipxEj/Oxp8hzUv5SFgvHS+WwE1IUeEmtrv18e16XtrUAoGbdgRgizr90vka7
	 T7z5EBVBSbDsvStLD7E6C1PWkfVTCiajZ1JB3tHejHLw2g9TqL7wNQ/2omJD13kTiR
	 ccJyD75jWp0EIdmqoZ1PbUaM7gllimwZN8Qgna7I2yoYounbXAR5oMPXnphGEdlDm4
	 CnWiX9ITf93aLPzu5IOIJzpFloSUBZ9hy7smRBsAMGBHu6K5lVE66p3uFMJJtXP+Wa
	 YKe9HLwEJqbHp3qLQIReppQmpFYrZ2Zm9HAxgz3FjRfLaKN7DXMu17isCfiKHb4dDh
	 yRJEOvLHuG87w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A3FC48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170979949640.7131.9785797112114921050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cda552c24ff8463b1c06d547ec8cc47bf1ab7b4abb8c3df1bb20dff7540fc8
Date: Thu, 07 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709799496
