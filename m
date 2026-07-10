Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B253A48C2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783715314; cv=none; b=awYMx4h0g+oPHANuZ/eBQ6CXEf85fmDzXsNj06IonQqO4NMQERuqevBXJ4Q1cbDWtIQSC/i09eXRjFEId4aMsZx9zspSqITJV2YDCMTFRt9zNsNa5ukEG7VgDaYSLfXT2T3mBIFALai+Cws91zZru5ltN3QdcYHojqU2JEnOmQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783715314; c=relaxed/simple;
	bh=3rFcwNYuEEE98SjueT+fsE0Yp5mAp8+h1RrQmxSDYYU=;
	h=To:Subject:From:Message-Id:Date; b=EKc571BPSeGBGJKxpaahkY5uzDX7wc37xAmKj2xNmjNY/IUTsjaY2G4wdW6m7G2v+N30qLaGSpeq76nj2W9W48nrqF6dS93e2Jr+XPp0COollp/q73nHN0VGMIaF+Y1B64Su979iEeSuKRQa4xb/6+vn0mfyJTCZb//Busn2gJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddzFgBNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddzFgBNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3CAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783715313;
	bh=3rFcwNYuEEE98SjueT+fsE0Yp5mAp8+h1RrQmxSDYYU=;
	h=To:Subject:From:Date:From;
	b=ddzFgBNIj0wAnv5Rp2wJng7M9l92+/U5OgCae57WUVByG0iGsrokuI724i3WsKV7S
	 RlbZjZc+xrqQKXy89AWHMV6OCeaz26q+HlnXz1J9ce4vpeyUq27pAuHMrpI2LP/IAA
	 iZ6d3VEqPhOn6uvP9J1Efsjaeeb+QevV5w/z0MTp9rX36MU+gtdRVsZzj+KXREDz6R
	 J/0wZaCWoPYEwmkgk4H8jC6a3d3YTmV2APVuNenns1mT736Wk4snLrl1w5hTChaiIX
	 JJ6QsL6BiGxUE6KZzBx7YeBZ0elPYTZWsmyT9c4lfVx6NNJoNlsGjR+6AqmSvvMShS
	 VdBsideOjtj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC176C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371531369.22238.16724993840912778369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba8b5c37779e4a0441dae60d40c7316e4cebf52b4ebd3cbde3266d64db3bde2
Date: Fri, 10 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783715313
