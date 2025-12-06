Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247ED7640E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765023174; cv=none; b=FSjn+znXQAG52zyn4UyjZc8kBc9QnplDvN4Z8VIrUo9sRLNp/Yho0mLVlr6xHev/N97Pra9TewqSSBSLDMQt9mKa7KlRC6JM/fikU7mdyJB2ZQ+csmDrXo6WtTDho/EzP55iECIEM8/h68XY2a6WAB4GRyf0FnEqv25hgQ+Oefw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765023174; c=relaxed/simple;
	bh=EOXGqlq2/4J2Gcg74nipKOpPLYzp21jMxwgamR7kom0=;
	h=To:Subject:From:Message-Id:Date; b=oG7v0goIkIcWTlcNlKfYXsUyWux/eS4OxOc4d0Bqom3Z8C2Ep9myH6N6Et0DjBn0HCfEawRWqa+UgiQ6hQ+QkAuTxK3U6vPrg+3jdB6sVT0ZLr1irbPXKRKLsvnZZbd+rYWxkeinCJg1wu4KgM8vVvOdAg7MRy44cmRQdh1Js4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nR3mCNHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nR3mCNHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A439CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765023173;
	bh=EOXGqlq2/4J2Gcg74nipKOpPLYzp21jMxwgamR7kom0=;
	h=To:Subject:From:Date:From;
	b=nR3mCNHdF5uM6JYtmid+hyasG1QbEjVKuIDgS03ytDYrgSaKbMZr+6mWhO6nmksht
	 zEPqiQ++FRq+ZxAn3/GtKDvr0LC0nXcrn29byrmscKcHDSXBIqRnORHd0JXEqozFJK
	 +zMh04UPkYimK/DXOuc08EYFJSVoVDLLKLZODEOKexgs2AJtf4iSJaWfLv8EFHC0D6
	 nAMSx6QujgJP7sKd9xML89GjKk7TlblOSWuGXlMUJ+MnjZcmT2HuIsqNHhdE30/BN8
	 7jsekpI/QqNSbM5C7AgPxdGmgtagC6GgRKRl+bU3EXpSyhJNSL4wYJZC7mtM12wYhW
	 G+40GGM83ghug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9042CD3B7D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502317358.18850.10635907573207516557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f35534fe858fe083a5e0b54c30a0c4633176f6157444e17ac5759f767c4a8aa
Date: Sat, 06 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765023173
