Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D51C7005
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747666794; cv=none; b=J3eYcm7RiF1OZdeeP6w4Ive+zId2xUcD4BmCav8ImJjavC6IDp59/5jZBgHljP24+tcQ4Iodo2BR4vdx21pMb7JPPYbMBxnAdjP2MOz0x63Pl6I6zH/ICEYoj7Iyj++bA8uYtGVICKDqBSBQY38mnLJGIpyVmtu7gwBUE+jgZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747666794; c=relaxed/simple;
	bh=0o24qwIrKNyd6EVkQzPEZG7tNciDnTtW25Mcz/XHxfI=;
	h=To:Subject:From:Message-Id:Date; b=fOUQA3qpCA5o0cxWzyyKR1lEn7vxRLyNlxvpZS1jT6WLYeuI2/fYR0NUgT1WHySd03l0gq9jbjwNO8mi6Hd/qxHCgOBP0PIhyRE7l0DkkU9032XD8X6FFUEZ+4z53jSW+2riV0fpy+tULzo7YZG3u5SwdZe68GO7Ar3crin8F+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fErT01L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fErT01L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A264CC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747666793;
	bh=0o24qwIrKNyd6EVkQzPEZG7tNciDnTtW25Mcz/XHxfI=;
	h=To:Subject:From:Date:From;
	b=fErT01L+OBGyywu/9gb8+Mt0F4h2wGAr+6dmMZDOT6RXewuqdjfTq8v9IHi4MxNsO
	 Oy+YNI9QONYQXiofD4tPIa2Qgx7F9+ERUNn051JeoSqcam7dBqSmOlutP1fFxrtXQE
	 nwtUIhvI01oFSjBU7lhEIXF1pmIdb/tM068irfGh+ZghzQj2oAUFHT18Q3v8TSMqau
	 qNhx4vNg9v+mpHrQc5i4xx/vRD/Jl+C+H6qHXDAHEDYV4GEeLpAhKaoIcScTFx5PT9
	 yTvR1REF+h676llkuh4MSH1NPDMjCpvvkYlNGXAvQ67kBPTPaHUCNDJy1A+aMknxHm
	 mG3Jihdn9RMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA98C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766679358.12463.7877765674653256347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c71357cceda2657ed9eb5c017cad11ecc6e4f8ea0edc3057e1c7bf67d71b07
Date: Mon, 19 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747666793
