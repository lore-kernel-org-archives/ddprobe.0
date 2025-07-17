Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B3D2D9EF6
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752760794; cv=none; b=G3JsIZS1TCsv+lXCu1RCPoEdVdfwAhow1hCQi+liweWnSzV+sgWhf83v1KgnAdbxeyJK7o+R34NSDrmQ952ZMTm2z1+/cEBaTTzedSHCPIyHwUkcpyMKLh7CLYxSMNankrcDcFLIA7ibZqpdbjYw0GjorxxQfJYkh+ypK19wwk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752760794; c=relaxed/simple;
	bh=CwqlOLy/WuMGcrll8JvLVZjPYVzxu9jAmqQgKX4aDhY=;
	h=To:Subject:From:Message-Id:Date; b=QU9P+CJqNtRPnquYE20aiUHm5GNA0QY9ggH8AObLUTh1RNjLRnNv/zVqHXsRN+vkMj/eCBWxS2hoZ6iZbBv0sCdXzjh9vM5kKL4S8S5GYC+uPshauW7kZV1O+5yZuj3kpqLP4OW+g5bxlnrmgQTqbqVrInyLjP1FaW1qmXe42II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc2sZ0cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc2sZ0cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D0EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752760793;
	bh=CwqlOLy/WuMGcrll8JvLVZjPYVzxu9jAmqQgKX4aDhY=;
	h=To:Subject:From:Date:From;
	b=Gc2sZ0cdC87YE6PsH9Zt4RFWgpf1uwANcHZuI7tG/MFsuhHxtNEMEhI3HmF4l6oIe
	 3MGl+7mvy40z2xrG5mRpFA2a+zrAmsJXAFnMvAH81I7NFT/mC6DD5OPfBQDAuwamWK
	 wgkvg4JMJ4/qUha8rxMO/miM2tEjaD/KH5xFGKSluGwMLKy/OnrblqXrm5+8SmGXvV
	 v6LkvI7ldTaU+gZ0z02JgR+OnWBM9nzZFjtt/U4YSW6okSYQ2cxf2O7BDewMrit/E4
	 XdGvZ3AvQZ9J9B8Il1AhzbnwRt8ylHy+ZBRnwmTFibRMJA7V1QbSCoBSTr/5RslEus
	 WtGEm1gFdLBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD31C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276079358.2205.2769396873213142920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c333c5893e23877af3faeff4db0cb677f44a23e76c53a1fe2553925c7d995d98
Date: Thu, 17 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752760793
