Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475073939DA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786463434; cv=none; b=ZcCJdf9iwK2UMCNe0kTAzfO8JQlM0t4/lqOHqVju1qY00x5I/KjUUm92MpfxJLsj7qGrvQTJN2zYjFCLXxjFFKnSDUooz9jqck/VJihjvka7zPbjRShu/gWrDIs2EpqArHvO0JaAZPaCyVAnXEqPKzkuCkriEiEi0Mfp8vqAz0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786463434; c=relaxed/simple;
	bh=yZXIlfkUoT58LtuVxoQwd56sxTzAAyWr8xixGNrSRAg=;
	h=To:Subject:From:Message-Id:Date; b=SLoEKTCj+5YSalRGGf7tB/g4CwqBALP8wEffaGtW3c+aAl/IC3Kn76cHtYtFI+qJmVW7KPx1T6HHF7R7AyL3D1+XQ7MdSSJFJCMhPeWvIQuIWkxW/3qB++JwkCFTJmX+N7kIq4UyQwsEjD6mb/LqcU5XHBoolS3dVVGR8JKXztc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDv+b4je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDv+b4je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC50AC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786463433;
	bh=yZXIlfkUoT58LtuVxoQwd56sxTzAAyWr8xixGNrSRAg=;
	h=To:Subject:From:Date:From;
	b=bDv+b4jeF/1qskpF8bfEy8FhUr3lSdm3gnj9vmJV3j+dXGbbKuvxMZQTuT7IG7fj7
	 nYSFUJ36BCrTlovdUimyVsHBcMfGFuSjBwKeQRqC4hGWdKDvBAb7ePf2EPifMRCfIW
	 Wh16R8aBHxMy/suEbs/xrMTs6BoMdEZc0aqw9vRIHCZLgYxGGPu5Khi2ng4mdtPLkT
	 ofPXcWH6R23DP75/YARHsnWa9lTCzx079VAPRd43a8NfSVV0AgpSQS9BOiJDNEop/e
	 TqupFROSsn0OpV9Y5kUBnk8yvylf18pBEvsDj/wkdFXiSbdd1oW7BCPiDXk18uADeZ
	 jVc1ORXnbf4hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA260C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646343368.25654.7324645732376084947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808b8d51cdf1664879dcf5bba3ed0921b3a4273d5c7c9b489066ae145ed6dce2
Date: Tue, 11 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786463433
