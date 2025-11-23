Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C13F824BD
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763896314; cv=none; b=bBFWVmxNLNDOoV+SpERKM8VCVZCjPiePFUE4VoePSuGFClbBAbRGUIR8gu7txe0HGw7SY3E9zO69m+UZg4lwsdpMlye2rBZHbx7N4dSz44ApnB6bQRQdjGJjtov7Rb464ubao7TLOnVy9olx5/c4C6xwXvc6+ELI7fgNFS2Tsrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763896314; c=relaxed/simple;
	bh=nlujJNvR0IF5Tl3sAubNG/jNfjjlKvv1odKAqe4mmaQ=;
	h=To:Subject:From:Message-Id:Date; b=kIC+CqaPE0IqV2KVlvjob9Zfod68xaibgjPFWVjc4Hcwcc84oFQY5CA/uu9QxxhplHMFajgt0+HfeBYcaEJ2HQQMs0/yO3MpxJ2iLMKkHoAUS5UQ/vD1Os39nqihYNGCQNUll+gn097a66AkWrFlQxTCYwWb1+OXPsix6ONRbRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR6lh8ET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR6lh8ET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB36FC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763896313;
	bh=nlujJNvR0IF5Tl3sAubNG/jNfjjlKvv1odKAqe4mmaQ=;
	h=To:Subject:From:Date:From;
	b=jR6lh8ETjmKlQ+PNGT6tIOMR73ZMBI+91aJCitPOCarQQERpNRWPaVC5H51OIiSpc
	 f/1yZPSKLLpQVIQt+HTRmdIA5/DQNPwEVRisGHobJJB5DrUJUQOVD/7aOQuJxKlru+
	 yO0Pk8AoN7/BNN035M1HmQgJ2GgTUl3OEhU5DIPMb4zePtopacA4nF2ZwAVM0JdwC/
	 Ci/MYzZ5VgdjstfjaFInV+oIN1mMXzEDHXrHivvbMdBmqO26f3K8mHpiVxiu92BR7V
	 ebsY0zCQCioqLehYUbPePrEHTaZseDVHtqz89FOCwMEYCLsQVa4t1sgj792n9WZdr5
	 DWUljFNZktvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C12CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389631358.32145.10269501943186134112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099b4058bf8883dd799b2fcefda5470d985cf68491fe28b6a8a0c2f0818217c1
Date: Sun, 23 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763896313
