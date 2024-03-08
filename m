Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D07F291E
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709864897; cv=none; b=tiISPJv0UWJzcbaOmHNA7ZhPsyVwRSZZnw934KUYQA4w26cdinlH84mTn6MPU/5FTJ9gDfmp5GnEhaEZu8cLRgOWx3+5+Z9uS1oJOSZGqI8oDcXSlv5DQDcuixYyoSyjvm8k2dOSVI36aTIJ386DhDEgtLFVfFR49TYLJ+TsAQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709864897; c=relaxed/simple;
	bh=gYO8mzfoVNkrULgpybAP5oS43vkTYXh/HeBnPDiCC48=;
	h=To:Subject:From:Message-Id:Date; b=tL+/PS+D9F8SU6ICSrJmr98eO/laiCCdd1Wqg82RZydyt+9rHeF6Kipq90oxnUkzyq8XMwaTFMhHSYWNUkM3Mde55e/oye4THfqKILYIRRrm4v9gJKkIUpixL6EHAlw/52Sd6h8+JxpVEK6uvYRZ1/Lka6FNa6s/GDw5az53V+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmNHMzu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmNHMzu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB69C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709864896;
	bh=gYO8mzfoVNkrULgpybAP5oS43vkTYXh/HeBnPDiCC48=;
	h=To:Subject:From:Date:From;
	b=cmNHMzu9Wkc68x6kiNomrvmc3KmuwctuPyDnIj9xhPVPfU1ugc+n/2SJn4fPGRopQ
	 L0SjnAc/ucl/dy1G3u+RN9jmHIXsn2l0UXn/kRCVRPsxoSpbVfXgXE42QdvXzCuE9M
	 RGAupRyKSNH3KklG4Lk3DbUivTaMZXjwzAbrKFHZw97ZkggHmD8GWKqWrra6D9P8K6
	 B4c3eOSQiOZss+P94DKWgvZj7LXb6P6asONuTzHQXtZXkG52J3CJtSO8Kzm3t/H9Q9
	 Xyq50H1MIr4O5SynPLTMtP+hBllfrna1SBN7FxTkZJG8Qr5H/7M90ZXoj+CCoBiHcA
	 POV4RgMjHfYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6459BC54798
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170986489638.6939.516740868728448784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c40b1b80fa58de75526153377c187856f830f4d2c00f6dd9c75c0ae386b7663
Date: Fri, 08 Mar 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709864896
