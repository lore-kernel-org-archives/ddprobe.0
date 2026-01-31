Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6372EC0B2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769833434; cv=none; b=AI3u/mngfwobCb/NdXEEWpf1qXT9Q2zdepjWCxGc20IqBeiwOdrtN6MKF8THMnm8w1DLxQH0Vj7eUbXIvNVkrL/zNlDnbdWt1QOmrtfTVPFoX3LZqmFmdDDG9M/l70EnWzc4NvISl5T/Aq8r/DO1aYxi4xUYb/Qq4lxbK9VUp/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769833434; c=relaxed/simple;
	bh=zlzCBTjbWUoTBQlr55FV2nDs+zTX9sXfVDvQ3Mo3aJw=;
	h=To:Subject:From:Message-Id:Date; b=E08nq0rqw4ociR+cCFlyt/rxQ6nRN13cyPC3a+yR1oTjFVtMWM2HowXTn18vVk8rwThQt8uDNv8Zy2fKr2bHAUHTmwxO1sxslXIpS8sAVEDdqQyG9cDNrqmJUBGGHuwxlvWNpdYXwvxRNydMbqg8TCvtPAROk1jtcbvZu47Bk9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzLGX0sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzLGX0sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2D9C116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769833433;
	bh=zlzCBTjbWUoTBQlr55FV2nDs+zTX9sXfVDvQ3Mo3aJw=;
	h=To:Subject:From:Date:From;
	b=HzLGX0sfjZXkgqGRQ1MCRIVVEY+AaanBWhXXLDrSDsLw6h57kUW9OXDDyVEX4xUnT
	 mgVWYRnc0ZXkU1CXdRutdutNlC4OKR8rFpN8wjQOl7woTFVuMSaQa2Gt6IJixeh7ii
	 RosAkecqVNBp5sQMF7Q8AYeF4zS+Sm0MkTv+IT0sCMplHNbaS2kGOj4rsfOHdTtRh8
	 poWchPX6/yOsfpsPyyRPSA21UQzxUAuH1ABtV4N9wdSbfoJuU8HyQAB/+lq7JVI7VM
	 LiygNx9Hm/vJa6/3pezhAIUdmpgV5wAdK/Q3L/WBznRSOi+GOzEkr81S+d7B9pvCuL
	 KEBXtlIA/6zPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F7EE6BF13
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983343363.20993.1531158611285449929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357a4a359acebe4ebf7937cf1c6c9200d6a567959bd24ba2ff7dd1c38127882f
Date: Sat, 31 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769833433
