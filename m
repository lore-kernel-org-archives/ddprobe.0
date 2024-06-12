Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0A8181B9F
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718211503; cv=none; b=qc2KeGUEFZQG2eigHRZNF1wQxusgf3Lfy3EMirnaIgdiSPIwi+QPH0yOdlmlNtzJrDTf44+gUBJKhgCDKOiAH2+WsF7O6Ke79EvGOjgp9hemJ9PvU/Kq9UJJimNPxMBF7cR/vYUlNi/mwPG37b4Sd123CagmV6KkmReK8Ek7QQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718211503; c=relaxed/simple;
	bh=BSv1B3ECt1v3WawYbwJg7RNCAARpuVO4loQVVjW4yrU=;
	h=To:Subject:From:Message-Id:Date; b=kg4dRfuhBrRGoiobSFExRwWYqNjM7PzQwbMf1OLBVYfNPRXEYBUvEFp1f7YDMp0AWc7CrjxHTTJoDJFH+snMZlhQRFFg56ciNqnwEJm1GY5HlByNTxoBnzywzJaLucoJ7IqtCtov5RtMvSYPuKTSunuXdx2BA5aIzWsGRXzjIiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTY4YQta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTY4YQta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FF5C4AF49
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718211502;
	bh=BSv1B3ECt1v3WawYbwJg7RNCAARpuVO4loQVVjW4yrU=;
	h=To:Subject:From:Date:From;
	b=HTY4YQtaVwiWYqnf/2kjOLH7xKUpjVHQ1FcrJZ7XfO3KFmenuVgTAqBaNSKXp3s6J
	 HLRc+2ft+OVLS/STEhCfEOVYLT9nfNJWhOAf1qkFEgS4D/uqaVmkh1EpOTJGz2lRVH
	 2YvRx0dyG2406t9onMuM6P+M2/p4zB4WsKsPRRVR+nku4fMhk2qJ7DiXSXKt5xCJu2
	 ylzqUUQ2lV3oX2cXE8lqiAWtna5RE/XXNwREfKZWcxoraLmtgeH4P7X84YpMq7+Yl4
	 qQYpL3eX89RvOJs/KnpTuzFYDHRdipoSd5fcKghOZVxt7F2NSKsBxw/W4WWt4heU9l
	 Vi27bTOPzKJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE98CC2BA12
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171821150277.2396.9190468676851197036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec003b9ef9af3118f6c02c8c7fc940fd11fcc15dba220f076b3467a956fd7ec9
Date: Wed, 12 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718211502
