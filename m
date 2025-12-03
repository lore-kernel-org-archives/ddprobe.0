Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3C28B3E2
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764759774; cv=none; b=hdJWJyoV6Yu148Qc81L1Rq7+94U/+B9Lxo5W9fabTpLCq1BujoUgSyrZNabZB46TeM3mQGPhVrXwn5qv3CcYGQ1zrFZWUKRgeYh3rSgc53yC2pMVvGbjWMGgtOZYMnGqAuwC+Rs//Z+1xKJyVpIPST3hb7ZEL4FYq32W7O9h5rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764759774; c=relaxed/simple;
	bh=Rp3qHuaRfXhEzv8vNf0VlAK36gCDQJcHZXPM9dN4brM=;
	h=To:Subject:From:Message-Id:Date; b=DIL6CN3ghYb+08+NRm9cTJi0wrGC6Lfw+XqBDzd305JdxpSvtO1uiHxaPGqw+tnhxtfmzoKUohIzJwJg8Jdlw5CGThPFu/PTS8/25bDfSTD2/JBgBaZBFF04PgWC6WG6iMC/lk5L7Al+0SdoavwELEVocDh6SQFFMW5seLp+LCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1ELf7LC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1ELf7LC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D2C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764759773;
	bh=Rp3qHuaRfXhEzv8vNf0VlAK36gCDQJcHZXPM9dN4brM=;
	h=To:Subject:From:Date:From;
	b=E1ELf7LCXfI3Z//BvU0oL9Eqx/gEgLIdcCyaTx64hr25u6z9/UVPZe9b13wIKdd2s
	 /3/O11TaBopG8Lq/YjqQCBg/t3a5co046a62LclOTFMM9hNRhusZ3/greTCFSjEnxc
	 tfayUGGvdNwbSgNGmw1fmyI+VnbW9eh5/FR3mM7RpXxX84h9a9J9PKW6I/v0FrIWU+
	 oWGFIIvBYxiPoQw8uU0H3HIvMQdUNLLgCT+AP7X1rj51+9cvq9B0HjVgT0Z8rLJOXF
	 34HqmBBuzGh6yCwqmluD/tzcMiDYho/8oNd+gwqqDPuI2fmowLp8hB3IoXwo2eozF5
	 D3d96HJ4uOijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B39D1269D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475977360.29751.12656596550323721464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdc01e96a6cd189b0d47a3f25d0c207ae590bdcdd590d53a0239b99bb8c96e0
Date: Wed, 03 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764759773
