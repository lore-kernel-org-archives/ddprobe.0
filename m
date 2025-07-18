Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081471EEA55
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752832794; cv=none; b=QoKmzT9qAEjSpGv4Br69H70Lx4Zwj/QpR2sVotbl7akDCcDGK5VUzsj7BH9e5Ha0VXd7dRgVxZtGakKzQc++LiTojkvQAWrHU3c7kxPi93KFSwnhPS+WomxfSVQkzjG9leF/NV5rx8w+A3BQgArWewpwKH5fgEZUwSuTTyjwSdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752832794; c=relaxed/simple;
	bh=3kBRNH2DyHULfsHMSIVrG5kuW8uA9IliO5NewClgcs8=;
	h=To:Subject:From:Message-Id:Date; b=EdrHLOA1T5STkCgACpNimN9/AVO0AJAhSNJTOpwYwHq7WUEqRs97YQ9hhHItUv06fEFZuvr0QrkWu2KzjERi24+DMJZDIA+GZWVMcv+ILbqHaIkZr2xpVuPJlVDMNyk3JS1pViC19Gi8JUij8eXCNaeLHCtBuJytrGK0xH+7zzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFggoa4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFggoa4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E846C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752832793;
	bh=3kBRNH2DyHULfsHMSIVrG5kuW8uA9IliO5NewClgcs8=;
	h=To:Subject:From:Date:From;
	b=WFggoa4c0ncMBEuHviLOdxzf0hTwGGtG5Uwc4RWwec5PGnAXJak2heO8iFDvjvDkX
	 aiv7EAdtKDUltYvwMai4cvGaBoCFxLwzcanykL3c1RJ1ndtpnxWVdKtQ/VlyVBzvs4
	 95qAWQB3bsIm1sBEz4ops4ojDkrChuDoBwvpv6jX32jcy4tMMk+Q+pzZtfndlikK/z
	 HAT2VXSGaZhtJkwUdk0/2G641D5tJEs5hhGvF6n+AZPHk4LTPj842UB253hUmfQ8/G
	 FY2DXTxqDTCML+ma9jzqdb5/ue+zR4lg5DCAHz/W1+M1odn9qy41CnoUcMzzo+yhIP
	 pv35y4Cmq8tHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DAC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283279357.3005.12493773722711939937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709e48f1ec67d93b7aff06cdca0fffb130be32c3d89fe6fba5d92b6b0a0e8466
Date: Fri, 18 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752832793
