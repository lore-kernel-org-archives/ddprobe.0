Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C788D28C00D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759936193; cv=none; b=b2ox0rcO9c2j6nxX+AJZQ0p7Q+Pl8d+SFHvM4Oifjwc8gcH7T6x+hm+57rqKozyaiKh78GSae3p5ZBPA5L9d/BIKxliohJxVDhvpwlv2g3eC+KP09wT3fn2PB4POiCLs9JUq59KPHT6PwJtnQV6+ODq6mabiGzLUfEWc6sRvBZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759936193; c=relaxed/simple;
	bh=PHmBd5e9dSiLuWuEGiyAX21+nTFQKxF7aGO5Ei6bdgA=;
	h=To:Subject:From:Message-Id:Date; b=CQBOJueQwZTP934VGf26AepmGlByNups7MbfgPdT2tWsGjCu3D4Er4ZNJDn17d6IzfwcCSFZE3BfO3Y9VUdkvciFiSrP9d7eQS0Yg94pTO2AMnFwRSgrHbIXWv55jUn0LKj4nweWTEoFmfMNKoXNwEuvHR5y6cOTOLLSrMpStFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd1LNJgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd1LNJgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE38C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759936193;
	bh=PHmBd5e9dSiLuWuEGiyAX21+nTFQKxF7aGO5Ei6bdgA=;
	h=To:Subject:From:Date:From;
	b=rd1LNJgHaq45xpecvy6wVVS6s6wtL7NYfSmHgK9mBvKz/tB9UVizqZQVwfxt3B6L/
	 ZZJAAqWAsUXrNhgviMGV8TSQF/h8dxrQqeW+iACCSfz5m8jol20/2atiTC+jBiRePM
	 QwTT+vOiBb5jM0Gj9xQwVwMGOyzJ9wqUXwdx4AT9yT0CH5Dj3F3FT5WaKKv7Ev5fac
	 rL6+w7+Eb1IyMS1URfVGXH90BJaxxHzHJoi2GXRnmIp7rsTjtqOLzDLfb/KkuMKPAf
	 Ija9+CDI0B6VMnSFsh+KGSs1JqxtGFJcsxKbvMAYfUa/Pbq0zgbmhSMY6KzSh0SwV0
	 p2sN7667q/2Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993619357.4162.6596940451619339525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ecf866e7b2f48a47c0996777147f188cb863fe62bdf6974cd0cc964e64d8f4
Date: Wed, 08 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759936193
