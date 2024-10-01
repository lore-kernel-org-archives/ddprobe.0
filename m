Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5D1C579D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727790954; cv=none; b=HNkIRkznNYOGRwjhyGu83tDbPo4eKjy38fvxA+5a9AyYwetXkH7R/aGQQrdmz+IQzFgaz85VK0sUZDj+7TkZcmOv4Z/iFbYk4Lt5OiJ3YfmT7JctUNrRRI+1RKj6JFPlZQQU/hAjAq8zn9F7Lfqy08RgLx3H+1tKXCPO1R/XwJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727790954; c=relaxed/simple;
	bh=Fd0x1y1abUJUsUVEUlKjOQJ1qiIZdQI5yiUbIyEMZGg=;
	h=To:Subject:From:Message-Id:Date; b=mCWDunzKsYtN2o37kIO70clJ8WBuAx/OZVWM7ZGCiMT6hRhEI7fr2I9pd6UIx0eDm9LVj3rRrP6ktO3twdwYF3y7BqmIwM+3QHDskjZtdGez23sdABj+Z34TwM94uh8LgYE4ly2z8Zh8o4V9nACriql59aeofx5rl/O5YKamsfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckX1b6QT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckX1b6QT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778CC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727790953;
	bh=Fd0x1y1abUJUsUVEUlKjOQJ1qiIZdQI5yiUbIyEMZGg=;
	h=To:Subject:From:Date:From;
	b=ckX1b6QTJ5mWeN1EhCbI8s9HrfrcTl7wnV4YwIyuvhWJTb5P5Y+ok/YHkayWUKhqy
	 BZ2dN2EdQrx/Z2kPukqSQQsgRz6K2hS56+JZ+Awe0tkyr+9U64LK3AVLY8Owgmv8HP
	 i8NPU5S82jAOqW8QN6BbWsowKucvtn1kbn+j3ChyjHUJ1t1T0GB+bF7g9ebuLLKPlg
	 e719qAlzHA8wGO0y8M1JIfTsrH/E5MHOnjsHb5V8/6wW8vCOedCTW/IMjLYB8sD1yI
	 BejX+WGkoVnnvrr5MRxBRgeYfO/0pa1htudCNk0J2pysGmpARVefm97A+Upm+bOvzf
	 jxAJ9aZ4wTSaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F02CEACC1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779095359.749.5504804651580536912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987435e2d743eaf7a8b0a1fea6874b7b1e6d349b04f0fd22fe12a2dd2136f8d5
Date: Tue, 01 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727790953
