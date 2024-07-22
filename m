Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C16B17996
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721628354; cv=none; b=BlFwuC5wkPHom8UyDattIAQ2iHjum65MQKPApC8DyGQRjJFSegdYXM6weN74osXsXZl1oWIwYiNq5Y3b5qluoywV24aX9d3jVcpOtcu1iyHUJmXsGapykehyuvIeL0IGfYlyOUWSrdxGfVZOKPXR2jWEzD0fM5wss2sBMIjGdxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721628354; c=relaxed/simple;
	bh=Sl8EwsQNxHTZ4hwYNISfvLzWz4zZdr9tUyqF1AVXi34=;
	h=To:Subject:From:Message-Id:Date; b=q250GlH1SGI66dfT2hI9JjBWWtC59cEDGJAxsmDR/vDVXhtCRGBa1kfdwGElDURmlqexw2e4MIMENlmUaQcLHZz3BVNmOAA6Bvoxrc9a6M66c0MX4pQjnOZIsme0opbStQuMxpYgaK+w4Uuex7OyLCQfuHHgOpBv/0mffxshNZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYDI/Ytc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYDI/Ytc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6978C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721628353;
	bh=Sl8EwsQNxHTZ4hwYNISfvLzWz4zZdr9tUyqF1AVXi34=;
	h=To:Subject:From:Date:From;
	b=UYDI/Ytc1DwNgiVCwjyHpTiBBEuCOPY2R0kZNzTopIcL1XSGvadsF8jpsV9OMdN7T
	 q9o/SHK/007yi9RUGIbnjMiuEC+Nw9I83b3zUbL7IefBVhzXFB7YrhbK1DstAUtEah
	 8zvGx4oO/ZnUqhx5tHd9eEeT48HITbMJAfDQEGNNc9ulZqWFPuDYZDSTKx0wMIsH37
	 YXkx6MCO67yhYxBg41iAIt81Bm44abOXAXIgaTCcyBvNTXRn65P1iloIYoE4BxDjFP
	 MlSUSZTKi4phWTr7gnpVTquiS6sjn87vvLUWsvWN8wT4EgFJy0tQMQG/9nW6ZWSj22
	 VoM05pY2KJGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D8C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162835358.13447.16190635106199873740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50952d91dce4fcf72d424c3f40364074ce53a57ff4bf53e6d992ac0bc13973f2
Date: Mon, 22 Jul 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721628353
