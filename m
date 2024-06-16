Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF2A19BA6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718555303; cv=none; b=cxP5883uvM8pQqsJlnLPnBa8Hz9iUjwqVmBGM3U46EKBdUw3febvYO/VsiQ5XoGPDOYmbfFktdMnZRiaDpOOaX8J6EwUjlpKbUvJSCoOikm8NRupMHjJnpO+PsSAT+FCMLjZ0QhQHygHY2icLO8lR5ZxajrILKWdMgPjYRYdAwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718555303; c=relaxed/simple;
	bh=D8ux3Nq6JXZP0glpPkXddnsb97Pua0Ik86Yb6VDFPvU=;
	h=To:Subject:From:Message-Id:Date; b=V6g4PXk8/tWsGSxtGeO0JHa+PVg8uj7ZDRtnJk0PApBcosxphXPf3vSxxVCPtT9WGjK5jYy6ImihRHgdbtNEo1M/6miXAW+RrvWHpE9S53GPrTTy3/+hz5XKnALUxCNlzdCZPcmS7rsuNf4zpAHJ7qNT9ZAJcGtqWflWfdqD1ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZbdRaza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZbdRaza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAADC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718555303;
	bh=D8ux3Nq6JXZP0glpPkXddnsb97Pua0Ik86Yb6VDFPvU=;
	h=To:Subject:From:Date:From;
	b=oZbdRazapyUo6k8AMfuBF4YtWha3zoFXrqeX3IZI8qccZpBt5mhm5P8P6pbC8Oqrx
	 U0gcJhG7WtxZxtJ3ozu1KauTjpRxILUG5JREeFkc8mnz2Fc48su/sR0y99h6bALI2W
	 VUaVFwr/50An1whZBsRhlJdZzi4jCNxWd21uQZQvzud0NXKtQJ5wv8jfG0LizfPD67
	 Pyp3XgAy77RAY5056BoJU1WkE4wSIku9TcP3zdRC72cvdT7XaJDBD+TV5dz5i2Rq4/
	 z/4wc0PEYwZKLXARmSPMmn4IE5rG0Hp96f8iYzKsogo8rr9/EYwBLrxs7eNseOS9Ei
	 ZIouitKPT2OrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D55F0C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 16:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855530284.9071.17044196451978772953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1908def6db996998a38743921b9f661e16da709cf61bda3c6c11658ca5a6ad76
Date: Sun, 16 Jun 2024 16:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718555302
