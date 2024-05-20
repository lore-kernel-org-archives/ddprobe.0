Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F954F5FE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716206543; cv=none; b=oG4vZNiX/pHwjfR8jwyGKudHuGVHPha8gDnV2diO6/7m6aoIqbnXDLzdpopD2VxyJAXiCT/1NAKKuL6Uwicx1yDxxRjFaXvehHImdMIf1rLSJvNkUf/TYXIDIohCskEIaFiCHr42Oa+6FyYKUEHwNIfUCXAYp+dHhVHr1aMAfnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716206543; c=relaxed/simple;
	bh=F4zaFMWOUhYTKKKLvChG6DpNmfTdG15h3TpYZjeHEng=;
	h=To:Subject:From:Message-Id:Date; b=IWFCEXEwz3R6UY2T6VDXar7KXgKJzhUaNckdZuYqkLtQGaMqg0oW+FNaSka+JdgQWyJ2uQpU7gpb3sDOl0agbtFzIESGkbA3l3JXUlb+yKJUXTOChma235K+VK4XIJpo2U1soP/6L0+Sh9piR62zjwA/8cAEsidVJrJd1H9rRzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ0SL1tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ0SL1tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6EDC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716206542;
	bh=F4zaFMWOUhYTKKKLvChG6DpNmfTdG15h3TpYZjeHEng=;
	h=To:Subject:From:Date:From;
	b=EQ0SL1tks1i5Pswm+Iph1hjHdapEn1y/ldf/agDIsqsjz1b2IoSmb5RDpvYmavnGZ
	 k0QRtoCx3oOTiUh3kCAOSC27S6poIeGmKHz4o50431mE93CE71lEFcj0N2cGtI/hTT
	 IwOAtipuGSpxqzTrx8puOv0pTIiE+JJyK+ck8axExyEISEA0dD0pE+IfNtwbdoNmw2
	 aEw9bTMs/k+0Va36j5ptGUVv6x6+/ZAGDqPQK8JBOwUWXvSNExNIr7PRJNlwJP+STF
	 9T9hUVrr+BFeMvWFHoqB6mv5I1YljP+B7A/iLWasDjyDkC+LInOlN9fZtpcoca3bVA
	 JWBHBvl8ongig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4039C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620654279.5696.17502471885902637735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7ea4fa4d7c397e92172a9634658a216a0120dfece021f7b07e82536f18383b
Date: Mon, 20 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716206542
