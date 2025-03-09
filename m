Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FCA1CAA8E
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741535334; cv=none; b=SZmTL59O8wRUS1bIaWfpgu1QI9bLLMGrESB4gvD/Gwt0JoRBoZmTQKwVxSQQ2jPUfvkLr4o9FEjP6l4VCYViMlp8ntSB5XZJ1TpWhL6sWyKxYUQwaHK5BF15q3u+fRAbYywWzdD8nbh2mn6ELILCDUuZQSVM2DzyIYrotTBw8UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741535334; c=relaxed/simple;
	bh=Bl0u/2p8nPHfbz6gI15JwUu2toQV/H43kCJaWeoFYdQ=;
	h=To:Subject:From:Message-Id:Date; b=QpGKw8Qha7M56d8eW1YzJtsR3BMOqCT56EvUFR/il4+wjjO90tm2GpichyMIfhesPRfFy/0/AsTeaPV19+ZjX3pNnmpsVVi+5mdu2gF2e39RLAw+5FzHXPWxsde4+5ZF6tGytabd54dF+KSneS8RKzcd7hmwMTFvOYzkOQ1QYYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8Zo+EAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8Zo+EAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C470BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741535333;
	bh=Bl0u/2p8nPHfbz6gI15JwUu2toQV/H43kCJaWeoFYdQ=;
	h=To:Subject:From:Date:From;
	b=F8Zo+EAzYGQNLsEk8Htai7Mp+BYsCEpeJweYLGoquSaLL1LRmSqNjb4TPScs1mbRa
	 QHja18ZhovBHMej4YxQqRPNnP6qrR7vqRhNQjfBrjJ83hwyHFBxsJ01RQoa7+2wgpY
	 FIKoynHqVRVfQbPC/G2ZCu4rFviWf4pMFYsHBWZru73N93jjIOAcgcyC3mbjzhXIsD
	 dufmtbPTauHUujG64SLV9wSZbNXC6ykV8KduXRG4ogEg2IFzVmifFAybEQEAy3oFaN
	 wFGGBOoa+idtIrzh7EaXEjD65Qy8MUf6nHds5Snk+EYbSesizscqO/YykmyEWsXDCG
	 qVWRTEPObgbhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA087C28B30
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153533368.11040.13922085108427824154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16b1b746009cf4ca5b1b641c3c24ab7bda168ee23425afc97758d0d791136f1
Date: Sun, 09 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741535333
