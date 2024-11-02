Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F275216DED2
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730550354; cv=none; b=sGarkawABVEp9Nt1/mIM/CnSxHtFMjscCSGzzceiSeXKRtEl/7lB9nDIbGTQl7oZepg9V/kLWsmuBEQMhqgyIxME6Pu7L+mnP378dkZDqoH05vW5RyT/5zACn/RzZPrCppI8qkjAErGlnAIftnhpaAv8+4e3/bVnN5LTjgC/mIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730550354; c=relaxed/simple;
	bh=OMpMpsE+5C42TuuLaJRPVbRCq0x0kBapr07yYuDOhwI=;
	h=To:Subject:From:Message-Id:Date; b=Gjht22VMdfe2skk4FBDtHocLlRWrz9bDW0U3rU3nfl3NOaKoymArLY6LSBeuGEBK8RjTTAYqbej1etTfEkG6UZCK/HsLMu5MD5d0zxYikflzclzvcWzJ+aghxfZDwGr6RCTjPMrE4Td+cUNhwGa54/gDrC1KlP1WnDhCvZyspDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ5ptpCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ5ptpCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C807EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730550353;
	bh=OMpMpsE+5C42TuuLaJRPVbRCq0x0kBapr07yYuDOhwI=;
	h=To:Subject:From:Date:From;
	b=TQ5ptpCPXt2xfvvxYOpb/DZ4u79+pXivifB0Tf9bFa9eHyCrVtcr4/XGYvOQSd9uw
	 W5sDGDXORtAmxTzgeXIgoN69sxEeKf0TPvDJ5MQ2pYt0oZPZQ4BZlhIRdeFTUarzPl
	 +mmzH5ghJIP7WCC+3HY6Cp6Ka/wpScmgtjtSeitCIOjr8E/e/7Qf3hQeFHk2BgVSbs
	 v8asvfU++Z+f4CcXPY2DMw30i1uavR7Dr2DnckeLVTL42qNBJtleYy5xEkTQvfD6bs
	 4cUfdl+rCcwdl4C6xsF1Gny6VSLi0mxGGR3LUPYE8kgIr+V8itjiUI98FGepH2+o44
	 E/qCBWbd5jOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19A9E677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055035367.30439.14565155466283320003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b11183db919dcc72729a7340ab59cde8e1b1c098661f68401e234e099d0062
Date: Sat, 02 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730550353
