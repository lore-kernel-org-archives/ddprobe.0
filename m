Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D16B21ABAA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744828194; cv=none; b=mRdo0Wp4KHkh6ozYF2ft2v+mmaieuFc0L8Zn/DaWTve3lkfdIt7eYZHYgYbJrAOYP+d2Trf8sqIPEOu56DvE1I5Omt2LFvvpxawCl0CLP3ajHyNDj2plCMqmLclwSiGVYw0Gq7fIfBSkWUl11xgyI6PqmlHDsJtNFWepCXgvG1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744828194; c=relaxed/simple;
	bh=MsMM0o8j32uHgSVd5RzvwMgmQeM2d6w76RA2s1VYztU=;
	h=To:Subject:From:Message-Id:Date; b=cQuE9CiqFCGu41rE8LivQL+9DTz7uVSxXO7eVp722lwRwWHDwk5RWSxrBm0laMkovwyBbnzh2ZTEj1YmjXHMagexPeZ/WIfmnjTXqzE92gWQeUhNge88qxS2qdgl0BVldb5YYKY17TWPh7M8/2zOqGWdHeeHThrpJ/Eowv2FP2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlEmd5qL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlEmd5qL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6743C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744828193;
	bh=MsMM0o8j32uHgSVd5RzvwMgmQeM2d6w76RA2s1VYztU=;
	h=To:Subject:From:Date:From;
	b=KlEmd5qLeNQlVIQBo9twQW9Bb63r/X3tGKBOHlpYtO3EPs0aEknO1S0siDBS8zP+D
	 cDoWg7MNta2C0MnxMs+DY6VeTPUXli8xLZ/aDrsQyl4a6vj5/oPg9DDmNTgs5wYuOH
	 hBqnIaKtlt2v2VgZhwZ78auFs6fr6Jm3iYX+JMJdON0vEp5gtEEu//PsFSQF7biCeo
	 bLAUG9CXCXFVI/bHu9TDoM0TzDvA5pacYV8x0CYlOARTC6ggjQojUGRyvMFimA2Ejb
	 N/mLdy5Z2/GvABKqnBAKYasavh1aIyHQCM0qZ+rimmBU2XLUxn0YWf4gP4JXYAoqxd
	 nwsrRDewTUKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A5EC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482819360.2427.10591531732179386574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd94a0c359f22e63aca0d3a6e871a8ff98a2e4755912df070f2b5b0a09166b31
Date: Wed, 16 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744828193
