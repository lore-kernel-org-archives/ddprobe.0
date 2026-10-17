Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555F13D5C06
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792227034; cv=none; b=mh+RWcbgtOziRcKXf9Ii/3vAD+J6XsZ9jzO3zNC7YRKiByFRMeg2+TLKiWhVLfLkP2HLWVNBgNIkupVAk43/Gzst41YdXCJexmq2DKlYFjntcsK+CwdiV2T7lDlGHMrm5+5bB8D9CfMYxJU6g1a5QifG7zZeEkLpLD0lEgpQpho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792227034; c=relaxed/simple;
	bh=mWFwy30iNsRPSZu4f3Ocpq5dHC1jqqraj7E3dJmWJlU=;
	h=To:Subject:From:Message-Id:Date; b=qtEKZKzLEWbP1EtZiuIg/x0hsE8sHFaQ3V8iVZsWYQzyig+9b2vfFdJuiLR5rmjiNF7Oez608S7XNMqa74OVuEPU6NIeaOnrisimjPhqRbEAEQjQRtYtC3L/siIgPZymqHalKSkVXWJ5p1xgD+QmQuya0AXPeKlbdAnCfjoJYOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaHgURpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaHgURpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1248C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792227033;
	bh=mWFwy30iNsRPSZu4f3Ocpq5dHC1jqqraj7E3dJmWJlU=;
	h=To:Subject:From:Date:From;
	b=oaHgURpTi3qkpzq8c3c7iaIsda74iHtcggRGUM58w5KShkBhiv+l0EYYDfIOdv6XB
	 lP8AEffY72+l5zIxa0hubFxU0Y8LXjD+OHv0SS2Uk90gB5sL7w9mpGlUXzHiTXa5iy
	 4nicSjoOhhThBlNkGagfFAD6DbhmQ+GV+n0KpnViATiH6g8J+/84hYy/30Er3Evie/
	 yITvVuy3v34jaZ727r99RxGUg6p5uddHp0AQcg2GmizuI4jotZ/B5+Od2yTVwexOOg
	 EJiVq9YhFsf5BVB2kDbjRFwXIPN/EvdA2XJ5ChRDOdocMtMlnm+TFLYGPnNeVJMaoG
	 e1QxvZusztRzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21ACCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222703368.26736.17726486294756827405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f89b2f245c4e99e45274a0884484b26d0425102229a4c5b1a2ee7bdf397d7d
Date: Sat, 17 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792227033
