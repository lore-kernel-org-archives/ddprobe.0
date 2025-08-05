Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181372777F9
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754408994; cv=none; b=jZCj2nGkWYy9Isq0CWjtdufqGPXbTTka5iJBTRklPnWv5uifPXKbJQiM2+XROhFPmazlBqaeJhB1TKElWS5aZ4YQV87iHzgWaP/0Hcd/wBQOqD3i6W15Wdp8OKms2C1TxMjRUkW+AbSFiAHT/pZNzBdyEbyV88YITSpzq4EHC8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754408994; c=relaxed/simple;
	bh=aap8sVmbAtju6quZXHsk/ewg5BT2ES3Vr01wVk2kOJM=;
	h=To:Subject:From:Message-Id:Date; b=hHA9dPga7UdsAnNAt1uMOC0fqDsGEg4nsTLAzg23bxhqnImxjs9suzYoX2MSBJ3T61V8BbztX4Kt1HvwXDmMFsWhdF7699ThR3Ul2pxK3d9XbQ8VpxhsW697A0OvrGgcfysGNRCsy0gbEEpWR1pon4vbp9SWFBKG+hxzl9udyXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLJzGwZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLJzGwZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754408993;
	bh=aap8sVmbAtju6quZXHsk/ewg5BT2ES3Vr01wVk2kOJM=;
	h=To:Subject:From:Date:From;
	b=NLJzGwZDGURvt+fpsoE0fQg5QyUfx1Z71+CeGIUeF29xtJCyG4nBmXw7veL2+cY60
	 pQo/p6oXrg379piqTREum5ZA9UsAUovGvxb5tzSuj3zFi7M9C5UCl6WuppYlK7GFUm
	 9sIuVroK9itmKHMoBm+rcDVRuRalPQ0GaWO9M+ooV6aMULZQm5uwPGRORCAkhDESLX
	 pv3f08YZuF0yuJpCvr7/XwlQmcyICjzY1YkckZbSvD4OQp85sdXcfc+DGFyBT0weyJ
	 fUt3LMQXB0+GGADl+TQ71sfkZU28HmY8LSj3fl6HNticf+F2L1M9WtvO35s13ervNw
	 fYhJqbff01tiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9CC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440899357.13295.1443524709655076773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382793cb483fb49db3be7a4b93cf37eee5393d976945a9faca6c0e6985c0f70a
Date: Tue, 05 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754408993
