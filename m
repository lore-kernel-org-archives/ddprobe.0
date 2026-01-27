Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E0532AAAD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769498634; cv=none; b=po3bYoJfzB0xKdxvxoqd6nlddLXSRRQzMWSZ0z7j99mZoNDg1cnAwR+ZodRZcnMQAWGQ3N5VqmRsr/x5ktw7WGBQsr6n86L8756nkJ62svclbZmSaUeJyiP0xNaefAH4Nisc9HDNsx9pH1oSeDjg3lbz9YIYvTVHwnYkVu4yErQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769498634; c=relaxed/simple;
	bh=phalbTgYMlIHy37Lz4Ffy9uSxWaVB8G42WykdT82+g0=;
	h=To:Subject:From:Message-Id:Date; b=E49zZe6Wqa+FRN91SsYwGmES5JfAuBqSSifC61Gu/ddwsIqytLYAVqFhG8mPLMzVr2sSVox/uCG/Rg3C0/+7xgzNhdY61dVUoHB6WGvpBqR8KiRAM3nJli4LENyGArzM1d2JJNSZmvzuTkN4LqzdbpZVYeGe6aHh+A/8Ryrs/KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSrg+X4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSrg+X4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEF5C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769498633;
	bh=phalbTgYMlIHy37Lz4Ffy9uSxWaVB8G42WykdT82+g0=;
	h=To:Subject:From:Date:From;
	b=YSrg+X4V+1aybMZUJR4TGgECxgh8xqUifHgJFKvz7tgHGVopzbSgYnDlYdGqCKSck
	 Evl2pkLAz+qEcovV+5W2P03sMznT7OHoQ/Eyu9GLwiZvrB6LMHg6Ry4XeKeeDGWFl7
	 fkU0kuxAGiUYdDvywtNi840+xCYVQIvAC/YFOZREAwiWeMM1p9TVMM2jU1LNsNVMdK
	 iAxg72oGFOHANMyjNxyGaCCwTcEtl6s4FX/boVN5PVdeG3ahQkxdotVQkubQBaESu0
	 VlUus386A/xIF0LWykgrLbf4xxJODmVmeCQd5s9AM5A7r6xwbl+qUqSjAhSnE8rbAB
	 9nItRry9VoUbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3DFD25959
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949863361.6020.5827393873681490333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffed7a50816d0dc86c0d798acffe6a79b735175d7a46ded7ebf46669fc43f4d
Date: Tue, 27 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769498633
