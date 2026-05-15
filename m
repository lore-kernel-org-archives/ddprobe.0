Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D77346E72
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778887234; cv=none; b=uf9CgCyWErP7C84oAKJliVNG+UI5RVfmqSHDLeTkbrxLG+u+NNkHFkP9ZxpMbuqilO5MxlvXxPD2bgI6xCP+MJ2JUbQJ+vhr5F+//LDy0Wc3/tS50zMWRZIa3eIgP/iVGx0Dhq9dEtujUA/3mJDZKSDqN/y9272JuWODJYFdX/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778887234; c=relaxed/simple;
	bh=RGBYt1IYsW1AL+2PFLa/GS75Z1JWrAHzFpUWzqEY0/4=;
	h=To:Subject:From:Message-Id:Date; b=HzZSrAN92khADvN5brUIRKJVXRgyNImriZT9Zrv5RphyiTSfvNQr0wVwSskG1mRWcLKwUicGNusHlZZa5xKxKmppJ7CMPGqdJTvIJ9jqoNs1zdmxgpxzm2fXGynhwewaQiSMvYfQA55bc4Bg8MohukLqb64UAhPHVBmANr7VkPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVLnOc/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVLnOc/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9DAC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778887233;
	bh=RGBYt1IYsW1AL+2PFLa/GS75Z1JWrAHzFpUWzqEY0/4=;
	h=To:Subject:From:Date:From;
	b=bVLnOc/o4VddN7IVtygTNnZqx35ShiRIN+QheKO2loRMI6h1KxVB05aMZxFHDrZZN
	 TaCBlCqCx99rzY6R2nrM8X0Tc4irMvOwmvbP7HV4+qllzYmnhlqt+aLkUhmVKCdLGE
	 c3/j1F5R7SjZAGBZPLCO89FV8oF5hVjnP3ViAnKUYMHUSFq8thWW2B7con10gjDm1K
	 whhiIijniK97U6WDtF0/x0tUX2Zs6GQsYCfBOW91vHofUJNVan8lfKFuaNrVKlRbc/
	 WieG1lj0Z4o3zUF9pMlyncs3Rc+7tfpmwbPbG2isfoGAkomx1z9ihDhfuaURzYQ2OM
	 xscNwp/NyZ+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB984CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888723369.17325.2040572557666038130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4263866f9d0273214340dde63236f1c93973099dd699692040f27e2c9ef7834
Date: Fri, 15 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778887233
