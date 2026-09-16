Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE03543C7B9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789589435; cv=none; b=oFL1pUdk43ZtlRP5ZgXUz8I78pJ1VgJPPycCR4TayEROIDZ+rTrX/pUvXbzAl1eeLhYRz1tv6QWixUQe2TsCW7WVrL8g0jghv8jjorn8k59OYajoYPmO2yuF7jIAk3QQWwQhNtS2dgrzvRnaHl1hApKCRcXC3zB6v5jcZ0I4fS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789589435; c=relaxed/simple;
	bh=/24jfapgOqfT6bC5XcAwVfJr7Vrb7d01LDq4nMERT3g=;
	h=To:Subject:From:Message-Id:Date; b=kXGCyy61RGfvU0D1Vo5wyzPJCFc5FXO7IRf2C9rFaBL4jIkuTHNErAiV57031ZrTzkh21v/JVI4GfdhUXzKiR/gl3thHZKBZYHHKdaEX28BqS5UiFTbcZHx/VeGNYyi/e4YiMTHmcsFAg00mCkwPdidk5gdClLfKpXRP+oXlsK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2vkWslC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2vkWslC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2119C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789589433;
	bh=/24jfapgOqfT6bC5XcAwVfJr7Vrb7d01LDq4nMERT3g=;
	h=To:Subject:From:Date:From;
	b=a2vkWslCZpgA/8HyYpZ9Odnf9/1h+tA1dYFiNbGdn/uNVfqokTAug3CdG/eZf1eP7
	 7gty4LNMf/Xm5lU3CusiSOLyhQboqS3pcEUvTJewgwT2fjqB1zRj5xW5Wu8Jt8AMbZ
	 xzV4Igh9srN4lt+pTsY23V9TLPCDpeYgUNpkIpk8BI99CANONFLQaiAUQMAJEb9DXp
	 6F00MdCk2cxLlVGBBf3ZC8tzXC+G44cRTUv4MiNNF3w9dFlgc/Yxfv+gZ42NCzP4ya
	 Q4i1F1oIMcgxAREBMtGRoioB1beriiC3lP07Rq35mmMrj9wU/o/FS9eSlOaLAm41K6
	 QX6qX0Oz4WlkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE671C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958943370.2861.7587396300913086031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e4a8f075cc7c592d8229e864991a9b416ab2fdf6cc26f0bf1e97dbd640e427
Date: Wed, 16 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789589433
