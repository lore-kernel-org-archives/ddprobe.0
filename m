Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EBA15530C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744207793; cv=none; b=ee2VlarRanwmXbbtWwgGxnbD9uscqTYWaAnfgSpyM7mFCiIUbE4UJX690+O1pLBCJtU9hEwdVUVahefpsH7n6JZECl1zgaa8yUGq7Jhpd/5hOepzBzsYy/8Nu0UbaBHo9K43SfKFC5Xuq8NNfpteqnh+BQ9A84VlOgjGKbzz2y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744207793; c=relaxed/simple;
	bh=uCkJ34dOvbonAM1Jj7Y1nqM06qwtztA7ouVaEbNBP9E=;
	h=To:Subject:From:Message-Id:Date; b=UF8Cw/dDUvbji7Y/TrAceO1cYGZ3Jp94c5+jUCfGqzP7iEM9ICBCYe5MPniUOmpVFlX3S+VKRadegyX7sC3kPuMMKH7mrqAfp3BXLCM4PTyQbU26+1mls6MMRiJKQOlOnIBrcV6jYbxzjyajTunLnzMpPuOe0WtlpZ+iBm+YLXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5FffUen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5FffUen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF8C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744207793;
	bh=uCkJ34dOvbonAM1Jj7Y1nqM06qwtztA7ouVaEbNBP9E=;
	h=To:Subject:From:Date:From;
	b=A5FffUenTE/xAePmtU7gskdC9ltBXN0uXFI3WDqNbFs+yWCWFBuYCCXqezrhb80qX
	 +hr8fdH+37teVStD/8lfTBGIM70nRSKxjqB6fBKdTMlZZEEO2cv1g6Pccu+Ny2LcYA
	 ZWTNEfPYVJ8LI0y5CXAqHqeHEZm8+F8BhM1sanL9eqQyZJfEtjeT5ZT3mIB+0EClUt
	 lzee0kMr8cc2RUu01RD56Ndk2qGRreumgJrP+TupVJu3rlnV4bZ6DFjY7BBmsQrlvE
	 5NsA4IwpnYmt/Bhg5toX6x+3T0ZjoOV7MBMGY0nWqzJBrElvB4M7NYYP37dgnJ9qpC
	 c1/XxLZUtMGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97227C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420779360.16086.694760104371346903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62651b0380bcf3b116936fb6e37d73101c780a172daa2dd5eda81157c32d0473
Date: Wed, 09 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744207793
