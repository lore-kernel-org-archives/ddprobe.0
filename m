Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D6C482E2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727037354; cv=none; b=iBBaKDOQOWCebDc5njL3FoV2LMbhPGq3aQ1fqJvgvptJa9e9eE1HzLvlGxQK+4UPS+udV6JuegcZOoNpADy3rIwYT7FvE8Z52MK+wuWYVZOycm/KKydLiAhzcAU8Q0LzzYqiwkz7LRR3UOwI9JpzxlE6Oj4ChIdPr0AzhNxbJHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727037354; c=relaxed/simple;
	bh=l6AvfiqHlQ3OTCoyUiGakipzc1Gp4pLRA2Yp87oPEXw=;
	h=To:Subject:From:Message-Id:Date; b=IsUZp9P8yoXKuNMnkr6JRXZZ7l6eA2G81XX0QTSUtmrGEhQnYhTIbo35MhWs15JW752m2aFHXYIN0nvHz4ePvUVpAMiASR9PJtb6gaiRO1BruQGTPpjBFTw8drADAuXoDegzbE1vRC5dbduQDWk+NygGytICu+0TTkfBXthhaYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myJfsZLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myJfsZLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E3C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727037353;
	bh=l6AvfiqHlQ3OTCoyUiGakipzc1Gp4pLRA2Yp87oPEXw=;
	h=To:Subject:From:Date:From;
	b=myJfsZLF8uG318jAISSK3SqHvi+zghQh2FpVxFxpUKBPfYKFMUs62ws+iEtNNtvkM
	 Jjip4YU3JH5b4XXynkrCSoLcwxhd0W9QjuyfDwZfMV6mTrNxC35zO+2f5aqCBTqKD9
	 L8y3d+J7f3Ks5KFFHbMkKE+jE+87W55MqvpWrMrJxUvsZqzx5g99gZHa0jTJm84phH
	 w0TQQ/rvnt3VKf3R0UFwXdpoa13ZhY9UNOqWqMxP4+tMrlVTx4x09A9BJ3SQ1enO8A
	 ITGcUZObWgAl+6z1s3S5q2bOOEdm8+g3LlUdwShngWyYU/ugOopp7ZM4Q2kY4wJ0ZK
	 QsK74xXwT0p/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98004CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172703735358.31570.4126709630636715305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19644170b62cc61528e040a6a85988c39075f107e6e0953c3154004b2fb40008
Date: Sun, 22 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727037353
