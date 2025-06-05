Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3031021ABB8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749120596; cv=none; b=qf5GJy/T3KBJpfUvWWY42oq0QNm7Oq3elBoql4w+WX2Hsd0y4aVfN9GLZn1fdvhLJcr0ja4Sd77yce/jUkn+m20lUZ30YhJJVSXm2c316XuUHB1MhXeTRqraJUbwY7RpLKulFH1ytksDww0lwfiY43/zzESh9r6AHJBoTqwJP0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749120596; c=relaxed/simple;
	bh=7E7l2D/P1ebeVNPYnJblnKjP3OT7qicAlznEN/20lZc=;
	h=To:Subject:From:Message-Id:Date; b=BCtKDxCPEswAp394sbCH/N1bXvXUbvHxNICARqA5BJDwNYqYxY0OhOS+5bu0hUMfT4lO5QJIkBVRsoiSfw5omzFrpJZAMSGtIiUpcDLBuR2SNobiIuKTUefQ1CyJ+3EA5K/khdtLxRZx/gRUWIDI3H4UZvOV8FfYJeyG29Mj6mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKGcPTXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKGcPTXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749120593;
	bh=7E7l2D/P1ebeVNPYnJblnKjP3OT7qicAlznEN/20lZc=;
	h=To:Subject:From:Date:From;
	b=jKGcPTXcLCsqpPdjr2DlTyf9H/ziDPtaeMDxUgBTHggBC6l2TmhJeIhz4XcbvJtBJ
	 NaY2eQaOx/HI6NW3bK0TF1yPOkb1gZdRYbyb8dsoHeIunbuWZ15GkEmP1Y1GS0JVK2
	 gy77ISs8EqJJ14USuUTwfx+ksZQakoJx4V1jcubdGzFFNVZq9otbkcfyt3qHqjf9Sc
	 aihXUzQsn5h+4DmXvsI4Od6Vi+1NEs96ynGqMnbP7vLKjEahjN6pcc3gTQFjAe4Jgp
	 +63J/T43M0iov6RoTKWV4wrG8wnvhiPcn4ZCEU5azRxVJGO7uWxTB4uwxmJBX/Pgeq
	 ZNPSJcRs0e58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907AEC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912059358.21582.14294312200430470909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ed2926e5b26c063444866c0b0a5e0bab24c5a7a6f1ed97d8c8997bdd077bcb
Date: Thu, 05 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749120593
