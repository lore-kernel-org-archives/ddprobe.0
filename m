Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDCF1D5CDE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751150994; cv=none; b=OD9q1X2aDekYQyBm/eA7/q3KDtUMxXRY8tV/lwn2dpaA3Bhg79FdG8JTIOQVyzCvdWfytVYFc413rc04GwuPWyrRBTE8IbwYxqDQBzvUs2TI3kEeVPvgIiCI8o0D4uCkHbNmDi5D0Q+hoMgPYiCsER5Y8X/trgxSdnDHzRemhLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751150994; c=relaxed/simple;
	bh=gJhhccn6xAJjk2S15k2GRdUvuQZcb3/qJpttLfqNsvw=;
	h=To:Subject:From:Message-Id:Date; b=Vh3yhYrELBT5f+NTr58nv5xKFNGlj9n/nJJRaR17RV2rftdnKO+POsHtCucZ+kpzWFYciGFHEuOK8JNhAZ1MAzLTVs/VAkpDjhN3fGy6SD29FcutlJ4D4Z0FNTz561lC84OLGPGEDk7rhMWlSI7K8RabZGs5O3oCUjxNwBVFuLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDOqkuqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDOqkuqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0D8C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751150993;
	bh=gJhhccn6xAJjk2S15k2GRdUvuQZcb3/qJpttLfqNsvw=;
	h=To:Subject:From:Date:From;
	b=iDOqkuqqy2vW8kGeOZ193PD2lhMT10qD6RqFBtd7tHtWCogNEZXcP6xkMNRZmyDmt
	 /QggvM99U/XHONSB4bjxNosIyTTbQfllSdXMaFryGljZmfMwTiJKBk2RTjPVcl459B
	 pkV6n4s2IX4HLiYJ4wDNXs1gJ89aDs5k/CYqRhlYvKn+I+r8Q51jIthhNzzb3INXCs
	 6S3tm08JHhfpIBuhLnmJulu6XCo4y6Ygogh/X8xhPMRPEeqJHhluxj5fU+bDGRIkpb
	 IFoxveJXB/foaF20ZUrjMooMStY3uYKYyFSQ3i2tRojS2OPbadg4TmUdm/7pfoVe9m
	 WeeS6ctYa0Aog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F4C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115099357.19306.6242477574805088614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1642f84bb4a3d799ae3b9a65b058a343d35814e83aeb1f259520ad4a4996f6
Date: Sat, 28 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751150993
