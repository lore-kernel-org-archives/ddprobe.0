Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CEA17C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720313783; cv=none; b=lUU2xBjGDsNX0GFAy8tqfb6Ep+m05+eyDUSlAu4MDN14OuaOijenC80MMw9Yaz6mX3M9ld6aZHsbMG3DeODJswYMMvNWyuH8ZsxbFsmrSvQt8goAnH2SNpilxripGBVatCgtPxDoUndxZYPiJZ3Wml7nSsr8CCI4X0d47FhLwTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720313783; c=relaxed/simple;
	bh=QiShtVQK340rj0HBGT2NGBt7PU1M0/iD4p3c0jbKuFc=;
	h=To:Subject:From:Message-Id:Date; b=vE5S6UWAR9JQZHEQsRTzT0T2IDx5OMy7SiY/GWza9hoN+0jEYbd5gyg6uS/uRbbAC2qJ8KnA/gE0hIWqWmv/tgr7LFCHLSL74Epz5qq4zlreGCooCNfWFNSH3XB9ZbuajLNE1fMPb3m8VN3/rLCrpL4AMVAdHyZmcHrpOFsy7Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3TXrmyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3TXrmyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D757EC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720313782;
	bh=QiShtVQK340rj0HBGT2NGBt7PU1M0/iD4p3c0jbKuFc=;
	h=To:Subject:From:Date:From;
	b=Z3TXrmybVsEE0T4om/HP86A/Uf4lKF3WSdA0oa6s4ETTkPg2lKl2hKI1fdqlHbVgZ
	 YTk1MwwdpIT7eG6/albJOiGdk44Gxjs7+3pkM1wIMfHT113S+7Bm+dhvA3Cc9RTsID
	 XqKS5vZPCNUAGrcEgCxXulmXL8FeUENLZ1L40RqWIDlct6k3Ltsa+tpop1Oo6MTJeo
	 qpk8H3ZAXZT0Nxk8cntwFU+AJ/qIlLROEIbYyTujVL/9GHdB5UPIsyJ0kA+5VwABYb
	 gI45PnBVPAcZYZGU83vrrES7AB4vbeuvP+jgrZU7/b/UtxGBsI1Mkxsi7oP6ySb6o8
	 QZmUGQ+n5oWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB53C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031378277.25812.6027747108403402445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226a4a44446d016da4616d8bad1e2d6223ee690072d8670ee8db8bce4f095528
Date: Sun, 07 Jul 2024 00:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720313782
