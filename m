Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6423615B0E2
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715817143; cv=none; b=eHQXyOJPtsqcIK9ML0SDEMNFGbzJbuqYkscEOaiCa3YtFAOIQCaERbVVIj6SsSWarfDYsEoA5q7Z45u0+uHNiTbtSxY5Ddmq8HTFAOikrL3fK6eMGU+jmA0eOrtIXKDtGPrih4SK+0ZrE9obi7MkFFAbxNYwx4V9U7pIseTMY4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715817143; c=relaxed/simple;
	bh=cpPlf7o6AY8gmNyWhHjsxmzj5z/uxl5M+ukWgZHxq28=;
	h=To:Subject:From:Message-Id:Date; b=si0ijlBt46KK8jSbPm6bM/joG2IgxtqBFyQoDyYB3HhlpbuHRAA4rZ6vDGey2ZMwxqiUa6OqtxXWySjQU+fzngBG6lqi2h/MmCtKIWuojP31CDvXp8s0iXfSPlYWSaK0pbdjuPFZlASvpfTw9zNgL1lscKKH0WlOCFFMlQ1kZpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/JB29GL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/JB29GL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3ABEC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715817142;
	bh=cpPlf7o6AY8gmNyWhHjsxmzj5z/uxl5M+ukWgZHxq28=;
	h=To:Subject:From:Date:From;
	b=B/JB29GL67iSj2Dhds4FuvOBJTFZAtXXo9jiabq48el4VUP4qRxjOOYc3/4rwXM0m
	 bmg6l/nb2yUyq+0ZKYLAAYFOOHKWVKY1PSiCQPNQubpfdbP1jtBfO/oU3X9YL/u3PH
	 t5X3WYrC/JOTRP0WdIGY88lrYonq0Aq5m0F/zgGHBs9cVGn8mQDYG7PudiGdR3ACTC
	 LqTSDlC1vPOqJsMXJTyzHGNDct63DV/zYpWbD/At1i3X9X92y0jGZT0e8Q148MgnC4
	 OG3/VYdWZJwNuUIuGGOLt9rFE6+VukeDKJb+Iwici7JPQFdYC0HcyRqFEo9LLnziJT
	 jimFtLrL+qoDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84D9C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171581714280.28740.5634045771275393785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9f83e3d493cb76240dffd333e9682a6dd7468385ef3794622cbdcfaf9dba09
Date: Wed, 15 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715817142
