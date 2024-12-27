Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407B91F9ABC
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334754; cv=none; b=WxoQSUvfPHZvtvpHLkWFkNhtR27QBsr4N7OM3haItTT5Q9pkvt2JAhXtiskg6kEMfIY6JkKihUo6mntipVILhc6mJ4EwxoN/HzoBDjvKAZCp+46IdjQhdBiL1u6r5UmDfdo/2YmqF5tfQsLRih69uwEC3GH7hKSkoY5OYb/evGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334754; c=relaxed/simple;
	bh=BChram+wxIClENWIEBlF9jLWtK7XFfefSmg+I8w5Dnk=;
	h=To:Subject:From:Message-Id:Date; b=VRXcXddRcyuV0qMbN6a0AT5Xb9Vfq8OY0+P0odOgyz0Vl2US752AIwxMwI7++SQHTOvpp3xOLH/LXYldd58mVFQQ1jyCyPX+AQhSpz+ewWFlONkZD3fegg/hIJcjHM88GpYp3WxY9htV1ktI5PmyyZ6/QF2jvqlX4AlirHcP4io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5ii0MzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5ii0MzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A79C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735334753;
	bh=BChram+wxIClENWIEBlF9jLWtK7XFfefSmg+I8w5Dnk=;
	h=To:Subject:From:Date:From;
	b=j5ii0MzSQ7gGRM8QlWGMd6bxxvgGy8TEkaxJmU3rvPJ/ism68cCNOCB0hlKrIxNaI
	 4MDfhrdjF0HGexxRatpEatOZSfYo9ENEhgW6uYu6RjlNaWFoZZhyPMg3uh6gg6XAYQ
	 Lyyxu/Gp41NhHZuKrcrZBl1eBTUTsIGECweLCEPjwqgffkqYz4xgyJrHH/FjbSyM8y
	 uOPPWnv0CBbAAAp7nnTNUZk/Q4ba6jFnxV8jkIPEcaoRn38Vt5XK7bM7TrYMaIUS0o
	 8ANSIDXD9A/js204uhClouUDhM1/WaPgmwTtQZ8qMSqJe5dtWpoOaBccPnAQCZu6xJ
	 yCbT9hKsrBXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0FAE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533475361.14284.4615829505069653885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20fdc9d21d739583f1fa516d93a58ee40de17014fcb1a4eb9af9b36b2c16e399
Date: Fri, 27 Dec 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735334753
