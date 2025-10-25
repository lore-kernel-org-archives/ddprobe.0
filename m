Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8E42ECE8A
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761387594; cv=none; b=YqqzG/q+llp9hppfDW4EGetJxxnd7WvSOxlPaqkXmdSXQp2JG2ym5L6pIXvrMZkMvwHkjfqhrXNusiHg0nykmxR8PLHaaNRZqH8spgswVCEwSuWBLjf1giw/oNeDNjp72zNFZVaM5//TjDvJuMXMxC7Ghf0Hctr/3NxC+uv7u38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761387594; c=relaxed/simple;
	bh=BmbRCfE/BR//+pIrRAq7Xk2dTsY1ObckyTt3w9uIXFA=;
	h=To:Subject:From:Message-Id:Date; b=RU7Oeyf0GU5pr/ZuMiLTJfRdvo/rg0jI1Uid/cbxokYdFTTDIq3WPIZMuqeLzg5ffu8tAM9I4vuK/rhu2MqbncIQdYODPjH/474GZ6A7RCxaBlBZ5F9K1tEX4YpRPZLEsZ+95Af2r5pHM5VzeDTE0Gb/CPe0/YRPSOehlIUH708=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xj8T3V6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xj8T3V6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD94C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761387593;
	bh=BmbRCfE/BR//+pIrRAq7Xk2dTsY1ObckyTt3w9uIXFA=;
	h=To:Subject:From:Date:From;
	b=Xj8T3V6p9o5s5VnUiTRwNm6ZnrjjRPfLpXa9v4/VQToyR+H6aHPZ0tmYWiU0eGW8u
	 c8qWv5mliMbri4cqSoHeWPJNpGxF4nL/LjwWZFBWugafc9QS618Lukansb4EW+ZMqf
	 Mj9btqKawV5jyEuyopYdaqeCQdCD+Q0SFvoyHEd3j1YxywVafi59DeV87LOFDyeotF
	 ANCH2LRljTS71WCUB3a0HHFwX/fFziLqDccEih3QqwMC6Sma9IZhoCJ7sjGwIGTeEV
	 stLA0gELSmLzTLpAt9odoCAsoxfONajTHpFF6P1GlKgycGDI0Nm/dNP7WcMh4bk7Ob
	 xr/goza4EOaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DD5CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138759359.32546.8644000134899648211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8063921206e106a9b502f1053e973fce625aad49a4e567a4f8e59e6adbe65af
Date: Sat, 25 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761387593
