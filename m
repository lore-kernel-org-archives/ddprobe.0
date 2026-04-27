Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A2230E84F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777291654; cv=none; b=RZIM8QbrMq++EQflSA+9NngWU/5BgDi2m2PQMUYIpEU5Hoy5BLcutyVS9Mr20ZDHgwRReM4hAm4OYCUbMZBkl8cxTbZpgbnl/pDvSnDCv2u7hbI0Jgu5Me7a9+wf1krxXkEJGVRl73ePCcioHLd8Vb1LJSxNac3o60q0dvK76w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777291654; c=relaxed/simple;
	bh=jemIpW0N0LbVgaDJJVPGrUPfHWQkqog1UhR1QDDRYs8=;
	h=To:Subject:From:Message-Id:Date; b=OlYRizafALeci7O8Xgm8sFbM7fZD2DXveA4FkWlt1EgGOLCeYEmCul4eekQl5E2Sajq+KHkplMXXMGlAzrfrHCNJXnaitv0aesRUBaDwvGq4/y22ve04UiO0AQI9VPeU7M5frZfBW6zc/mx62BTxLuRofJwGYASY8WEacQndLBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E39nn6/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E39nn6/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3C0C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777291653;
	bh=jemIpW0N0LbVgaDJJVPGrUPfHWQkqog1UhR1QDDRYs8=;
	h=To:Subject:From:Date:From;
	b=E39nn6/pQeYZXTcMM2E1jyqsVwYDbizrVeApDT6zcSc8O/0MpFxgt/YFuHIYgHvfo
	 XL4/vCMjlIOvL1fObSxPT51+l4pbW4AfNjOwWt+WhXZwsMyy7vEUQeAVPWt5xjvcdp
	 mOagbsJ1YGB2DBGdCMI+CdyZz6YESwzAHFY6M8InePU5yEHvhAOi/yHSzvjd0AgKV0
	 fD/Sf7WXJyJrRmZ3QB//Ue9xjcwtgP9373bt6gDO09XeeZLdRcwcRkcNknSjhUwUit
	 PsIxgb90AzhC2jYAarNjq658T6IR+YW3CM8/PyzWqNz+EhoznfeNqjWJ2JVg8HPD5A
	 apKROyIIVViUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE21FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729165368.11982.14571328775479037347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d409ebff9ed107a453786609404f5775d6119c673b071fa2eb5efdc83cd74a
Date: Mon, 27 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777291653
