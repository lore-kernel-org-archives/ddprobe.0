Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ADA17C6C
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726418154; cv=none; b=Tg1jCmy0sdlhwiTz7wVG8/kDLHy5oWCvKwAdVRnS7XJmqIfcKxlz48ST/rRo5iXohas3B6tUBrdE3hVix6eQukUzlHZNty7fyeZEw2i+9LarpsN2romvW4FvgWRfHJ6s142e0CzazGSw8A7qZLjEorsPxQ1vZp+9uEWssAvs+e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726418154; c=relaxed/simple;
	bh=1E462hgGLLYEBDpq3S8MbUw2yRi8QnZwoqjuw9fvxWc=;
	h=To:Subject:From:Message-Id:Date; b=kZ68caEANt9lndC8+dP9pZ1N5gxQeiIwro4yV5QdtM5kwyV8BvGwx9Yaq1eKfjbn8tTiu/bXq1iH0u/TcyLEhxQt2nq33sTIxJH+Jlx3JYu1sHVPSVUeUG/cLizjkhC+wyVZyVkT5PpX9fjk245mcJc20faolWprOAgMJaWoxV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhvyUm2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhvyUm2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C24C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726418153;
	bh=1E462hgGLLYEBDpq3S8MbUw2yRi8QnZwoqjuw9fvxWc=;
	h=To:Subject:From:Date:From;
	b=PhvyUm2mdmyt/ZiwO0hIImi+p8bUqggauRepME6lEB+d7CGDE2bwI+SC+0T8FDg6B
	 GcpB21PEQELxHwJlwjtJF1ZtTmNnDOzhcOVkpPLTMbebUr8KeezpgHdTqq7WgkEwp4
	 TGH2eCL3USg4URqs5ap9r16SNrax+3cRo3YZc2ixDBgq9oJ9WwkMAD9L5tXCFApUeQ
	 HjGY18kBR3x0b4b+Q3GEpkgOMOuKAR5lVyBdgrbg066C8WCdAlRnrL4gTby4Zmunoz
	 WhQv+0SJqI9IbcF3SFfvbWnhNN9uQia/DyD0V6eTIkysSGJdZzKmKZ2Oj+Fzi8m5IH
	 YWqHWW2lwRKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92303C3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641815358.14853.6132578454873295488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87446209baa741202b815d5c2326744f1323f5d6caa3263b94adae00f872418f
Date: Sun, 15 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726418153
