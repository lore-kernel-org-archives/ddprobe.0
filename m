Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C062D73AA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757411994; cv=none; b=QQZ6HBq+T57fwHnRC4LsVRRcd1PR56qxuCDROWpYWeLgeNokWwpyW762Wwh1/np1RU3FbGqUjYJzdabMfG3sXBrmjNK+khn5zwD0/HxLcEA+NLcxnwlJF3BOi27FTjbSicoxz8djidYUhJf2BAZsoDHIRLwczRRgbFm/scdRIk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757411994; c=relaxed/simple;
	bh=bStIp9AqdDwptvh8VjSJPwOzsaoqQvMZs5AN+ywePh8=;
	h=To:Subject:From:Message-Id:Date; b=VyPqn4eO62nYq6V8D94Ly3puqO657KrMGOhRqfuJKHcxFow3qv2r/mv9E1r4DQC3qRQeEOrXiF64j1R01393de642HgYAohoKPo2XXrXG0XaDF5eAy79y732I8ERxsOYmv7l+JN6O9MOVwd0+ZOkTdyO5l5zlDn9uyQFwTsVJvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyZJstRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyZJstRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F87C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757411993;
	bh=bStIp9AqdDwptvh8VjSJPwOzsaoqQvMZs5AN+ywePh8=;
	h=To:Subject:From:Date:From;
	b=JyZJstRDYaz9iZqXt+s8yUh3u+8/FniExiKd9kN0Gci0to3rbBBDptoGa6RXIs3O1
	 z/oG86/PuOI3fm9Te6GAGx/DZzcXdpqXobB5mHympQ/pVArgBKNaGsjd87mmNZ2gbf
	 4/0nHVJ6uq3nPUyReQ4WDM9RgF3tI4Ww63v2oe9E2uD79/XpWU+n3bffbmYbe1RJFI
	 pSTq6Tm5XbKutB8CMWqbOq9fjbf4OfApvZzNIrhidTbvDjVV7RVRCGhQvSA7yjwU1m
	 n6NqumB1IKHdktwhMuHB2Z1+1GGPJbaU0MqorT17Ii/JN39hyV6z6dhR+cbyTb7GOM
	 u82PZQ9DQo9CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BDCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741199357.8766.7327381047020946807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07267b7f606c04c9586cba255b69523e04259f1258b00cd11a8144a2656704ca
Date: Tue, 09 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757411993
