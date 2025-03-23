Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A66B291E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742770194; cv=none; b=tkAvVFZEbxcwx5Flvit58QBEii3G//Wh/ZUJ+ENHXVH1usS4gBtpWvDMcTQaNNg7/oD5gBPfrese+4B7tai+DbwrQ6r1dW5hn0RKNDR6w/Yn/3trkxWaHh5Nj4w5Ex9yAuqs4zRIQMDLQi3g2TUuqknGo/cKZsO5xDdR+e5orbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742770194; c=relaxed/simple;
	bh=IQ2pfYiQdKf/TRbwUrLZu+AcpPXKCta1tbEHaagirzE=;
	h=To:Subject:From:Message-Id:Date; b=szDXfJZSv8YmueuOB56pLo/IKwp9kHgiUVIgbFm34PcehR1UJO3ptXm7388q0GCdvbrYQWCBm2i4mmSjJG/hMVx+6fgvy7HuogpxsbHfdkf3oJRPJJFvZtipVyzgLgXRxT3gvTYV99IcmikiwNsPeRIklVsX8IQHTRbGTUN/aJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILAXWl0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILAXWl0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA42C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742770193;
	bh=IQ2pfYiQdKf/TRbwUrLZu+AcpPXKCta1tbEHaagirzE=;
	h=To:Subject:From:Date:From;
	b=ILAXWl0b+mmfkpIoXW8xrMI68xVRu28YpBMhALqZx6eO31MwvXZae3O/gO0lAlw++
	 +T75sLnS6XzGDFPlOJJZ9gCDDRj0Hnc0cNl/kvVnjUx+8kJTZYiS7mkq8XZrsMU5Ek
	 w8zaf4BYpOWbcD/99ojyrALwp1/pGNp0aZMO7/C4tcpt9BRvqhBYkAhdwHwhO7Rph7
	 hb7vlXfndFObssmMWzfIn41RgVxQDTpunLxMVXZB31P6Hon8fJl6lZGkW3bVkI2lmk
	 vAzSwMVSyp/ofxueLkZW31UNKbux/wuIKXj8Ix04PjnDwGEWByUBo8gEC96ptrWSDd
	 FZSdZLyoCDAeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96715C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277019360.26689.10282788601328989805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7fb7b73a33b604aadc8d2f50753bbe50367ee2b56bc33b07b65722e50f2607
Date: Sun, 23 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742770193
