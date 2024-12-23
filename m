Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECD61C07FB
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734984954; cv=none; b=mHAMXv3UNLIscDYA5eQe3cINZvSq22vbMzJk1bN02FagEDAteBeQR9lGFfkMCqFeSvocoF3NfFo6xYQNY+1bWgqNjK+4wECsJpfKxVW8es580yh7Wrw698zLn99Zow273ZunWal0M+XqqIkcSzP45f02kBluQqy4eNtMSoW1p6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734984954; c=relaxed/simple;
	bh=qUVUuCxu2yYyY+sY/vac9MyrgvmRjNI8mZqM51EnhYA=;
	h=To:Subject:From:Message-Id:Date; b=Lwl+3sbAi4Bj26Ui/oL1hBouemxvNCmYPtWRQP8x+MA7m2dCInmBJUiEYCcfTZVIrHu/QDvzB6Va5IBEyHLEIp4JdUlj5Ocm1TNtmWJmrCKMkPfNWJ5yoURCYt+ECozRRutV8E/xcF00uWdJ3dmbQF3JtBBDPxxW5AgrCIuR56Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFCRo1h6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFCRo1h6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F7BC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734984953;
	bh=qUVUuCxu2yYyY+sY/vac9MyrgvmRjNI8mZqM51EnhYA=;
	h=To:Subject:From:Date:From;
	b=rFCRo1h6AuW4bTCLlWr0GPGurL6yV4qdIFzSEydzHrTO70h0zg/OnI4kcNT68jzSG
	 iXHwuqvTMEFsIa00iTYcaggVxBLTwYMyAVoQ8RmUwL9tuJQJ0T2AOgHCo5z06vQvba
	 sxikqMxYCS7e3wX3beS4SAziwwOW/hiF0Nl0yfkL09BDI8xe8fhgSwFFaiZaAtqcW5
	 ZoeW8TBZkt+qsNoP0NVOG+uckSy26LEqL6Z1V9bndSHaSDnQkRE/J3p9a0lQXaJslq
	 wXSpEPvN7LK6pTa3viprAymghIpm3hPvDsdGRl5XnPUbKKVkqKbi/2duXgL5Gqxfk0
	 yndbaPltjfpUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFBDE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173498495364.19072.9024236859120649127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c491196e95ec79728f822089a0f547f031837c0e5c887a65ac807d58567a96e7
Date: Mon, 23 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734984953
