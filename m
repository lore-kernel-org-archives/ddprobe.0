Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6263C3C1C
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790964634; cv=none; b=UqBy+g2yV+CEr0mkqPJvc4yAGUdXzLZmjfm+aRjokYO/OG4aRTscj+EsbAsLJf5fl3/temM2w0udLgOeBNOyZz6Q90lRf+5RMxtcECJWRDs6tCjCg9VnAf9rfRk+tYsYnola37wEX5fzbcOUTdF16hSZGIACtBbntjbXeTb2Tp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790964634; c=relaxed/simple;
	bh=GCkP1S648KtHZVn4HRIxMzpHX3T0LVP1aDl2XpZcUc8=;
	h=To:Subject:From:Message-Id:Date; b=slXfUwBoGD6kvGj/6sQyGRKp3I/aeaCpUVEo3fc14LnInAu4/mktanrijRu9etvocglYR2YxJtI1CUMT1jgQfQoznfFkssID4DEZX5/yz9LRFWNVRnmEC+LtYG2z5LmNNoKr1s182nn5MB3x8w60eDwmY7RrMz0QRvH7SV53vPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBfERBua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBfERBua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C312CC4AF13
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790964633;
	bh=GCkP1S648KtHZVn4HRIxMzpHX3T0LVP1aDl2XpZcUc8=;
	h=To:Subject:From:Date:From;
	b=kBfERBuaXfUB2oiAJ+lSjrc0wzjLcpj6Oa9pxfiWngtkX4PNNRPEr6ju2x9lpIoZi
	 UJ91FjbRKlAWuYa06d7Cey7DLTP12tGzI30UDfDdLda6kYI8Wo9VBz9SIhoyw4+dkQ
	 9jPbtO5AFahihBdALggaHcJFAq88a7WCYOC0Cq7vAmNmSOnNSnfiq3gthfjKZosdM1
	 ZmCFIAV1tLKHWHikxVAsg9l4fO05iXkThNRaydLvX9xChzWVOGldnOn7Guhl11N3S0
	 rJ9T+eWDoH4BCtVtJHPk2bqpzRZJVI7JmVbWJBdwZYeWddeXnBCztqyCdBJqSA9u2x
	 5zI+EZCpswnjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B102FCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096463371.29459.5228279591435756662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfed2d810e27f1eb62adbc1a6cd0e0c70c4d1fde0a1c295ad0235fb62aef0ec
Date: Fri, 02 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790964633
