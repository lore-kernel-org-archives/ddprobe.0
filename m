Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD5F44361
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717701443; cv=none; b=FJmRnJf9VUeJ7Dzu8YFMfwfPjCU85iChmoGVJdgY+leHLCypOTYrWdgX3gUEWZiXMqwqe2nhcsLiefHs4FtWS0XmegVUIU4d5tX5HoA0EgJPB4SQ1gGIyZTFMP4nSdMdxJQLI+4v5n5Ic10cAj4cOFEbUWZcoYsz472dFkklWMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717701443; c=relaxed/simple;
	bh=L0oQtOZCjAY2E6diQ8r8NVw7q02inFzkI16xzSSHOnw=;
	h=To:Subject:From:Message-Id:Date; b=gRx4snQuMF2YexBkXKV3qVyxyJpl5ZpD4IUwy2WGeQAbrlMDmZ1yjB3cCJEvJI94oP7bt+N9rG87RYXTV0wceTNjCwMfR4/UhOs88nxP4ZGm/KOgcboJbJRoEttec+zFflZyAfs0s7XzxcCiH9b7O7P6XbCkXMJIwIUUYp4+Kzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trh22ewy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trh22ewy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5D7C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717701442;
	bh=L0oQtOZCjAY2E6diQ8r8NVw7q02inFzkI16xzSSHOnw=;
	h=To:Subject:From:Date:From;
	b=trh22ewygxSlNycbzUeA571gipACF024BBlC5DoiPtnfrtv5maotw4Y4z7RNtpg69
	 SiRey++6OBa6eAZGftFa5jhvEWIOfC67Ikjnn6Xh6fqnOA7X17qWLl13YgeaSATxGu
	 ikPiDiL1GuvpUeKBAJCj6DUgkagpPqpVb43UtMRe1P2aZb+x1T61uhttBgGefJKWGN
	 Dwkiy/f7GC+b4G4Rg0KL4Z75u1ua5rRL/jwrL17AFDraEUj8XLp+J+WRocElIFI6c3
	 2TAjhf1eHM3lgL5SAZPzhMMT4oJy8XFhnfZrdCie/N2sreLwZL2qkAQcjTDZjTXF0L
	 3ATYecc7YX49A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E6FC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770144277.25441.15180988725836723441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa29658c5bd379839add5e9286948ab902fd645555b97ba9ec592d5201979bdf
Date: Thu, 06 Jun 2024 19:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717701442
