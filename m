Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446D418036
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718686163; cv=none; b=CUUVAo2t0fKuT+7VkNZ62EGbXfr0WbFtp5wN5xBSvxLhfTJY5biFrWyBfr74H8IFwPsHr8uiKwusvUSym3kHWNaQ1WPt0z2hpuXvM9XrzjwgWCembFpOGQOJ68Qpmoxo0LAYBPxG/Z35TmZJ4e8NFNfBMIdFm44P7i86qv7VUwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718686163; c=relaxed/simple;
	bh=mTYekl4408w5n+NaOnrQKGcLL/OC8C4g+ZE4mY9dptU=;
	h=To:Subject:From:Message-Id:Date; b=uF771blGeGb+ulB5KaevKBpHIn7yP2c3Qz0/uz+uXOwEpxDh+oH94TnWhlkcCcC0+Aw4I0veEaf6c3DEoqyGkD1we2qpTdQsfY3k7KeQJhyetKDQEiGkho08dbZ7m+2j+gTbMYE6sy0xOFJhzUn1JdtDAAZxS/MBVjbHqfV2+VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo0IBA+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo0IBA+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A98C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718686162;
	bh=mTYekl4408w5n+NaOnrQKGcLL/OC8C4g+ZE4mY9dptU=;
	h=To:Subject:From:Date:From;
	b=Oo0IBA+0sx7WHSsszwbxlyvWWrCaXQNVyXhlQBPkjs8HbHDH9V9D3DAJFikr5/X1b
	 EqrvVztzRPFx8HY9RCxDkZN8mM568TxYeb4XLuV8mpjofhXPAV5N1/BOi5n3+08CPc
	 HdzHWLlmObLCY5kq6WyussX96BJb6GpHIwXdtyBMUqKPt076QoyfMcV6wbPUsghd+i
	 g0z80uYudztgDOYSd1HiNqyb5CqCg6P5piJtEFf9Mz4bVEA+NgmgK484nv1EdV3TeE
	 97GOVTN50TyShRLP74raHPXZpIkZ76DExDRpmZN5snKHrbZqweHG4c7W2qakzFZDbH
	 DQ+aYjw2BCWhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBDFC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868616277.21968.7440492098388269441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94df93206450d4ac5424a39c427e9214d20e89b5e5dbfd0970f3ba936d541365
Date: Tue, 18 Jun 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718686162
