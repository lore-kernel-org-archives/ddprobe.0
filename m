Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2753E72623
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755928194; cv=none; b=If1u5vjk/7/ThxOEpL1+ZJxAlrL+Z/Ww+2qyCVM3TFTmg6um2CL5M2MG+4RLdCY/BSWGILQ9mvXocKM8Li0H/NDgxymNMaQfuVYtZC9MTMctbM8qdGbeMhqfe3FlARumV21FsP+m/msudHqcb/TKL875VWuwIlfoo3ykFTwyi5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755928194; c=relaxed/simple;
	bh=3xZigEzGvlje+CUtcWsS2Iwg+Vodh17d1pqjd5069ow=;
	h=To:Subject:From:Message-Id:Date; b=SdYgexGIZjEKC4ufJxXm+g5f/Di9dqL2RIK+Gbzud4YVxGSs5rAcchZ9UbKqMQiUZ/tyiX2ZC7rUu81GHh1O5EBv/XYD/ZAtMcBRab125Szi+sdL8GvvAJeEsR+Lqbjl/l1VSdv1/gtGOWTrj6TEVPfUmPcVH8dH4ANVMRE7TGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKnxW+Eg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKnxW+Eg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7634C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755928193;
	bh=3xZigEzGvlje+CUtcWsS2Iwg+Vodh17d1pqjd5069ow=;
	h=To:Subject:From:Date:From;
	b=qKnxW+EgoTH9JtxiJgTpQ/kCBKmZib7WiEQmzvxPxW9FrBRe3ssTKdDF/vC3TK6+5
	 rhyCeZUEWBxB5uSKeEGkTIKYV7cn7MohIqb04XTKbtQIuY1XrcI5GWQiDiL0nuHKr/
	 YMw8Y9wuAnTc6DZHY3EK/9i4o57Kj1gKGuia200R+rJzcHRCwM4RRUF1Qahk2NJjyd
	 MBIm3+4cKkVHpW+tIX59iOriX0WRDzr5Ie2bz+vgKIEH+awxklPQJ9phltH2sXy9Oh
	 chIwp6S+1CJjmZsV4ZkSomJ7OMCJ2PpGbLofrznrKXdi6q2waLK0FyNNCr2GIwvmY5
	 E8BoqK8+vkFZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944CACA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592819357.1434.14342572035960515715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd42f086bf1de9d9425961e3845ceb422c293038bbf060f72dfd6e2db39b1089
Date: Sat, 23 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755928193
