Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1708C346AC2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774734294; cv=none; b=GL0r7CQAwjLfri0V8PWkNo//8ElmNgakR6VsTSv9l0HiG/pr3qNk7Xy7kpCZ/7EvvHKsJdCUNlXvk4+UHQniXu86lwXQ6JwWMHyxzioRnofWA50PLj2qoAz8EnB2VpUY/rOK4+EtKGPn1YNKFtCvtH2i7slA1McX1uEkimyUFJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774734294; c=relaxed/simple;
	bh=ofeF9a39tOhjay7p3h5EjTzPsW8Be/GfR5y+VfVI4ks=;
	h=To:Subject:From:Message-Id:Date; b=hgenpjLlwu/UpHWeyUnydIKyvRKgQe01a99rAgw51/M5z15B3bHU9h3Vz3vp7sGwbHepj+2tAsicyhOC+0ZeZmwQgJ3ZWVvEa+2tp8KHExbDDJp8MfxlVyYQr/Keyr+ikNaMB78KVVxsqRbEdw4+Lbrgfb6Z0+Lh3uy0HniM6ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRuy1irg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRuy1irg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774734293;
	bh=ofeF9a39tOhjay7p3h5EjTzPsW8Be/GfR5y+VfVI4ks=;
	h=To:Subject:From:Date:From;
	b=PRuy1irg6/f55PUOei4gROPyO7hm0zcWF5sCde9ijFHD25x3MwKsOd8zWho2ZSRv3
	 gOlTXfdVmSnirKrXYqWR7CjnDrFD+u+ZV/B/ZxenXc9zhebINmtxiOrZ+SHmi5E+6f
	 rCBGUTRDM3Y8dRf0EIxbjTNBiNHQ4Z1gynAxSRm6BJqJ+ZMCInUeX2CplGiigOL4ag
	 JxG6Z10rRbr84aY9N8F5dBHvycdFMAp6cHvb4GasBm7AuMC0ckosemAbpEQASnbw67
	 nwgUKlwnPwrVo0nJJV/032A9ns9p8Sbi3j2kInSjV1e0myRHHcV+BrRSVMJfFxN3Lw
	 Vp35VD1b+sgLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926CE10D1489
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473429358.21482.2886718130146951089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f662b7a133a656e61c0707d4e031f17caa001ebd38a1e768a90badf141505b
Date: Sat, 28 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774734293
