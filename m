Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7532EF649
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755770994; cv=none; b=f1e0iW3FannPZPK9okMoG/qFVKTHIPp4RGq8fy/AYF703Zo0nBBcqY3CqI59PTk6K401xmYQyqTIx2GNc3U2WNL7Os4+aGWX/59Gu07Kv0c578EBobGuYF1QgudMQxVJtHB7M37Q18QCsuRpbvEd4CU7TwNEhktVcivO3ki+eEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755770994; c=relaxed/simple;
	bh=VgOSWu9RYNUJHIObXqXceOcvztqioZXwqFXhkwXUQAA=;
	h=To:Subject:From:Message-Id:Date; b=YhOIiuHV0fvBKUrJ2J1BoSCPZ88RtTtiiPk7tTIuTbc8/t9CxInUNTPuaJeUeacx7IPXZW+5dr5Pkm4ihZ9rwEF3SvQxafs0BI29TVqUpZJL8C4funjndx0zf/8qW6+vFB7Cpev1n7GufmWCIEaDvYQ9c5UKuXICgnb6TVCIc5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWo2iHs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWo2iHs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4231C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755770993;
	bh=VgOSWu9RYNUJHIObXqXceOcvztqioZXwqFXhkwXUQAA=;
	h=To:Subject:From:Date:From;
	b=PWo2iHs1R4lIhwRNsjQifQOMOTTs6QSVtyV5PX4Vjf65qC3jT00W7w1i7F1dDHwWg
	 jckvzTOU7Cj44e6Jgdv0vOiXKd9QRV50j68aK5TE0Yrcj5LfJehHyKQ5VRYf3DP5rU
	 pFBp6qBkvSV+CqceLT6M3uDmXu4o8pwu7ZJRBdl15gy7N3m1L45AHxVP/VGKtntSHt
	 XPda+XA9xlppASNIovgxz6TJDNsA+8Hx5wGJGDUCGY2woE4aY/vmgpfE1VZtEXere/
	 CJPtadkH1qAN313OoJ53+tOochTfVdSUwFBacUSQPYCggL8Ntr1EfgztXfymaMSc+l
	 Ai0Tg12755z+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067CCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577099358.16085.17142152405361861193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d834cf2fb4e7a5430f5d62228b17c7ca4ea50fbde17117eca855f13a564f11
Date: Thu, 21 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755770993
