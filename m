Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1B29A1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724537754; cv=none; b=SPK1gwmEVNxuxgfENkQ6bujVWlPK7aMdJEnqNN91Eq52TZMAHyIT+evsf3M8/Wx1ACZC1VR2ZQy4WJNHMQyHLqys0PcdIZ347E2BATDnrQ7pbjv8arsjO9zJY2K+UIBfu68P19PLL07jUz/rksTN9kBke1o2Rg58ZSXLo4ZtaQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724537754; c=relaxed/simple;
	bh=uzAdP51+4TJs1vSmYSlux1x5gjwvOOSsSX7VrSzMLVI=;
	h=To:Subject:From:Message-Id:Date; b=c1UIhDKdiU8NcCJaOJDJQoRuEsJrcfA36piXudODObQQmoTQIDn3/+17qiDlvVF4UvMOjnn7QyNlvpCB2UKqpnbCbi6vS7YuqxpZafCa0usBWYUPpMpIeqDbfqPww0dfbc79lGfeN7aCDvpqPeLaoUN2jaDMW6yPF+qn8pgOJFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj2xw0V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj2xw0V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FB1C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724537753;
	bh=uzAdP51+4TJs1vSmYSlux1x5gjwvOOSsSX7VrSzMLVI=;
	h=To:Subject:From:Date:From;
	b=dj2xw0V2JnFoHZn3gWqZ0RuK7VP788g+WREydKgATFZj15e3cmGjxS2at4dfrLR/N
	 3FrZgDTzNDWnocLnWgMbcWRRMrXEapOLxjbIiP2+L4yY7O5BT97bYmHb8wg5Ly2UOx
	 JqVeaN0rKwpP/6WbnQRx6yMYSqADyEogiPPAGK/ghWlzA3iuiieAHjxqkMGJ5seLWS
	 805rcCEgoxYj9GJ25Jz5NLFFrk0Rbpqz9WKOLE+AhXR5HZifpyqISKz4LRkB4O1vFD
	 7RRevekaAZyWaY7jERaUfKzUSbPCGIwIkDKIg9vjp/UHF+EwxOHTtzL7bXUsXa7Zuz
	 RWuSzuOTRSZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DD3C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453775368.9059.5363403021783113410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821c54e8302275bd59e1035442c775948f49f83d60a9cb356d01110f1ab0c630
Date: Sat, 24 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724537753
