Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74055D2E5
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717644443; cv=none; b=sEYS6+TcRoFpivpRGYvR7fHHJ3jOm4YkZJ+17uFJQb9PvzSo/+w51n31T+faulqeOtc/wqfaa9RF4qbl3q8wLH2Qg8yfSEGgycStEKPjT4dcM5mHBopTOU7LTnqyqfBJfjH4OcMUMMe6b9wJoo3CXidm/tV96B2SYstLxbcNbOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717644443; c=relaxed/simple;
	bh=Fgmjz6mDLEICpaJe7K0CqB2Mn691MXpg4MeclNcjW3I=;
	h=To:Subject:From:Message-Id:Date; b=ewRkKyz5dx5x2HyXPMgKr+kZGEGbtRQVdQ9w261SGcSZGUYtrTuhCz3Ym20AMZvdtV1NBeqhx7mXQoTkvmCTKc6whJYS3YwWwVleye7TefzCMR+n1y5DkB/7ih4PBg122TLh2eZOcDjflQaHMvhpn3wk7bZ2fLGC8l9sjV/+Wgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhQWGQnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhQWGQnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89C1C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717644442;
	bh=Fgmjz6mDLEICpaJe7K0CqB2Mn691MXpg4MeclNcjW3I=;
	h=To:Subject:From:Date:From;
	b=EhQWGQnTn0x9lq38pxELjZX+rt5QgPnHXUNXfSdY9BvDQC3gDhxx/itTkcNTKVL2o
	 yQXzeYTwhMrqcvdl7E7On49+XbobK+wgdbnJ0afuXMZmBFi9/wYt+jCFdddTh7v2h5
	 DSkhCBnPIUVb8SkwFelynBEFYk5igMNEC1+Dplhitzk8N9t1mGOphmvua1Bhe2fo8c
	 tdVFP1zux1n4s09Bg6LBHaYRPPPhlSTkyGR2Gruzxq/pQW7o3hRBi3wcCxjvZQQDfT
	 nbdzKg3jVQjhPD9lQANd4WyrNRub0eaiyQJr4ILewvIIxyV500AUn9e/rcjYOnpw9I
	 5uOk65TSnb+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C74BBC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764444278.14610.13202090400301285537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6eb9a5060dbedd25dd6b2534a6049f0abde752f7274fbb34e752a7a22ec1ff
Date: Thu, 06 Jun 2024 03:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717644442
