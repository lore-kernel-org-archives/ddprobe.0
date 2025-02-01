Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68395AD2C
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738378554; cv=none; b=hHZvwvDwEQ2SuV+wogRasTc1uZrS+zLU6t6itwregAlKISYskan9UnVTCaCxTpTM2LnkQ5g2LMjkWPaadkOEJ/z7p6kozinvJpAifMbZt4phxqCvhsIFtn+anLPwDDCNfjI7Exzej2pmTvbqQO70goj5HWs4/1TRS5C2VlIYW/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738378554; c=relaxed/simple;
	bh=FC8yn5RlcwtvA7a+FrDj/sCtOhzxJRBL+CApt8uWPEE=;
	h=To:Subject:From:Message-Id:Date; b=MkAGWSwRCPNjJweXpnndt2lh6yhyG5AUOk5OjZ5TYTGqhibivvB6UFGyTTWhLuoqgv8S4Rs7KVIZ4NoNumfQ4y33OGiCIeDo7V6GuqS9ZO/wDOJAEO1b6VSO6RWPMSAZdp1DOPhMP+CMlLL3zVJWH/SgshihrrLLSPs5sKV0yZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr/ikx1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr/ikx1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74E1C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738378553;
	bh=FC8yn5RlcwtvA7a+FrDj/sCtOhzxJRBL+CApt8uWPEE=;
	h=To:Subject:From:Date:From;
	b=pr/ikx1l5arJCwK1/ZMuvIKiDpON2t5FjvB1fA1iekwhjxKeUU6onwPWLmA18qxN9
	 l9K7AvH0fh++LQd/jm1Y1JW/K3tbf22zSOKYA7VKb2f0WOgm6UC8BcDeVJECGK6NJF
	 tJ81xN4wkX7PK8NZ0eYxAKFAYk2BKyKLXrEYDdr6HThyk3xjso6AwLu4Gieeo4JU3d
	 ZP69TV/KrvA3Hielxe+dvlOIxtqquhuwyDYqr6kExsVjOPAgEzocr7PLncDuWEdwSC
	 YjommIkDnDL2CVrrrHm2aVNDNsEQG3C34V/2dsU28w4EAa0m1oyut70lkHpLEuXH2J
	 WL0aSFMYI6YYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B053C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837855361.24734.1378978710134212977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4776f6e91e736e1bbbb9753de9323b99caaf7020e0d0c863c5a9f36996ee4db0
Date: Sat, 01 Feb 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738378553
