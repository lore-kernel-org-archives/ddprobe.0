Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4460E1A3178
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744861194; cv=none; b=S/fUjmWCidurAw3vV8voeZApkDnleM7aLpwQl/3DgadBjD4GTpn14Ryiyz2nda2pgVlqk7jjf8xP0sP5z5Vs0F9ObFKY5iBeFASDh5gAYHU+IZMvJKADrg/TY5ph1k6X/GeYc/LNnxMTYPCPR9OBs78hxPFEmP4Krbpqmn+l2Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744861194; c=relaxed/simple;
	bh=pEfro2iGlg/Aix4bjUjWIqOmMnLSI20snWFvz1nbyvo=;
	h=To:Subject:From:Message-Id:Date; b=mng1F/rcbUBRNkrtvqjxJwtmkTT2tfMi3Pvj7Pqf1jmTieCnRp2gRjRwHIR3YdgPU9AFPEBwK2DBWH3kCGPk7G8LbmwTCU4WyMuD/Xgddhn8w6RoMiHJ9rzubL50COuTr4PnWkEHNq3rXq5uO3FlChqENdlpLKa8iPr685eY7Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KifE4MO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KifE4MO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2414C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744861193;
	bh=pEfro2iGlg/Aix4bjUjWIqOmMnLSI20snWFvz1nbyvo=;
	h=To:Subject:From:Date:From;
	b=KifE4MO/pwIw378lJ4QGTfwiXR8HVde9UUm0AREtgRNoeYD2J3L5mO7byGUQo6VBp
	 DUdiDxo0XGGZSsldcojAUp3aimuqlhi78B8YQxVaStYZkh7QLEcD+sOTf8/JvZq+A4
	 7rhYuogLgItj+m7M9mnDbt3HzW08nkg94fuAd7JJESibR2MfAmIrctrWPUEjnuGb9H
	 lyi73DGevLhGjpESP97VQKxWAfiBS3QkIKaj5K7G1QKWaVKwsCJJf8PDlRZwHVTM73
	 bHoV/NnAdqQhnfgbUgenrXTtmfwzLjBqRHz5e6PmH014xuapREPNYs0UphWKfD80d7
	 jwa57Bts2L8aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B302C369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486119362.4076.17446484468473830909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4421c90c20468a26a94d1f8b1e1aa17677f51f7bcb910a5fb6aa1e009aa81fde
Date: Thu, 17 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744861193
