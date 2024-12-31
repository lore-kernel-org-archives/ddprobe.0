Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44107153803
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735686354; cv=none; b=ZgVsxeDPmk94LEGVqz28Os63jRTNOXIqPvYFhE4AlobEhcFXYWTxun6L/6tzP/j+crEMKl2Yn0cztpn755c+4Li6hCgp6oiFRemewtw/HKmCS8JnVhfNgoWwH/BY3Dj7U9e7K4ZWIqUzjAVR7ABZo9rIu7JQ/5z3qS3SFtt6vE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735686354; c=relaxed/simple;
	bh=K06JkHRL82WyuUwSFIUXm8I87pIRILveNo5se/qsONA=;
	h=To:Subject:From:Message-Id:Date; b=X3zOw9vjqzvic2H4oOMP0WHuqv+klVYB+7JD+9mDtzk70jEE6Dl+YYq+oHh6Xx/8h0AJ8FoWj6qZ8ZKTWJFmERRSi6zHRBxQ3EZxv0g5Fv9VMMoWpyKLTZCKAevHMB8V1mbqZQFk5RwdAGq7NAb9L3k87tf2R1yXVHf4BXNKus8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snPCa7Va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snPCa7Va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC03CC4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735686353;
	bh=K06JkHRL82WyuUwSFIUXm8I87pIRILveNo5se/qsONA=;
	h=To:Subject:From:Date:From;
	b=snPCa7Vai+zGTb/BpqJoH4gd5g6PCV7Sl52W80DeGuco7ew3WW2wBHw0hKAxEaK1m
	 i+a+fC4yLEKdhItI9V+eaP09PdMCe0ETQOqlDgLXH/Ut6apT4gUNNXZNrZUKjZNUUE
	 Hb9IDKJusmizzcKBHl27YidLzkVC6Qkb2z69Tc5ozITaeAtZfTQ99JA09RPbr43QAB
	 umNqNBabNqejVd25KP6Bu2DSLptckEa/dD4WPKA7M5UgROJ6SG+XqHr2fcpvLK3xuj
	 I56yLYMEbSMi38WMEv29K32EwnINqfCP76ysM9G/rDMtdaL/NdNSeOazd6/nnYCM3I
	 7vsOvgfKOBopw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E4E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568635358.3064.16729815764989917448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb883f865e6f2cb568be5bbee076ee5d6317697cda934c2d888c7efd601f29e0
Date: Tue, 31 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735686353
