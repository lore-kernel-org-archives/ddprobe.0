Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0263536AB54
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780296274; cv=none; b=YM2bDh2v48yBBNaM1wXwyP/EupLV9mWKLBNqn7gpuSIp/9PeAK+HhBAO5PFIiXEnR6y39Tf+0GjfKdjD+R/gmg49KPizHFfsu2EjSdeE99hpVmzlqsbgELXh0AUg2dt/5dXXv5cfNwMQrQv+5HBP2EzfMzmGRh6oveZ1zLgiMjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780296274; c=relaxed/simple;
	bh=7t15icrad/HpGgYpGiJCuk6qLc81YRwSn7qWdr/UKdg=;
	h=To:Subject:From:Message-Id:Date; b=Cq6Er6Vn86wZtORw8oQloJ++G9PQ7ZlKFvZR/9AA/QHBGEXl46Zs7tQ7elgPHhEg1pN/JNJ4AExSYP8SC1tbH4l9lp9rVW4RY4wtvNlivxT9ufUNrnk1cOFmXmeoACzKQpICQ7GJGcr3HmUR3FK9Iv/noEtQwLl5jmhy3bZ3ZDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuWryA8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuWryA8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AF1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780296273;
	bh=7t15icrad/HpGgYpGiJCuk6qLc81YRwSn7qWdr/UKdg=;
	h=To:Subject:From:Date:From;
	b=NuWryA8HrOdbcAYL413vXn63hnFdnkAZvr/73E9p98dkZGgrM6B8N2QA+EZ0kNGd1
	 JgIBya/4NFArcFkRYphjTUFhVA4Bc2pdt6hv9KplVLzWRO9wav/RAKVeAr6HJw16X3
	 d0oSuSXS7DDKE0fV+F07s8FmOO0GH4wc8WBbsMC0MprevWe92S1SjILgll1mRuG8CW
	 fGxbLiBlv4ENZ4MsFyDqzn37fA7RIYsR+WoBWSU3mQywgzV5ornTgKF0mw4xEpT3B8
	 RSKWqA1VxYpo+5vdO01fJ12h09KK3UaQKj4bl/kvDTycWowca2K0rvX+dIRh86l1L2
	 RF6JyynpUyxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB51BCD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029627369.23944.18192059821935682631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a6803eac767da89b920cd6d2206c17ef2afeb494defa84513d5668574d754d
Date: Mon, 01 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780296273
