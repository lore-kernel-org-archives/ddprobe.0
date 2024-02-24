Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EADE565
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708739897; cv=none; b=RtpDhANOXKlfA3kLAkawk1F+bVxEVYVRjhEafxb2nKLR9IbDcTHapXz21ziAPgi+4lQnuCXm6z0gH+HdTJWhcbgzXWzg70ogRZWlvaxDcgksIF1MvGePe9e17pzIfw0ADTVhciksU0PBT4JYO5cTrmcxVo2kSnqnJLTcS/53rCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708739897; c=relaxed/simple;
	bh=zCDK760U09jJCTMBYy42n+JLW4ge7Qg3e37Bq7DKjgY=;
	h=To:Subject:From:Message-Id:Date; b=hj2M1TWvj8pwdZeshUtJcPoFPhY8MVAKdzjDQhnuQWbCegRMktwmNBbMMnv2tGcXa7K0ccNpiH0IVZ2vzBjROmh916bBHbtTwRkeZ48U6icYFnNp2AdVjNJHWjWzzhzqJHBDxiIR+dn9+MBhFOhEybkZWcB2WxfFbXs41H20zJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvRUBv/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvRUBv/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B98C433F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708739896;
	bh=zCDK760U09jJCTMBYy42n+JLW4ge7Qg3e37Bq7DKjgY=;
	h=To:Subject:From:Date:From;
	b=RvRUBv/zGa7w2YnDZ3T0Gf6CooNxavnb9JM9YZVhz902WQUmxPUyUfDpObLwOWFku
	 kqREt4agcKwA+XzSDfvgWXNjQ+omQbeQSD+YFn+6N1uT4ju5t82W1i9c5EhdSkyu0U
	 wLxowLkcOrn463g6o2w2Nb6kkCXPtyEUKIV+7iWTycO5j4XB77K+9CC7XiJgT3kkaz
	 pUCIOfb2OyAwEFpZPPQ7TDLWHc7yccC/i08XDNFBlZqs9wND46hcAsTlR0ydCFGm4c
	 Dfl2CHnQntrUkQRTXEkndJA9YVAUID3VU2A7EKQ0Z6ahbUSj0Ffi1MhlbYlnhI+dXB
	 4Toi+ZPys4lIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5CBC54798
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170873989636.1394.956682043026164250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0674da7b1e5af3cc5177ec928b8beaaf72db1ef3aff7a0dc2af3ca0fef4b7c
Date: Sat, 24 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708739896
