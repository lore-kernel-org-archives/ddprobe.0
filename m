Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42989800
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766826234; cv=none; b=rUFvGiMC67KxBisK8BNWZJTeZ3UMQC05LYDRNpRiNRTE6w+mIxHkBr3jiCeDxSxw21qTbhGOuyC3LtTgiKWWyeQUs3iJiWiapEu2AnEFYCsb1V71SnAlsCcoPOtC3zDI9v5wPLwnDjhLWYZ3J70DQq67rY2W2v20CVXl0F3frGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766826234; c=relaxed/simple;
	bh=SN7nhAx8W3beUSNHkmnLvb61sbAG74emREbembt0aG8=;
	h=To:Subject:From:Message-Id:Date; b=HbXoou7ezfW0nBKCbLCo3Bre6XsFoE9WgMVXbKJyZ4fZyqq4kM2BuwphFqk/NGRfuqnSJPJGoURc3oqiXdxf5dirEW5NRxcx6qlKuXMdsJSDuvNwaVy4RR0rbp1Lxj4gKKEM+CCTZvZIz/fW7Mr+xDmg8heKFCE1g7zp2uHsD3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcjZwogh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcjZwogh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7367C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766826233;
	bh=SN7nhAx8W3beUSNHkmnLvb61sbAG74emREbembt0aG8=;
	h=To:Subject:From:Date:From;
	b=jcjZwoghWSm/iiQAsAXREnBSFu65aUtg3D5l/K61zBJyEOOt3YsGhBU4NQgVydign
	 +Ftg+yTwAVnH8I4rgfbC/LZZc2KGtw8NmymxC2ndGoYxq69pxsZSfA85fQOeVVjU9B
	 BkiRH750nUq+Y3qLuMf+n26MsIGkl8ulD/v73PwEhb/Bowm4Bbt5BGlDOAGs17gyPF
	 TlpSlqMRrCZYk3FgfmJdpPXLehZaCxcFi6Y33ty4Gg1seEnKUtvDKNYrc/u3AAFV4L
	 KGrk0TlpLBCWI6nS5L1VCN4qWiH3NXjAwVXzZPaAWRU3Pzq2/wTr9VKQ2LskMobRj2
	 tk/GKQn322L0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CA6E8FDD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682623361.18147.16601507319725359072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190a0c7010af4250c2e6eafc838737a65113fa241fa6553459ac3f9269e296be
Date: Sat, 27 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766826233
