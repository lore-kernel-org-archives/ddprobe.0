Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A1718A93E
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730459154; cv=none; b=fXjdlzx4A17oJ+GQKw0CKf5uitZ85L9KQdczOT9tA23TV56ZzfB4aZugKhvI1h16/OXLvRMRCjwSxALFxompQBmPn7C+LNQT2M4erBV69p63Vb+PXnV5YMlocQPZ1PcqTrfX/kZP1l4l7HQrQZN4kBb9aoF1+ZM+SgodX1imRtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730459154; c=relaxed/simple;
	bh=0n6v/6XME1d9ZGQc3yu275Kdd64Wx/qgOMXlaE3es6M=;
	h=To:Subject:From:Message-Id:Date; b=QU8dU0K88affHBHyoCVE+i5ZIv6++mCC0jFvaxoL/dEonsnP1oIN2nBTBDsDWDPQR5Meivl8Cb5ZlJoCkfBT/kCWKEWYP0y7HwSmj0Y5v3AhgBjM3o8XlVqcd5hDnsVSSkmwoXmvTq8sjk2ug0lLChU//Hpv+2Voaq84RFXzaTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEcz/5TJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEcz/5TJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9180C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730459153;
	bh=0n6v/6XME1d9ZGQc3yu275Kdd64Wx/qgOMXlaE3es6M=;
	h=To:Subject:From:Date:From;
	b=lEcz/5TJeDYmCYy7plhfC2LElxBADSk5WqxfUludE01ZFKNrTPwcgF6F4weexzuhz
	 1v+7DbXVr1GjA2JF87ROkJ/Ny5wKxslvs15B4vjQjzNYgORVok2KjvhRFh37mH4r1c
	 6m44QAnYmDeHCEKY7+JjAOunD3E1vwqgqpO7dzzJCxRckWc5SKl744dLS0M4m8FFFa
	 MTFjdW1KlcN5xMbK4SLgA+LYayiNZPQV5R4k30HJUMW1i/5+/wMt823ay7N4EDsZ2A
	 UGennXZlLVvyZBq/RQVzr2xMoEsjBvTI9XSo31Eu0RnVAs4Uexff9ZWGT0pD6e6YXt
	 x9iWHibImnu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6CE6B243
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173045915359.6904.6647100688557024699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f7638025a827e29a9d1f69bed46d22565ceb066f967a3e48a483296ae219800
Date: Fri, 01 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730459153
