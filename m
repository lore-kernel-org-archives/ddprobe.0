Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3048D256D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747444794; cv=none; b=lHHqTgr9XVxLH0c8RRCoWijiVLnj6rm75C36S4WyreoWaRpORxPSHVZHVyWsxEPtoUrLBYngWt3gduC5I1vScQoIcRhlsp7YU5Gr3M1bprfBN157nPiUQtSCPBRSMgyM7yqx9iAE9FYh7pmBWyLeft4RWkiJZ/HeR0RWj0m3nXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747444794; c=relaxed/simple;
	bh=U+pfHRTzwO20VzvYvdb5nkQ2Oso3ugDfUXjvsaU3w48=;
	h=To:Subject:From:Message-Id:Date; b=elOTHsltfn5hXo6w4Dklu3nFYktAmErYW5EuqbLvYBKCFPD09sQPPtUpdj6NYyGw+CCOt8hkSeQEGQN+Iy2mFu9oTImVlGga8Tndv6zyUsrllIMeUQ+GeXivYC+1RLwMa+Vwzoo7HTw21qqqFHtMCH8xm3cTD9jAmwVaVj8QLW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZtqkOFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZtqkOFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C5C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747444793;
	bh=U+pfHRTzwO20VzvYvdb5nkQ2Oso3ugDfUXjvsaU3w48=;
	h=To:Subject:From:Date:From;
	b=AZtqkOFZjl3YYSzFhoIo76J/BbiaNzEAfUriSrLKdYCa8Z4rQB42oiYrVIRxIOoZx
	 dgNZhZn4dEehRZcXa92XUg3d31CPc8yHTMnQC4Y5YmDJZydRiaOh4yy1wrx3//Wtfa
	 IpRbjdPdEu7uTT4FW14ZTQgrrSAOX+RclqUnnOdExUMv0OQHqOOCvXLG5cGKE6MBSk
	 qhQ/WtdNMjSkx5xUf63tuuTSryfhEFByDeXJEhURpxEZIsVOp+2p1IoUA/rdrHJln2
	 7s32+Qf8QnajxPtngVOOrdoPbrReVLXSiCX2tKQZKgW4nrd5EKk6LdRuP7B7x6XhDv
	 CFh+Qtze3JeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F029C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744479357.12536.11153680731047174763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7feb3567364446fa10d81b1758bfb906c425010606fd95a1fc1c3ab78bbea9df
Date: Sat, 17 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747444793
