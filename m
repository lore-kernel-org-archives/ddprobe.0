Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2075D7E9
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750334996; cv=none; b=R3lb+56u7Z6IgI0TS2akyUFmMu2ixEv4uXBs+TpiFlxUkCgOUfgXyBXJ6Ks0lAwLSC18/MDaIBtuFdHCor3qvg8fWzeHaih2MtwKn8Dv3/DNw3au0D3S8pHN2M3A4eCKp+NrxBTmfigIRccCdoSBQyuI58BqrsQPCqG1OAx0ZXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750334996; c=relaxed/simple;
	bh=Wln2ts3RSYksNaGKsZXFmIqnzxR5u4kt5pYfOqV8NbA=;
	h=To:Subject:From:Message-Id:Date; b=N2pp0o3xXqViCCqy1YDn8umJgTZK6d4qvghVkCY+Bt/BngPn3wkoHoWqXddycV8pbiZ1OIQDrXmO5Q/4lJ72YYtBVArn7TgF+xt16lDBlZhsVQ/kCy5olkOqAoX7wVpcCoUnnDX2zwtbsJocuytyICv+UqUIMnxpC+kOS6HS3Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKt5dbVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKt5dbVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE004C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750334993;
	bh=Wln2ts3RSYksNaGKsZXFmIqnzxR5u4kt5pYfOqV8NbA=;
	h=To:Subject:From:Date:From;
	b=qKt5dbVwxf0xmMrmm9QY/ED3vLLh7N7LIINLeDhb4/rh4lB9YjZvpwmscn0BN6de2
	 LE9rsz3UDYkJ6RvDvff8sRFRmAru4C9lSZz5JiUcfIH9rfs1cB5ajEnZ0wd3TObcwF
	 UJ/Wecdr3OZHx8NgoqslKXtWL8CTVtYIaNuUinnQuOlie0s2Tk+ftmhqO+cl/l0sUj
	 LbE89jSsu7nsOwzOCDG2n+IXjDnPa2/pzFk5IHn6JEwiVkpSTI5vyPXxMC0LvftU1W
	 cd6cH15xMWHd3cG4T7En8/dhd9Uhwly7jusRYFmIM8Bxfpec9zOF+lIzPvXSeV1e83
	 xgYZs5jdWk6VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDEC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033499358.501.6411131644385404280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b853b841d7975eb2dc228d944caebaa5941c39fc39cd3b0c15af6d25e1343c
Date: Thu, 19 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750334993
