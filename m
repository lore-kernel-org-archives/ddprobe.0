Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1543D211A09
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770835494; cv=none; b=sLZXlhYWdX1HvaMwz6cvhfLcQjgE3T0o2SRRpSjYXNoqa/WCoIHZqTbifHRyTqHH2C6xFKIpzpppu6L0AcQDaXFOydk4G9nVr1llqbSsds8J1lACVL5wUUX8X0yLlo6TRh+SAy7sPPylrU+jzCn62goy8gr1EDR2M921PzuDZNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770835494; c=relaxed/simple;
	bh=bY3HJqK7gKZ0Ph+X90jra270zKuNVE9KVa4DhdHsOTw=;
	h=To:Subject:From:Message-Id:Date; b=Ungo5CwsOnrs6O1L8Uv5f/hD+BlgNl/aI6htbad4M9rAiJV7xkNpFkaMnX/rvwpScOdf/HDqAdLKFW4UKqFp1Z0l/FaRabjiXW6NzRC+d2rv9w76MK+JZaRJkCjnTqlsQsqYsjhuxaSdnnAEd6Y5/qSvuOQK8CKaiXNzEyplIQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3Hm2XDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3Hm2XDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67D4C19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770835493;
	bh=bY3HJqK7gKZ0Ph+X90jra270zKuNVE9KVa4DhdHsOTw=;
	h=To:Subject:From:Date:From;
	b=f3Hm2XDJeLRCHNycrKohxDDsD/MldmqceGZFJ/elpM2tIeLcSuIs7rw6xc/JMzgv/
	 kFy35VVb2d5rYIA88lUXkua3o2Wl09Elt6pvO7ZvABP+9NjIQ4PP4pg3U3EMtonnxS
	 67mKR0mHCZORv6TF/VyQcYz0WbmUdmX1RqcLLzi46uYGFQQAY7wlH4lRjIKdY7i/HF
	 E8Nis8kw4atdacqvfyKQTkNbc7mdUgR8HPsymV7meIgZKP7EC5lIDskq8l4ROSS5nA
	 YrevgBHWlWeiH0SBpSRALsYa2Z7e+FmmsyDT1lBJsBSblBuiXjPMyeHJFn3/KRHDLd
	 5QCgx2GCDuEgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4D2ECD6DA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083549359.7400.2240786058322694525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91df05d9a908a886469eef8990e9b29fed2ca4a6eea39ed77b6bf7ec9a6e5ddf
Date: Wed, 11 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770835493
