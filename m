Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEE21A8F84
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744118994; cv=none; b=ED3i+RzZUakiNrhiu7hkkl3rbvCLNc8nwh8bt0jhyHHWND2QIOJv0yleJfifrfJcv3gkcCI4kfH4XOFE15h7pdpxjlTPgClABU3BWxCEIRTiwV4qfV1mA+wvFWAhaPTpundH2cQhIa95PRvp1e9eyspLOEa1Ra54DjgEfEgUJss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744118994; c=relaxed/simple;
	bh=qpJiaxhpdhHoYHjxP9IpO3oK9PVflr2BeVawdI5mZrI=;
	h=To:Subject:From:Message-Id:Date; b=soN2fPVAZwyAhG1FeyqCZZz4rPqWlTBRFgrHvz1dX27A7uHUMq18YhrsdblrrLtCkBCfLJXvml9Ps9J8/CwGSq884vkxHt24ABKugvWaPyv9eLRJ/ytISLZwr/3StzzWsw7K1OdyZSvn/wxXq83Gnjjpc8lRZhvPo1QgORnUKQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bseWhsDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bseWhsDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744118993;
	bh=qpJiaxhpdhHoYHjxP9IpO3oK9PVflr2BeVawdI5mZrI=;
	h=To:Subject:From:Date:From;
	b=bseWhsDffkAIPfgXd5io6l8cC21z5b36UHt6lIrdIi63vLl/g/YZJHYpOwQ4VB5hC
	 yi686C9FPdGP0fqVHmwvmX2cpuBaHO0pBUJrRIJEtQ5zPBDxuZESzmWOAlikGJ3nrN
	 al8ZwT9P0aAPMt2OrxICNzdugpmm2LzOO/h6YeNXuFxLpj3pg1I9/Ijc9mgJsMGCYl
	 NmzknhuN/CTF8B2QEQni+aQtC0g7Wslp53W/Ce2Do/+DSJ9y6tGHn1NVdKHqbMvHJf
	 mBx/P0PUthgWYJBzMkAqcdJEShGnq5bCbzdkEQQmY6GnV7b8eEEfa692ewHxa5LEqe
	 GqjTwt9vl3dNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CCC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411899357.30879.3537188810377170421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a7f101ffe262971626165893a022649bcd164de55ed5d58995e95d35a90364
Date: Tue, 08 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744118993
