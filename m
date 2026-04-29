Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396481429D
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777425454; cv=none; b=h5SLaJbYUPSyReqyHqqsT2aLVb8nzAZSGkf0tCy8Nosb1uQgJ49PW9xLLPyDi9FsiibDwbbo9wkiI/VINZ1Fy0rMOxzGKEsnhp42BEyDa9N5sSHd4GY0cjaNT7tuXiTuGsA9lMhnGfrR39xiiDAUXXacvBy9ltRJ520zVfVLx18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777425454; c=relaxed/simple;
	bh=/JII0GAtWp3vxHoYAiOnI9IGM1hC4Vo9X+gjEfo/eQs=;
	h=To:Subject:From:Message-Id:Date; b=QierhSB3sV2rXuDEea5mxNqiYNzZnXeEVun+7qLnNuuLelDO+m599qxc0G5SIY8RsB4fycc96YniyjBqDTeTNqginzDS639CWny9U1OTKlluRTpw9cKQSR1dpRsdiai36AZQGb+TInYyLFHIBY5vyxNNGhyibxLo2mXQD5fwDKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZFzL6zK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZFzL6zK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1757C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777425453;
	bh=/JII0GAtWp3vxHoYAiOnI9IGM1hC4Vo9X+gjEfo/eQs=;
	h=To:Subject:From:Date:From;
	b=MZFzL6zKLev2ezf70OxyqcANa3lqSuD1EmtLxfvV/HEv0FE4qOl4iweIOINfqgsPo
	 ev4vS60E3s1hRoqp33nNI5lLXEgVXOxjtj+GQVtJTq63ls+2Apcyk/Fpv2oEE3OhY9
	 zP3Es2yWtV3vUJe3AhWVPUAouLsrP4O2q/PGA+Nyr22LOsjz8WO6hIB3/J79lIF9tR
	 8MubzWmGTAmKgRUm+AwBQCxJmBVNYg9c7e1i8Selm1LS65m1k86PVW1e5XZ1aTCQE2
	 aBgjH/2WKVGp+aEpc0XwnEPlFNxyTMsum06MLDML1yiFHWQMrpfB2i0RHZqSc++fFr
	 bC8qAB+PYYiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB89FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742545368.23677.3874186662022001844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7010b5c0e24a9856e91258030bbe72cedea5f20aa33f651ee44922b498a9474
Date: Wed, 29 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777425453
