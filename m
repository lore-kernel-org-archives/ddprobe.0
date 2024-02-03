Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EDF5D726
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706961497; cv=none; b=rvj7oDqmoIDAJqNY8H0ALSPE9OKl9PF/CX25uutMGzjQSo9zmwCDWJCLhC+9E37uBXI1MzhrlK6toA7iPPRewDO+85YyoZcOckUZxX7oVn1DpAsAzLJRCTlXU9nnq25OP1vxO2KhM/2q1U4DEUWy8AK9PWSZDTXYdFGmLz8F85Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706961497; c=relaxed/simple;
	bh=tUHy8uH0JbvIxLd+YBPDtjjpmiVq/yXbTsMrg7sQdIQ=;
	h=To:Subject:From:Message-Id:Date; b=YGeLDukfuN6PKH5E+PiIJijWlE/syOPRMoFufLGBOdVV2U9Vrt9AmBbpr4s2uF5pkWPosNkAgm7a5mGs3PaT5lusN95sH876ltgKw3BkRdnhLZKGTE5ugCewYOwGDOYmrbrCetJ7yQepcN5LB7K92EaNlgMx9HUBabWstO9MgLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc/DjvDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc/DjvDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 753CAC433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706961496;
	bh=tUHy8uH0JbvIxLd+YBPDtjjpmiVq/yXbTsMrg7sQdIQ=;
	h=To:Subject:From:Date:From;
	b=Nc/DjvDbu0Yu9qz62fdFzdbFmxuKeZHZ3f3B57TVdGSoBDK1IUUbkT1MA611TQS0f
	 tL0MGTzu4r8RD+uRVLc4ambH4mYTTeuJj70eJ+SfU0HGuWHM+ZZzylVCy9gWzvuBJu
	 b2d80uNXRYTVF7hu4++jQGEBNFQ7u+m5v803eTomIZV/Nsql0XEi4e8CHGAmefjKNN
	 xj30JYXMvKygrCq4CP2B8gaVH6Q+FdT3ab5rHDQ1Z6maDZaI3BSAqTkbNDoDw/vgHC
	 GBwzvFYhRw4JrHFndHJf18wJeGL4YI/mTADl6iQ8EdbPR/wNe19XdbJbutWiSsOqlD
	 7E8Tz/fpKmSyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601D8C4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170696149638.15106.18218863863390725519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f691aedb0bf9b2acd02e76310ae13936416d54191b741dde8fe5fbb8309d45
Date: Sat, 03 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706961496
