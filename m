Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC35280A46
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746539394; cv=none; b=BMz9HXc/FGYJfOpYYviqpEoqEidvufhHtAFOvgv8HaGPVvFddUZQrBQHvvshbIf3QvXvG4xfl9BaEPJztKj46oMbWEqToAVA46wn8hb7GNJf3yg2NqR3F7lbcQQwEnBnrslbn+QYOnWUHVt79Q9Gld0NGpGTc835iOyI/kcR+Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746539394; c=relaxed/simple;
	bh=yV6LzP9YiYSa8kUdkhhpIr+qapUe/lYySbDigesjaX8=;
	h=To:Subject:From:Message-Id:Date; b=cVzJnPBtAg5MiSMKjrig710i6lqMOBoPgh3esJ1inmrCehlYXMbLBjYMUv3T2zkYYZ/SjEYrtFJco7CcMriEM/X3XZbeD9ltYq2hAoXL7NZ3hWOMEqT6yQCPBQbMVc/Dg/SWayl8kFWZRIIzO8hUMmPtrmZv8an4i8MFkClhOoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBRoQ/2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBRoQ/2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E945C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746539393;
	bh=yV6LzP9YiYSa8kUdkhhpIr+qapUe/lYySbDigesjaX8=;
	h=To:Subject:From:Date:From;
	b=PBRoQ/2JEAYk5b++QMhAwELQrfwVVxve8iI8u2tOIwtQpy3euBmQtnRCpSWfyw5a4
	 OsdJzAwfgCGJY34PiZreUUG473Apu/K4o8awVw9sslvr5hqNiPvZ3s/1MpeMxinShd
	 o3+FHZWRWfmHdoiiX0FwbEXwmVSrebK3+579RsfrXhCsX6Ro0zimTWCmDzXsi1wRm8
	 DbQJ36XXG7bRNB1HVeRJheSdKDAZbrQLN2rnP+pnWlddaGJG19ylMd+3slxcP1ewJa
	 PTRMqv25G29kSvTLqa0ilfPVOi+UYyypaptzDta1oRdqoUvPznc2TIObOybHVgG9Sy
	 7rfgkfWuVlm9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A9C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653939358.20810.6666424584048577734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657a03f721abd677d7aeacf2f0e8ca12ffb4a8805e1af4dc687658fe54b6db1d
Date: Tue, 06 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746539393
