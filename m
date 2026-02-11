Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD1B346FA1
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770781494; cv=none; b=ikuJU2UvJWz6HbeO6ayf/pIDpSwhEL4ZRB3R2rgoH+el/kHf7YCdV0dzrqzPiV0ekvKLqAsbEgsXkCxZY99qWBJs0oGg7RYvu9nrfDlk5Qo6DxHiYMfqrOQw+JRZhJCit85L1R3rOk7/jzlARtqHwfnTsuKqcWT+TV7VSwTtF3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770781494; c=relaxed/simple;
	bh=5u428/B4Ef2L/abY6ZTdYeb5RXsIp/hu7iU6DAGZ4hs=;
	h=To:Subject:From:Message-Id:Date; b=b+wfniVVwdcemjlwkM8OJsw/vVmOzNkjTADFM5UaErZ9im9DYq97SnkaNf52lVKsT08Ua9Vb5Vprg3aZ4dzoUxeD8jcmjJxr1C0poA0I7SXBFMOqtH79ZsGsASM0ejzwBAwRkOg1X+lZUDtvCLVjw4kk/LyCsdU2VGZymflz3o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QviIxvd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QviIxvd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE17CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770781493;
	bh=5u428/B4Ef2L/abY6ZTdYeb5RXsIp/hu7iU6DAGZ4hs=;
	h=To:Subject:From:Date:From;
	b=QviIxvd/Oj1cSvgrYQrFCZX6VfBKitlHtzDDA7oIK10vogyCHi5HfcdAjK6IJGUP9
	 tqz+4C3nl2LbylWa8ipZW5MLv9XcF2pJ6Z/3V8YV6gmJdXUvloTkZqp2ZqVM5EoLop
	 KRWhS2nxEtFRw/zCifmTVsBocMeCtO27iJQOUQdNfudLEvXPrn9M60FAYfuGCFNHLt
	 M7MtIhdOB+CiDwiIIZVrWeRGliwJBlyeVoF0RpDaP8J7vIV3oExLaLgeNM3YE1BtxQ
	 G7kNrvrHw4zl+9HqOWh91ihdvt1wX7mQsdPapkz5JyAmGy73Gq8hyV7fXLvKpwRHjy
	 3zupgKwg5abqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6641EB595E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078149379.25505.7710976854032055216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39d67a4ae16609abeeb07f3d5990d780f2f5a9fcd116936244c9103ac8cde2d
Date: Wed, 11 Feb 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770781493
