Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E35F9CB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743331195; cv=none; b=ZXpLf+kQEzRSFw8fy6q3V8YdR3q+fvs6dtHQ4v/7Cv/RZBTc22DGNVEQVNXlT+0UaLyxrBwmImRq/mCx98zUIhsuqDtPWZEFV91K9jMyVBtKdAfqYous1elyZJVjVupFs8ngfz9aJe5oi4c6gXzca7wFhOe/XjU108FHgtrq+w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743331195; c=relaxed/simple;
	bh=xVWFbf6OUnHEEhIAHf9aOM1ReOMOZblmjmo5cxKu1E8=;
	h=To:Subject:From:Message-Id:Date; b=UM7Bw7u+Xns1+PLY3ACwR8ZKKL14di8d41uCufhzDoQ8K8ov5SQm9bCIMvtdwMu2COjzDdqcRtU14QkIm3NU6jJty/0c02f0puIYWY9Q4YxkuP5lxNbxwrpRTLagFC9im+YKf1BFgFuWn6a4hAF7ZZ3V6l7OOtreO+0maM2HQu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1HxIXk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1HxIXk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A7EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743331193;
	bh=xVWFbf6OUnHEEhIAHf9aOM1ReOMOZblmjmo5cxKu1E8=;
	h=To:Subject:From:Date:From;
	b=l1HxIXk0IAPcqgyImHJze2Um/Iryw4kiv8vRfwQvoviiyyDfe30MaFH4R3NIu53PB
	 iVzjWqmOnBpVlgGuSQ4tQX39qEiOtX3GupRv1Sje+CS3dazsozqda1zrtRz4gE/Lqp
	 A7K6IF/lcp7Hm9vdE4wgtufchLXKbWEZOQMZclcSLfOSPlnc9+oYLR/LLf7zIe67G/
	 JOJ5KF0taCgYg6c6Wt8kanH0ez4ihd26UGCzzIa4nJ8ObK965RUkk6Ezlz4SNFnWD2
	 b4JOJWMQzxpL2u69xAuEucGouQjYKffBvojraWDOYq7M1Q8MGwsvDKnW82n6NwmP9T
	 HjGYbTFcjYTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23C0C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333119362.25298.2474198179333769160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629a70d6f67b65ca81b7cff50d0d38528bc58ec876e68531d6545081c9d65881
Date: Sun, 30 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743331193
