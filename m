Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BA81CA9E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721081123; cv=none; b=HKO5b4Ai82DLx4IaEJrJwvhABGzTfvK3Bl9BIlJVm7PUrkDddgThGOxAvu7lGI3QcNIoh8XsesIcep9ZaSvanA1TEAgGno+YOpfn7w92NpENXlOb2yUdCSsj/GkoNLCCUD4sQKSsCYQOkF7uMGGvoYzjhpHVRw9+a0a0u/NDDVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721081123; c=relaxed/simple;
	bh=ATtXxatiC+aFTxPLJYJRl0CbEH+nWBJ+4jiocpSauSE=;
	h=To:Subject:From:Message-Id:Date; b=PQup3yhyqk3iQhRy/wzjRoFUh6sHspSk4yLHqE0N7wX7iceMvnDTx6+p9s1t7ho/SyGwui1CbaOrjEy1LmOppxENmjZGGITGhmB8SysF6ct3JKQHVystKlszhlXinKc8kM/Ij+oK6+8+2d6B9tMtGDcp77/OyxHlRtOdqQuDxeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igdpwErC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igdpwErC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE58BC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721081123;
	bh=ATtXxatiC+aFTxPLJYJRl0CbEH+nWBJ+4jiocpSauSE=;
	h=To:Subject:From:Date:From;
	b=igdpwErCzeOVxC6qAtaKrpv1rr/SBDiYwP4eWfSN6jY2q2eyLeeByCvpbL0DyPHeK
	 M4KgHjeZWrqbaqaEZFDD3T/MLuqNOBsFADL1AXNsecRwo5ykpTJA1s7iYx1ziM6zWR
	 is/ee8039nNTFwQZuxZx1yEYl3OVE/x0oFzJrwkQCI6jVMWXttOxb5w9rg92vUf7JY
	 XTNKjZwD3Xt4OUUdGUM4P+3UWDIUJHKj1ez/zNBAfwYEX5ITzM1ZDN3w0jMFw8cSlk
	 0OR7PB0/Q9UJPfJDRhbjf6mta2EHf0rnUE/x11mmRAimOBC2itFU9mRRXRYUgaTGLC
	 e4H7sGbHfIszg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D289BC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172108112283.11492.9388301069184200375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06581979b6d18c01af4f84db7c32d979de68e569c89f7ba9193d397ce1a93c1
Date: Mon, 15 Jul 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721081122
