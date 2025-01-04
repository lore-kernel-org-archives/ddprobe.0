Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35553181334
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735984554; cv=none; b=jYl/A4ePlTvHvs0vl7KJyKqY8Fwl24km3b8zM0CIqffXtYm1fAHVXO5NMUhNS1dwOkMw237Dx9L/efADcqMHeKq6/HzAZpK+237NnNHLBAuP/WhTO5HCbI8vhpXYc4prIEWgdj8AE759WIto5bKpjAMQCXaUl1nyMVE2hexhmX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735984554; c=relaxed/simple;
	bh=dh4ngM98bVjzhUmPP3GXcIfkR56kEKPjgeeKM7rRQiE=;
	h=To:Subject:From:Message-Id:Date; b=fhlNZEBooQF+hoaMKjAodo+AlVfsVuXAavtYSHamYgYYAqni5uWy/8MPlsw3M8DdLd6USCKZTaB03zxy2RXNZU1A5sdce8aW4+J/Tp1xTiJ2MkmOCnnClA966MuIxbOsgi/vqj0DA+2QAoV7Bd+IiuP0tLpa1z1GBpm7vA6Zz2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p75YUTId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p75YUTId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD32FC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735984553;
	bh=dh4ngM98bVjzhUmPP3GXcIfkR56kEKPjgeeKM7rRQiE=;
	h=To:Subject:From:Date:From;
	b=p75YUTIdwuyN30VcxbwBk7pFNWGt/3hs0elzsTkAF3ibhHt4BVx5TuSiaxKGhz9Ie
	 UUDVDLvf0oRLGX4fUP52SrZYCryIZXxS0SyFps5Cx2y5SvTXBVUzLbjbtZWN7Iu2bM
	 bd9VXfQ55mvYwHwA20l69Mb7q/2uFIUCr97G8A8Pk203jMqiDnXMK4qfd8Kxar1MfI
	 3sIw57Ggj4Zfzd70CyHG5/hkvT1etvBC796OjMaFHUS/HEFTFWUtjDwFrhjry3t/mt
	 xs6zpgAeaBCe5RQnJCeZfZnRTsrPaP0ysFockIRI5kNj07tAuNEewoizoOH0S7o+kG
	 vpnuNrSPrQdKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9746DE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598455358.22634.15581990227654201486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0547e0c2c4808895b73dd2f1ad5482bed6bd89a65854b9d386280ea5bf972f5
Date: Sat, 04 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735984553
