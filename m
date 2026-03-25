Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18562317173
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774431294; cv=none; b=dl65LIfA99qx3JHgDWK4CgW6JwovGcPlOH2+SqojfgKj+eDaE5SueSRdZLWVETALGhMlaGOJ2Nt7tJTOc9caeZqtHDz8hoMjeT9bDNoZG574h/MlwUTzMrVUP9J3fTw0xj5a+18Y99qfF9lZeXci0ps9cKbYuWhc3oLOBJ+Df64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774431294; c=relaxed/simple;
	bh=hyHHsBREQ9e33OWyLTaNsOdy+KqphHTBbLyYIBik/AA=;
	h=To:Subject:From:Message-Id:Date; b=HWhRfGo+H6KfraqPamQ0wD8+6V6L3Sw/6pvAGNkCLPtQHMwd5TObaxpij47KzUIuyNaZGkVhHp5SX9MKqPt1UE/ppYvisp/dlkgo00Ru9JNwIWdH2SMOPzUFKCNL47ReGiJWZIPPfeyCPNsJmi3eV5ISUCBntraKTITzHu6oW1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYOaeR4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYOaeR4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC31EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774431293;
	bh=hyHHsBREQ9e33OWyLTaNsOdy+KqphHTBbLyYIBik/AA=;
	h=To:Subject:From:Date:From;
	b=rYOaeR4XDULA+Gz6U6pSahnWIpz4VJ76UAnO9FxvLW1jirR7sw30vjnKwD2tRSWPN
	 Spg9LbtF8jPWlzy/xqUlzDFfi+c+7e97I8g3fDJDn3MXMx+MSNerAbn1DWVyZGQybh
	 GVJhRMQeqwUhVRUk7oPbkx/Rc0g+S5toSn6VskmhnNaetopOtYBGN9Usfz1PC/P0LQ
	 bf4nBVYPSvPywu9TUncR52hK5Zzb/SWECsJa/3CqFoxUWo/+K2VLr5K/9BaCIohQPE
	 oY7XwiYUOqg+hiuV6e+dts056Ki4qmPDou0agHmoR5rkGykaudPXxGEb1Y80HiOM/4
	 1jB9gm04me8wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDEFEA83B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443129360.22095.14870857275944344425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21aaff83503998f9960f4615ed92952eeed8db512f8fa4ea0a01af47185d360b
Date: Wed, 25 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774431293
