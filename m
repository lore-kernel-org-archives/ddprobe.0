Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A0B2575A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717605443; cv=none; b=U9vZvxq8HENiGWtZOJpiAPlDaHa0qpSXiNc2UrMybieYQcFXiQIKZl2Uvq3xpJgV3Rw0h+Bf4hqX9Z2rGTw0yUvudTy+aYTQskwSfmTNdR91u6Gycd4BlY9lvux0wm8dYlCKcNu65tMkYyMCBNl/hIohKQW5P3XeSR72NXP47no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717605443; c=relaxed/simple;
	bh=d2VQwEcOL8wYGZsqX/ZFgaD2orL2JlQjdTh3OGQUZlQ=;
	h=To:Subject:From:Message-Id:Date; b=G5Fn3PHMEAzYBYrKknuMgbjfA+bXcodzxkoWxYsHgejzTyIJIl8zUOd6YqaY5C9TCOuhbPioKulkjiLVCGvPJp+8vAmMZx2fs3xgwyaAwZfXk1fJSTvXD9lan9QUCtREseSO4BD16a6jHUabl+I1tReT2DiqX3VkVe11/tpbf2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTOlSIzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTOlSIzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CC7C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717605442;
	bh=d2VQwEcOL8wYGZsqX/ZFgaD2orL2JlQjdTh3OGQUZlQ=;
	h=To:Subject:From:Date:From;
	b=TTOlSIzDouphHj55yMBEXOLXUkzSJ5vwoIqTsQyGZp6e6lZZLL6b7cX0+44xciQcc
	 zExdhCJpPHBnIAfbr0sfvwHg+0nI+UQuWMhFqmxEGcceTdTYCT4pRmS4jqonjXg7BR
	 RP2ViT6O+JiGog8yUD5822/dVzXGC5oEDP8+/K8BshMCL5xOl6/MUeo/mBbdScHz3m
	 AzIaHV8hC6E8rOYYb8ZlOT9MRqld1mqLQEIEY1f/sYPZqGbYMQoYYsz8boHyRu7YzV
	 boKDf0ydWF1umONmTMTulDJMGx99LOVckaubXRFs5Z+sO5t02GoAICl0YyCT9QATzd
	 s5BNTSZmI1cBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD2EC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760544277.4219.9061095597195820211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014e6f5fadbff169d1172414c67a94f777b48a4157e10026e8a3fc10fcf1dc2f
Date: Wed, 05 Jun 2024 16:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717605442
