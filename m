Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FF642EFDA6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782580114; cv=none; b=QXbjwTmmvAh2qOdMgblTXjomw5En/pwtDdiWZLO1caxTwfuL6esZ5XckFiFsVMy5iEmCw8v7mtZgcyQ8utsuiZokYqOm6+I6Wxng0okPg+wX/khSRf0zUGnjk3EYoWOPwjkaliqhuSTIVNMQGTEJGg0K2ATRZNg7QtKm+eyfI0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782580114; c=relaxed/simple;
	bh=GVm3yW6xd2pPabh4YyM3Q8I2a7ClzhEysWYtZWtcwJ0=;
	h=To:Subject:From:Message-Id:Date; b=Bph741blvBVMH8nbVQ8JxsMd2mAkZ5yy5uPhBRRhHbnleYljdw097mHVbEmYo3osdiDS2d8Vm/Zs0H9QuE8s4VkMJFyxyffGY8jcvlBMA7BGs4m7XQx2FkVFTfnsNN0VdoDiWtGgzZXaDWFYE6nz3gxwJzVqReLiOb6XsjLfAs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddR2Z4Y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddR2Z4Y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D652BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782580113;
	bh=GVm3yW6xd2pPabh4YyM3Q8I2a7ClzhEysWYtZWtcwJ0=;
	h=To:Subject:From:Date:From;
	b=ddR2Z4Y3SiDvB8ah8DwMAz774giPE9vHUXFGGWge9TgtbzEvkmJ1mwDWvL730SOUJ
	 TguO5YImzKSpA1URoLPTyyGBi/+qPZQH71Tmdss3+7DcxHZ+IwlOQF1Z1l8SBHUnYv
	 BbzfagNVlRmYyH0rtdPRosNP4kfjde8IWFyN9gsrkhNQwj/yvFOtzT7qaJv1t6bADq
	 PuwHiAU7A50HrvIt08dc0XHs0RtQz9Ro0HzmDFsZ5gdIpjr0wSZcFRT+K6yyoQdwiM
	 Tz6Zc1Eh0Gc1RSQH5z2zzD19ufg6S9+xWL+5auIOxq+RXyaAj9eNG0s7DtxW2q1E6+
	 KJJchUG/DMrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B892EC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258011372.26549.11099698275961139967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6c9226b7aa5a6166e972d657c0a01606e10ab1f4be8a8bec5e0b098045b5d5
Date: Sat, 27 Jun 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782580113
