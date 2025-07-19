Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252C52046B3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752924594; cv=none; b=PjFxCkCvWiWLZmZ+yTyfRHoyeceJiiOnSMghfj8xFA1mRwJH4EpfYPiHPM40q7ZIy9pHQpubNtAW4H2HuIhR/NnwPTEAT/MY9eKq3Z8sPHnNLkhq/z5atgrPkRzXXLJCMyD7bW9LENIsysqdugycCVDqFmbQ3XUIWwHlyOACOts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752924594; c=relaxed/simple;
	bh=yZyAX6hveP46LaQQFB1gq4jYjsqujS0yZmnybPY1AeI=;
	h=To:Subject:From:Message-Id:Date; b=PbxwY22kX/IlsM3NSmOUN4S2Jj4Kne2g0HXuNgRoY8klzeo2Y6BanrGqU7tGsZTTKhOJ2rDMWaLSCVKQ4FzMNH7ptR7Je4YIp7VsAF6hdGGtN/OTlAd8Ymmwq2MpEiVqDkQZq3SIjJISCe69S5g3Y+jIVUOlF682NMNiRaojnRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNbA2/Tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNbA2/Tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4471C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752924593;
	bh=yZyAX6hveP46LaQQFB1gq4jYjsqujS0yZmnybPY1AeI=;
	h=To:Subject:From:Date:From;
	b=ZNbA2/TgEa5yWGswhU8AZHMG7b4uuuHDYMx7zxl2zbrZLaP5XSBdZAznJIeseFDn4
	 cBWWQTI9JybspVg4ydLxrNs/7SeMuUoiUmA+PinNutcI1Oeu6/nEPj6N6JzGa0HGb+
	 8bnbwuweXVvQQ/3tvaPMdEPuqME1PPMRNBnQOTfeOIKjzOlsKtcM61/Pjod3qOcm69
	 d/TZOqtrm+YUNjzBhT3YM4TNLd4PA/3KuOtvNPNX/MqAowplqGJEal2NSjYC25kLfo
	 0EHqwLWegfNPXFyAcYaTumOlwTybVtDGcjPaGjKayNQk1/30a72HvNq8+CmYJJj+mj
	 99yOupXqRTXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EAC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292459357.28067.7991322745922791912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557888f29ddbf4e7f12229432bfce87904f6b8009b481b1ab8562ae63d5869a8
Date: Sat, 19 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752924593
