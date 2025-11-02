Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326911400C
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762054194; cv=none; b=OjKVezG1Bh79dj5DJ6oooI7GD4C8J9UoeaHkuT2X2wA0+mZGUhT8f9bdPCo78ded0okeiB2IuF2B7RIDSX5FSNO6OoWXd7zmXRJRBvI7TxFjUULifdfHgOXKVTGr7mZYiLza4MGfReyZDLQH96KajYC/nsRBUHrGEPUGYpbU7NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762054194; c=relaxed/simple;
	bh=v9GkSEknkfCyBoCXuz/WO4KORIP1nlNY33o6Q4GxyaA=;
	h=To:Subject:From:Message-Id:Date; b=nFE0McUOBN8FTjFHFQoqv95i8kqNcQ0LUioOGaEpK6H0PkVYssj7szfClQ4lSb6dvYH0SgRQ2TR66AO1WniSR5P/WMohyznZSZuUaW4OeYjInGvy58rAFB26/EMtX/kIngsl6GYtDnOHa/2Esm6H4vpN2Pw69KPkM5Uae4/gHfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDHHPLyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDHHPLyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D88C4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762054193;
	bh=v9GkSEknkfCyBoCXuz/WO4KORIP1nlNY33o6Q4GxyaA=;
	h=To:Subject:From:Date:From;
	b=mDHHPLyOoUP0nZe6CIkGGhz2KOH07+EhgQs2c9vUKZC1+pgLlBx/XItFZn5Kp1nWo
	 x4HoU4ziFg184irvn0SSvWiXgkhMPbdBEw+8QmoWW5blEvNsvZqZdsoFfas/YwTFrS
	 b+LSnUbqezQZM8nqf2AduRLfBWHpLpqT/37dzd1//wlF7vx+RInz4+PbreVYLPITPK
	 E2UVWwJ+o5wtBWXm+Sji4Aywn80nSzZPVS5AKKZj3AqqnT/D5Qn/quACsUchTrGZ53
	 zZmjUBnZ/4Qz7TuKPXq42xje7RB8pxFUHZ/LE1o55iiQbWwTcf3l5L4/DxxhBPgIGi
	 XAfqyYDZxPCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F81CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205419358.11090.9852584431510017586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0552690e830fe460beed22a661cd6e493bd1fcb589056d5b0155b1edcf1310e
Date: Sun, 02 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762054193
