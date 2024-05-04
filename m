Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518EE5EE67
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714850543; cv=none; b=uxNYcxKaj1R5SP1buP1jV3MSHqz8zQTM6ESSYpikh5g2FRgMd/Koja9iKcKuoOwyzX7fKcY20C3xlAkXynwuXSZ6A0BgFokpUDK0nJR+qJMvyjFFiA7oRrWabFLz3ZoYJ3By0TS79NaL3v6rDgHIc3EJkSTiZXnILvqKN3AIarI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714850543; c=relaxed/simple;
	bh=uBVQH2wKcb5dvZ7MANwT/X8+Ak46dc14X2FFiH8J46s=;
	h=To:Subject:From:Message-Id:Date; b=VSrjQFG5SHcjizEUYsWQ8/Qqhu3b+8WatgCzDvffwOhU4w++2znqvQO0khOH6Zb8Wnhb9AYP4w9ce/Mj3mPiA67UDvmYWU3NWj68Ga8CmsaKOewAuFF1aXG0amHsH0Z8EPnyZOc9kEvFK8j38MXIy/L/YZPnVifsisMZ0f25LSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG2SC0P2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG2SC0P2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB59AC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714850542;
	bh=uBVQH2wKcb5dvZ7MANwT/X8+Ak46dc14X2FFiH8J46s=;
	h=To:Subject:From:Date:From;
	b=nG2SC0P21OWXPeF9rwcENg5+draDIAfOLXLYZy2ro7X44CLugMwyPJ/Hme5puUv4f
	 9be8+ft2O065Bw93RBHhOkMZl5BO3Y+9A3VXMPheK96R9hfDjQTdc8GD4lf/5X5L3L
	 jb6EBcTW/UkjahSCiACJPJ4gsK4Sl4a4ivqSymMTNsOwuMerFpWFLWkDmohbnwkcm9
	 NZrIlRofaVDK/Xn4nheUQGRGPNmryy/LlTuXGcWTxYtgwUouff9ZVPhqTCwO45QUQG
	 ktj11tjVvbelKU/HukHG8oYj7zhhMhdKIMsC3FbCTu2QGCTC9Xh+jp8ESJAHd4iG3q
	 AGJ8xrd0eewHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4783C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485054278.12161.13134351918740120865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458e966bbc12e08fcde11e8729e415415ff30422c973806312eb15967834850e
Date: Sat, 04 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714850542
