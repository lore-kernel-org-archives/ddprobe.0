Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D65833E37A
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791088834; cv=none; b=LwMt+65leFfQEX14r6AiIW0xYe7WiJ3g7y26LaAni2ySJTJ+6gVEiRxgVpGpi15fu9A65Cc1eiyAHDTbuK4Y38JxVHYPJfjwvWsgCtNIXU9BgIGF4XDzCiMH4+6WHm6b6xuDf79stHg+VYr0lqhpRT7qvSS4RyqXSGCJJiYB6qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791088834; c=relaxed/simple;
	bh=oDNi02mHmO9dEvf2tnPXO+1nKPBhz/N9fvyn5G0JF0I=;
	h=To:Subject:From:Message-Id:Date; b=W1Z5GOGU9HyuepNXaBXB+bq+9JUF7OxhTKxfv3N28d/iBQYPmXPKmG7X9r2YxbUfyxvXERTfMb3iGrQcyY2id0IVr+VdDf6ow2fwYhxM9o4OXgmst17NuR/aKHQl4Gze0cGaZjfK/JUu9/OyZS08KWwFlf78BoH4JqXsBOz/8WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prNTgxHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prNTgxHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F0C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791088833;
	bh=oDNi02mHmO9dEvf2tnPXO+1nKPBhz/N9fvyn5G0JF0I=;
	h=To:Subject:From:Date:From;
	b=prNTgxHd9Ye0fygonNR5FHE32UuRd38VVPuDvNO7WugybW5N3d4zyVKEJ8j8Xkfqa
	 JvrWY3c98iZcRDJJdH3kKOpYMgl8JZ0irlOUtqpAlvT3ODbXWwlB8ton1Jhq4Lvjzf
	 gT+j3R+1aUqpsBe5fqzNzNVlpM9MNZihEsdnR5CuN0vAguzb6M7SHEH+4zM1JUoHgz
	 AF8SEADYW/ir9pSE9yW5iihC6S1vh1cOkcC1S1PSVcBux5KsF68/YNpx3BTW6BdCTw
	 Swh6ErwMM36oW85qVCfFYqQUEJ19MRL5j5HYExwBjUSrGjO/ybNH3td333JE9XVPTl
	 h5+kzpzrJ2Ctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1140CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108883370.24367.11979890321749503128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69acb7a5387dc178aa85027b1fb3b7b95d8e90d19ea34dd5a74c50ba9b89897
Date: Sun, 04 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791088833
