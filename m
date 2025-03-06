Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2251311AC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741302534; cv=none; b=jmsuWep0P3TEhJL3Ce/bYLI49Zpm/bDad6BFFiWpCaosjEuf8xvI9H7uZv+Js6OzfGDKOM20V8qkqUuOy3l7np930jInZnpG7tkcFGNJJq83trXgPrcryC7MHqITXTLJ9egtNk2XEKtm257+7PyM7c80M5iikJM3K30wlyGZW5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741302534; c=relaxed/simple;
	bh=C2qn/za2HutZzVRgWSlEVANugLDz3t4kPoozXfg77jQ=;
	h=To:Subject:From:Message-Id:Date; b=e1GjtIMHw4Gvmm50kAwROMEdBsYMvw58wdkD4GFJ1MfxW1ZxmXSfa/hE/LeovLOYS/maYEDDHbjbOQhRa07IQHdKwaDpDd5cAQIhebPcdbTMKbtaOCLptdW6Mtk4Z8FP5DzDib4RbXwE3YEfogEcSBHqWDCxWD0eL3d853tAkzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWT9H14H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWT9H14H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AFCC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741302533;
	bh=C2qn/za2HutZzVRgWSlEVANugLDz3t4kPoozXfg77jQ=;
	h=To:Subject:From:Date:From;
	b=oWT9H14H44odqLE29Rc4wMxqdGPxmOA71vBiHFl8zyhWZ20iVfFvbBKXSudBfIemF
	 SBBlavzEAXY5LfSENU+LFSDmzkLE91dsAlIHz/lIjXf0Wrdaxm6Wq8vLocLF2lTWWT
	 5H2Wc2fb8XaiFmUE5eM65Uj0Ee87W4oVpMtu8S48tXmO7JDafyM1LDJMWr01q5GSyP
	 OO/CYR7FTo7KeSl3Pe+HLF8+Y5ACvvbC3aAicT8tXGrLwn1i5Xxkoxh6UY22s/O4/l
	 kCXNjgjKbhyinzG355LVuLOxjUppRayj7Gw4i8L2uu9vW+ePlaZQovnBSA20c/AxJy
	 KG7xmmcYcMRhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBF3C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130253363.25290.17214644758210184036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d4104f7492632e3b3ec3f2e3fd51d17fb4cd8a9d679e93cc6bdc14d050b8e1b
Date: Thu, 06 Mar 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741302533
