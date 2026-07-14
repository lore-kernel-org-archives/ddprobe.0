Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0527B328611
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784024314; cv=none; b=bkuPWHBFWV6adoUtj2GcNEhpecb8cKl/ePiLvvowsTjcLIpCJxfhcEo+rBcpAIPNgLbCm+uBpIvudPaRu2CDGHoFBCvhUGGm03qySKQvVVH8DnPkv0FuqNZShyQy+MKOY3K/4f9s0AiIjI1rqo49StMWlo+oacKK6/55OBpwVRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784024314; c=relaxed/simple;
	bh=bawyAHpoo/KUld4zfCt37RzB5xp7vSm0a6i8F39PeEw=;
	h=To:Subject:From:Message-Id:Date; b=oKW1LGzWEwqKD1XoxASBM/Kl6VNdAxdhD9rfmkE2o4Itvgup2jg9qVaufWRxZA13UCX3YLrRCU9pF/4nCouY/xwxRnfyQ9d8uR/TDToKw/uGGVxjUlatgD1ubsD6H5bp7FRQI+SS4MmNAHdi8uy9UfbQFph1fyqanFziimpsfZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPfT3FiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPfT3FiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3A9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784024313;
	bh=bawyAHpoo/KUld4zfCt37RzB5xp7vSm0a6i8F39PeEw=;
	h=To:Subject:From:Date:From;
	b=ZPfT3FiAa0xq6xGsQmhYialQ66XBjUvDbEkUkcshutuu9LIpo4zT7eBAjSZ55EXye
	 ndScDeKWkVim4lel2mDodQgzTFJkdUZR0xFvQGYsUJm7fGVUjXCeezD8cmOu5MZdj+
	 TCqZsH69OrKODV+gpc/HZhXeAPRORUBuuingOLmG7fEH57zUpREVs8E3vBAQqMHwQz
	 VK/4hNN9RJsntEOthmEMLIyqQY/IbUSTnqy/Oke+GHmy2KzIPM2d/wkgh6svYUjD24
	 6AwYlDfHovwLpufeZD1XqzUJf8vcoVNTuNFIz9MW9JRydFGYbmwZjzX1WotKPkn9XA
	 IwlMRnGTyHgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD5C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402431368.25159.5489551300724085320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0efb335a2b8984c477608d3f1849332ebf41a2834997bfc75c74ea2a603ee39
Date: Tue, 14 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784024313
