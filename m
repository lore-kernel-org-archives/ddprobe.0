Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518533DB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747910995; cv=none; b=D6lH65UFd2oa7QmfzZitkFYy4nbx24Ij0Ar+BdqSYoZGAy9bG+n9I+t7OyBrSuaEQVp8ROq4LKuP8vpd42O1iOQ5zPY6BNqK3PcmIRPEkboPLYgVeYdG13zjJAmmT/1hy5sKxo9hyFFh+4g2PvzLwGjdG/iZ9NYR+mMCKXPtFUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747910995; c=relaxed/simple;
	bh=EHYlfTBAu/gAYiZuIxDp9YaAj3cTM5BZegMb1AFCrPk=;
	h=To:Subject:From:Message-Id:Date; b=bKnagQKX4IKO3M8E4e/TnjV4w41A9kfjdxU9s63UwkhBMddFQFpTzmoRE4/fD8HQ5RN4KId8oN1itTwnaFY11WlL2tt0qxEwQKsrfxMuhVZicn40I2SK69mb9C/pCulJmJtQt3VI/EYruWlySxImL/CEu2kWxXDzoEtOtYI6wvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBx0T/VO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBx0T/VO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747910993;
	bh=EHYlfTBAu/gAYiZuIxDp9YaAj3cTM5BZegMb1AFCrPk=;
	h=To:Subject:From:Date:From;
	b=MBx0T/VORrQjE6hqXSX9YvP6fPz2+YrO8hjD80KydvgBURl+CmOAQnffnkk4EcLRV
	 qMhjFbboDVgnmczEjQWqBMw4YDuwwQvzwGM9gL0PX8UhY/+7X9yz6Fj0NohlqF8wuX
	 mKXAMvPFpmmTC8yQWXzWwj8eLS8g76ZQEz8HMFvw4JcgMvXrlJ8O2g6MZ6ZmP/mkeE
	 D7ybzLcl1uEWequdQTPHaSIl8xalUc6P5SjCOIbo3WS3buuLadgksx0OikFmTO06Zd
	 2tV/mbaLDkODTvRqLeavTb1QIHA/PDD9DajoEKKZqyupGGnlob70GE7LPj/4Nm2NP6
	 aJGDOlih5WuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC49C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791099357.944.14054162298181354038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8132b41891575a3d698c9f3c09e965a931c95a9e57276cb9fd8b4412e0bd9d2
Date: Thu, 22 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747910993
