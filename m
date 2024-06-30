Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F88C1EA8D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719738863; cv=none; b=iYoEJ8iynBD9NThFV6qSigwnBYIrKFd6CUDrhL2bV1kv7Bx6PXzccp4YrHcwfaaBnHyroPmsIWDtcK0WfUlfBiqsft10pnY8AWhOyjcImVd53q9uESaRZzfrOVVp0cUu5iQybM4OBmgUovtDKZpCChKsbdyooZztg1kTucn3xPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719738863; c=relaxed/simple;
	bh=kcjKGEDDB/V3QnD/VZab2h/aHhprhnDBkM+8i/dmt5c=;
	h=To:Subject:From:Message-Id:Date; b=fY/gkVNCZhNe6u8qgnpOZggt8TO+27X2+UM2hyZFU/1WRPIpi6hyPz/sDzNxyWY+you6n/ALG/NvjBLQ+pXxe0/5MXFDWkA03ZvlHJ6uUXwgbWKjnPIzhzWK2yzHD/O2g0YPV0EzwDSzf8Kakui6rd/LQCJe9bQuZKjQJOrRi00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkRifRXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkRifRXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF027C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719738862;
	bh=kcjKGEDDB/V3QnD/VZab2h/aHhprhnDBkM+8i/dmt5c=;
	h=To:Subject:From:Date:From;
	b=FkRifRXaQV2GgrgAu2CvqygkOyIYQ35awUpgwm4WXHo8o3YZCeprACNf8w5f11nN8
	 qE7jZvYYZKJXE8rz1T9aKVYuysNQJtDWiojj4Vk5cf8SPgrNXnScytMmKj+2PL40Db
	 QBRubTLNuFF4xZKM3obl175XhI3Uj9hu8x0SO4ZpXQaA1kf1CCHMOEmqZAKdeFiXE2
	 x12tF+6YgSAuiFFdnprZk0tymG2dQcFSkVvmxNXWIaxq+rgl+ohtbhwUf6h1CASFoG
	 wGFqH/iLEOw3VYHFbGi0HLaBKM91/y5/reSLsELhPNY6sMwYBYHux5GGk1Fv+vYmfW
	 8WqQBvSPOUn4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D51C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973886279.640.14005681998426942723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f5ffd5d6b7aa843428b0e37f5c5bfae6dd389d92b02f0346309052043fc004
Date: Sun, 30 Jun 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719738862
