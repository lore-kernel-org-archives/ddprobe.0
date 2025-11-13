Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BD6244670
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763069994; cv=none; b=ZqgANHmkvLk/lHhBbR9Yj2yjbS7DrSW3+Ft1gSVMg3OtQAHs3IwGKhJ5ZxHhHyTyfkXFDymI5PpJi8lyH1AVManxKG5Fy7fmkKWepzv2ivc2Eu0n+llA2skq07w4Mf+Lo8n4+VippllWzWxge8aF/K0YktnaWuBvQ4smaj9UBlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763069994; c=relaxed/simple;
	bh=Bjb4hGg2S+JFcPP4T9aQBYoBLnkceORuM2TLDZe5vaI=;
	h=To:Subject:From:Message-Id:Date; b=ID0OZH9VthxIa9SEv6Udrs3pvBR7Al/4n65v8LXX1CLqH1WUPGW02OhMNtXNSCnauSJRH1DhLR/aDFbrTl+y0IvQ+gOVZrUqE7azb0VTuI5TxpR1bQA5sfiaYTeBqb+02c01IJPgwDbz+gFhUmi8WyTgk1mIQA6SXEkyy58RHqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKeaacyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKeaacyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6F2C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763069993;
	bh=Bjb4hGg2S+JFcPP4T9aQBYoBLnkceORuM2TLDZe5vaI=;
	h=To:Subject:From:Date:From;
	b=vKeaacyVJ3gCRhOxbEfEBbeiCfLV5c7ScL6c49Ak0P7ejo3LHfTpu4k0OLamrCaBg
	 3BdXZeb70Ldhptf159G3DcdSZzbGxrC5QE5xTvPoMbu6rcKo5pyKpl8RSViRSTyve8
	 TGWY+0hHASWp0V16zW9aw1u5Yb3HoOwIQdsMWp/ytIlhuyE4z64QsQzO5BVn5+hS4R
	 mBf032+4hQqqgvQpusFVnXIpvu/YR+ZVj1Ort1selG0uaNmNJSl7XifF+mLWzE/XuT
	 mkutLT1ea2ikzdPsnvryxu9S/ujp14hbBcDK3vXc3sEnNVslDEQfz3j0Q4uM3U4qGp
	 YI9JXa0pG4Pxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF7BCD98E3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306999357.10439.5862470888633301081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fa3751665c053cb4e583a2641ed6f95f92de750eba7f1bff748f83267e2f61
Date: Thu, 13 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763069993
