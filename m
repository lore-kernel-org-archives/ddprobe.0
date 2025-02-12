Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B70E134A8
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739320255; cv=none; b=UE61Stv3jlugfV/3/jrj2gyTKJ31ZcVxbllC9cGM7LqOIjprLBYNVDghSqjneBE5EU+EZAXDy37H1dbsXKiBRtrZuh6gk52X4RcMZnLSWVlu9aIq/2SKgTu9r+07tqHKDQDViseWUYhWz5a2ncAWndVS+OLAKam5fS5NQ+rM4WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739320255; c=relaxed/simple;
	bh=2mXXnlyyhdAti7UTuKUFX/hBN/gp1uxjkVgAx1cOWew=;
	h=To:Subject:From:Message-Id:Date; b=OnCYmyXJXHpVx/Den1k3jUJtJAfT3M1aG7SR7qeioXKZRPyI6fVjq/SObBjbhoqPJKGdYVxu6F5EVvzCV2xCJmaYiANN5yj5uI8x+8zjxWoSFv8mx/U8xAM5SfjDLKnWoGEUfUsgMaObL9yz3dPZQ23QrzxfvEA5VjFnAdSP0Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzogs2Qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzogs2Qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2B7C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739320253;
	bh=2mXXnlyyhdAti7UTuKUFX/hBN/gp1uxjkVgAx1cOWew=;
	h=To:Subject:From:Date:From;
	b=Rzogs2QsR9EBmNw2CuBD8O3naDSEMFWTwSk5By4bmVWIcZnSqNgtTy0m9X2UtNrHz
	 TDBJqpDoVNLMo0Klvf1J/3ZIc7mLmbYMgg7iydsP30+grQFpTAI4UHRT/g2E8cRjuv
	 sxG2vzbBQrpezyZ5pLsW+NFYXHMvmtl/LM5j4B/IvG6naUbwCHx6yDk9SfSjWxTNoP
	 5V8mAlGjlRRZjgQc7OSQ5i1+bAvJFOsZVgb0KVjVi5oDi5WVR3LLPWpXZFFK/+HRy9
	 LpbZtqZQxhX0ltAVQqBKxXXC+hLqYUx+0K2v2I4tvakWdh27cbsnkTw0pdMPR9qloA
	 bZXqrJqocjVsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B402C0219B
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173932025362.5412.1317364286060519636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b5a1b53812473112607676d3db8457849a8ecc3e97ac7f7f15d7ec2346fa1f
Date: Wed, 12 Feb 2025 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739320253
