Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535F5186295
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743749994; cv=none; b=uloIGqKV/GyPlBuw/S5k8cfoW5ofu/+drUYuacNu1suwGaZL1ud5XEyFhovI8D8mEkGqC8uqhAklPIrEVPiryR3FLmfMauufzZxavyESDWFbwbzIEbiAJNSMLZlLcUatE/xc0edkAjp3KBBxcvZm772rSYJs/4k/c17GzH5+oWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743749994; c=relaxed/simple;
	bh=3LSahTpNb9D17hUozar5P1HTECiV2sAkFGMWiml4OfM=;
	h=To:Subject:From:Message-Id:Date; b=CFBkhr30ix0536pW97/tQRqHuAyTi79rM6hO3c1Wya+IZUKFz8O19tQk1WyZdPbBUxZnNNzbEq97e0TIPVJLo0EP6ksInILa/U8ye/AGTc+ayC4UM2Y35PnzKTjSUSTu6kN1rUpInzwcGLs8CMJ8g55bW4BIdonqtYUiYmOsNkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDfaq9Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDfaq9Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE819C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743749993;
	bh=3LSahTpNb9D17hUozar5P1HTECiV2sAkFGMWiml4OfM=;
	h=To:Subject:From:Date:From;
	b=bDfaq9Y8EcZ8Nr4423G4BqqObbaJL/C+3dQ1cESfm/qz/L6MRxVUkUCY4EggktwwK
	 otc2vlYk1yr3EFdNa69ZuVghDlE4GLWmAX/wUU5hIoVtAsZFeWoeSmUlMUYTo0n4SU
	 zI7Wi4wB3FBoM7TamXJJg6Huw9tBh0D0UYy0wDE26kbj5btqp7pB4smFz9jQF7kN7X
	 k8lk7fnFcntDLBNBVDj/+h7TgrbrlfEtTfaM0eipoiJeOGVDrtQR0/BCrlQ5ciDDAD
	 f4ox7CbijVt6cutyv8E6PHWqmqqYNP/l4/NDM3JWdMi+3S20sRJAVJzdwIuKznVMqy
	 VdzaPYCLH4UoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F2BC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374999365.3429.4799873272435911418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f565651b7c61684068b2d01bace0c37af180bdf2813415ad9b5db6416b7ebdd
Date: Fri, 04 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743749993
