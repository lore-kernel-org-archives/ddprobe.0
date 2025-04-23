Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FC7FC08
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745408995; cv=none; b=nbzNkmG64+FIzTNQIWdpGOfa45cmvSSMy4NAPrFnF8nG9nRkGySM5K7MJvdHVtXsWZHVPfenRyJW3om7OqWZg1gx5JTS9vsmELz0HwQueitOXzAXrh7aQmlZuWPimfQPf/b7tJ5Gsa80J6c/kjYgAytws4dz4CB2QlNUna0RfK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745408995; c=relaxed/simple;
	bh=Dx4OSDk0htWEf3FwpfRmN0NHk3zzKDXo73xivSvjpvg=;
	h=To:Subject:From:Message-Id:Date; b=lakPujf5qlvclKVUm/HaMirMYzeLJr6udfoPMmmbpm8N+bwraXf5NTE5t6/6UkOqHyiYzgqiFQOwITlKgCG0zBmrnnKadFIrJ9/ajao8m9g4q2BGxlieUXEjYrAqmjTlps7mpoKn53MisziahPBQCdddMEp3h77gzIZqNrbWM/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU/NLRG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU/NLRG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22ABC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745408993;
	bh=Dx4OSDk0htWEf3FwpfRmN0NHk3zzKDXo73xivSvjpvg=;
	h=To:Subject:From:Date:From;
	b=fU/NLRG1PGgolIwOYCrwMayGgXDJzE1jzyYA3mqtVLJS4W7O5R5zzTF6usyaihizW
	 jGdrZLXMimDuchn3Oy2kaMOLVMfTm2oyNUOJCyu4BwkAFgGpNQrBfD7y1wYdSehX6l
	 lVZwJSdu7ZlB8IWNxMBrvHluIUB2kV4c3qdf7n5J83oilZ3Dk6NVSESIV2KjzKykl7
	 BFxqI5yuZmmmJdbAjhuuYCvNEj5GkXBXVBYckJJzeOAuKt5EzPLYwVBnNDSz6cyjtJ
	 1/GOeLS7I2e6mE73DX7XNoYzjiJ2XCLkkLoRynR9rF0p2JlGY1P2IxijPE4EvDwYC8
	 DDnYt7HjMIg/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B17C369D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540899358.24250.363872836215905601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ac1294a6e7a23bdfcabec779d413d1e1645714d3a2ca170f69d480b0883bb4
Date: Wed, 23 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745408993
