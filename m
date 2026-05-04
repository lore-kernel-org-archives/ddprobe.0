Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947AB3806D1
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777934854; cv=none; b=ne4sfpgjHgS4aOQNK0EA6HR+GlsU2VJTlWbmbTCH71zNPfNV5RU5RA7Z2pMdJTK/wjOd2BllYXUCu6HoqBiauvqmFW7onwBHlYkAhMufuv+XhlUiKksuNxBdgD4JsL7zkmiSeEiM8srlUlIJ088DBZLEetDLE/rg4EY6+29h04E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777934854; c=relaxed/simple;
	bh=2vjJxS6OPWIDpQ+gFFya5p08ImXdQUml8Em24A+Cqoc=;
	h=To:Subject:From:Message-Id:Date; b=sItz4fjjWqPot0/87yEQ6xOzjBfToH3BZuQYuiuoHosxf3kFpRcgi6S1Mm7e00YIoARGz5RGEEPLNldWAuQNfjrcxLVWEt3tlZPNUYfCne/Qro9oRblCN0TtN36S5p/dP/vkC9T2EZb+9MfgqEI1D8mVy2ZsOQjDAAk3OCXg8wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIB9awAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIB9awAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AA8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777934853;
	bh=2vjJxS6OPWIDpQ+gFFya5p08ImXdQUml8Em24A+Cqoc=;
	h=To:Subject:From:Date:From;
	b=WIB9awAeaJdqSUVLyFHambvdr4ufZXLlyGA1apBzY8egGpcqEjLyPuoDj/1WnYDHf
	 0UTr0vWglYAYRF49tPEf1ReJoeVKfy0w8Dk2PSpwKqSNwj0LhGkj+hv5DdQiUFaADG
	 CmHeJ9TKtlcA3AD2Rtylz4wJ9PhbM6LW+SrZicvcHZ6iXaQ7FdYL7ou5jRX/50sCJ9
	 zZTBfSoNxjLTEtUS/p3b7nydDlOFiNx3JWwLMRk1PCp38qbjssEgrw51BFtNv/kC4Z
	 ySmPBfz7VBWvpPAtsohP9AIvQSH2V9d8u5q/Mvl8rMoLmu6wCzDFcqXrsZOtikxWe2
	 ctEu9XWxdBGnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1216FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793485369.21322.12742268774733873684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde5ca108c4f18361993fdfee089be514f171d383f2d4d14976a13bd73b069df
Date: Mon, 04 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777934853
