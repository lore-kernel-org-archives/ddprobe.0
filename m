Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410D3610D
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747034994; cv=none; b=SiDEtWYyIE1GFavlE0JtLCr3cW2H5v+ptj82H4VBI7S8IL98Rc/aOxGsMVnL8wE2wVQHpRGctPVyFTqC5b+Eh7PcgkaGthcQdrJGhnQ/9a/QvxWbK14RCS9Lrzr222phkBcaNgpb6clEs3m5xDY4vu7vg8l3jV+3CMAnCbLb5B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747034994; c=relaxed/simple;
	bh=MIZXGgfiAbrSSUiSb3TORWXYvWaTcp3ScCJZDoz0SSU=;
	h=To:Subject:From:Message-Id:Date; b=h/omQ091XzSGVj3z49MLjUHei3SKn15IvfXbkfgyLLoUlDxqIInxZUVFDAxNlr3CwfCT2NIhnmACSNyreMem0HLGnK/ZEtq/2HLeBI03qm13AqqO/Dukj9OvNS9a6a2Kfb5WG3z2MmFowcX+BYX8+MbYNE7KTEGcDpGX2sleIQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkX/upai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkX/upai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0216C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747034993;
	bh=MIZXGgfiAbrSSUiSb3TORWXYvWaTcp3ScCJZDoz0SSU=;
	h=To:Subject:From:Date:From;
	b=AkX/upaiUBc6AFp9YQIq5XI8ulrRCYGrXQusDXBUp1JcVCno5ler3HiHtNaw8uTjF
	 73GIxGaDQSFGw7tbp8EIKdmAlPDtDFKUhWqQ60TwCc4cYlwTsfBFnU6zcdWFC3+AlD
	 AHbQ8KjxIuCq1Eyn2baqXBzxxPe3yTDz+iPPIO35z55qIQ0W84SgxUEo2R7eUmtc4H
	 IGsVaj1zNK13+lMacUUlxdiqSFVcke8REhk4DN8f/gPsLv/30/QDBpcH2HUQvSKLO8
	 V2Bc6V7ZUEj4FebphkT+mqFKVRIWiY90pRGfqAm6lUw4UGI6SuO/18CRNQ2pcH8uXs
	 g33SLjH3KZwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F852C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703499357.30093.1041502975920558651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86100b0e1014f5e0699ba35858e2ef8a11fb2b0ef35da7ccda1ed5f87143250
Date: Mon, 12 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747034993
