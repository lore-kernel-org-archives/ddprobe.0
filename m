Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A66F4A2062
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792091434; cv=none; b=molkbC37foYQw42r7FduAqGrKUOT5dMFGwwRXsyqXVK2rEHcpKqRhIWulfFSghbodtphg98/ciUHEhqoTN+5zymnMfTj4TuflJ+J+sFHOY1X0n2MNo9VWlTJQzOTM7Hg+c4cVIWLcmvpg23zoVNc7rqwGmV0f8BDA9SL3hE0nNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792091434; c=relaxed/simple;
	bh=l2rRYx9j+GUYvlJkTLISwWdvgJQHp0cPxV6rlvnKtfs=;
	h=To:Subject:From:Message-Id:Date; b=qSlLjSpXjhdUx6lRIhn/Njt7PVo3IqfN5F1v/MxT3TIu9r/QLFaWY0nFxVlYiID+EbhHYfyRcFOs0r3+5CXAVzMrEtKibL2gAiM1jkRxf2mwYrMZkDwfJBL9P6Fe5m2DToXSnon7xEmKj1liLBt16FAwD6kMuAZ7JMY2PLeemwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4bURIK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4bURIK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72A9C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792091433;
	bh=l2rRYx9j+GUYvlJkTLISwWdvgJQHp0cPxV6rlvnKtfs=;
	h=To:Subject:From:Date:From;
	b=s4bURIK3oc4WrsvZKrZWlAEcENEujsIm4IC6L4kcXAnMV/w1Ff34CCHO185DgIR5T
	 SBQ5SXgc5WbaPRDmpR6/qTb/qWm/SsFC+ui3g8atMbIp13WVoluApiXRcjwSc5y9fa
	 8v556xpT6ZreVTWIOmpSOYOgezwgKkTsLGJyHMxB7xlmGloteudUDbJyWkgwvehoXP
	 kJOh1+Fz7svM+DLiMIRo/pKZOL5KufVN9UP2Fwm0c42YtxkaaUqebMpUCjJjjAK8QD
	 P5H935esPAGzO6dsaYo5N62KRlyzm29k2330pbc+pl7iQeP6AI1fRl0XUYSsfqnh/P
	 +JMFJZtypmt7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25B2CCA464
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209143371.23459.8724631125808945701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6b20ed45589e95060e48699e76210685f3133a966c7d4e045168632bb67fcf
Date: Thu, 15 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792091433
