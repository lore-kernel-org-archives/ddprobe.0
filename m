Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F0D33F385
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784729314; cv=none; b=LjegfX7Z/RaQo2AJ0h7MFICDjY8Oq6PGwGgGxxN83UbBzuW8HuWVxIhbgZ9n/atr+7S6OfChAibCU4DA7yRrPVdTEbmu84NS5zaorh5N0aAZjKvagejTIyp3QOJq04Ml5FvKeS+PD7e46xh67TDC6FLVy2HQVjgVSZByq7Q9si8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784729314; c=relaxed/simple;
	bh=S2H227r85JFB5tT7F8u6D/vOADm9gCqXV9HOGncg0wg=;
	h=To:Subject:From:Message-Id:Date; b=eN7C1o18cE7AorwcCuhDAYmWM3FeEuElX+RA5KW1R7DAVpbAkOZLfhM3wAz/koRgXpHajfu8KgfUy3QG3kWvO6HhhmtIm1EoltLJv3LWDAsrF+iMFkCoNpNNS8HBLpaApev5bnD3Fmr6FZbRCE5B3XLEiDtQ4hIjVfyPAO3pZ6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJpTnz8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJpTnz8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 388E3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784729314;
	bh=S2H227r85JFB5tT7F8u6D/vOADm9gCqXV9HOGncg0wg=;
	h=To:Subject:From:Date:From;
	b=fJpTnz8joDFNP3JDT6/vSA1uN4bnATMG/BtjnIO+eh19nZqwe+VwdfyANPFegkDp9
	 8d1IYvB4+KX+GJJF2ePRBDHX7fhn4sHaT8FfAGOZqfDOivghhm57oeMzJ/LWq10XGp
	 B1eWuGNFL87jn69mDt309nB1gGAX/7PvfDZjLI2JWoLEUrHWf/sUm7X8sYQhYj22dm
	 OhC+wAgA4NqDO8cvJ5OtqQw82yt86qQyy8ywv1hUHkkNPtX9Kdbq1gabpNmacwH9qq
	 m08qe1tD005jhgGDh2VWMbCgVswrD9udVqrANCuqN2dKax1ipynLb8maQsRT3rzKHl
	 GFTAy955VsPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B53C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472931385.22510.3281750037415190155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4be8c6e5042426460855410d09a26e303a2dfb6465fca7818678ff64d5133a
Date: Wed, 22 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784729313
