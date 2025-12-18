Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01BD382561
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766073833; cv=none; b=n4EfRIaCQ5fyx8SNSfH2KahIhN2NBG737oYdWInoYil5GzvK1yyqKYoCjPth9UeY3vKVU8p2HByRL2nPo6/bbRBEyuWPgREBycIDIYEUPSb0IP3rDvEpwNk3+bvr/Qd/H7QeuE2bvOXr7foPZ9AhNdlkbrby82xPubHifBoprxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766073833; c=relaxed/simple;
	bh=FUxBlvTvThIXvlE0ClAGlYKmA+JMn08VPM6ksXzSxRM=;
	h=To:Subject:From:Message-Id:Date; b=Rh9rK35w6kRe7V98Fp5VF+USLtXHY+o7UyVKggXeg3mMEkkqIW8q4oCSdOoQiYRsPlN4XcKWecLtUkO3uD4ndnEjbQVfgc9JG/oDt/d1GtNJvXrblKQPxW+J2xE7+ibaduq470GtFgIoT1rB/jkaGPn/FNxFRQu0KCllXI4MOqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkj6itfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkj6itfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFBC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766073833;
	bh=FUxBlvTvThIXvlE0ClAGlYKmA+JMn08VPM6ksXzSxRM=;
	h=To:Subject:From:Date:From;
	b=tkj6itfgPvEYs+U1GzCgmYGnyoe26XWM7AnouJePPcLJg5PCH6h2mEPEcuS1p2h/3
	 yB1/F4Ph7t+1N09WI3boYauMFc6V9kKV8a/wogghTe5U2GgoXdEV60uzmIykwYWCr4
	 zd5/JBzaMkPExzC0J+RhG1IEcNrWZzNUEtYGxna2yq3fasshRdXBw7nQD4+aZigdHl
	 L9bW9lNC+DlyhoLwpWDF+en/iaG26zy9hdws/8+wa1HHO1PBmvI4GogY/b4hW54OdB
	 89rfz6c8XyrER0dBIYmeGSDSyStfJBg48YUwi2hOJKpwPP+vXPQS7Nw7Og19bxcOA/
	 vZdQ+r/Q45SBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9099AD6ACDD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607383358.25938.11291162198121323794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3604a51c100ce1adba927161cabc0f9b0080a122535a3ee747aecefaaf88a982
Date: Thu, 18 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766073833
