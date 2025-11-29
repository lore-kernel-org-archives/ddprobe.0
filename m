Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E64F310779
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764439374; cv=none; b=rldLG6/mQwSiPeFodsd7SPpD4enJK9h8hkZ2L/hUyID+8h4DTfQlujpAcYKb9/2lLqFBS8f7ae6kYLYJYqlfjDdyuluZSr/l0bDapjyv7pkGrjlizEdSrwgRubKDJn/F7ORMshJpLbeOkqd16ouY0VSh12qqxywJCIL6bgnNWKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764439374; c=relaxed/simple;
	bh=lhFKhllnI0+iwqfdu7wFLZQj/1mTpuS/p9j0wI6JceY=;
	h=To:Subject:From:Message-Id:Date; b=nJKFLjAgPnUDxe0BFht8xvgw9x5KAo6B89fLgKc4LtgrdRq0Vr6TliZ6OE0ZNjG9ZlsHoXxp2vc+SeRaURbl9ZVvsdxz1Mzc3/o/K+O3HE6TpTkwhdKvDpzZbac/KIIkRzZOkJzToa8BZYxKgnht2ZfNn4NAuCPE9M6d8CIGBRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYXBMdJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYXBMdJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A235CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764439373;
	bh=lhFKhllnI0+iwqfdu7wFLZQj/1mTpuS/p9j0wI6JceY=;
	h=To:Subject:From:Date:From;
	b=tYXBMdJlGBaYkemyOoqaNvNyLuuNqOpNj8iazRBTAlhBdYbmXtHhL7VrpWMdz8Wy1
	 OTeGOywVz0Sz77Q4D47So8le+I2W7v+/y+c00DJ1h+g71MP6A0nM9DjsIaIUzUSis6
	 Sr5Q0mCTtWIrxbHLmUFdr5Zd1VpyvkSlXEGwWuBRqGC8qiYOl+o63j26msW/fal7iq
	 hkx5onn84PAPkv4yQsg4NbEyxJAEl4KjqkmpbEOLgGUtJ1VXWOOw87qeBMbXePaxpF
	 ECyyYVd3jbdJucxGH8158U/PrbZsnaNAhMKLsGQpGNb5a7sYqXtgjuLwN7qwXeEocx
	 nkTi2MQtSg6KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA8CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443937359.4716.13376750483082771950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8132077b5a4d8ba3fecca1f95025b7998e91985a1d9d4eff654caad1778c3f24
Date: Sat, 29 Nov 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764439373
