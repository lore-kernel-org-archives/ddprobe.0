Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4BB264612
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776745654; cv=none; b=nyD5e4zugIiOTQvBgVj9XbkRJKsKtvGjZmTbQdlTFZn3OfUI7B8M4I9C3BjRiNyHWC6dZYiyifOrvGORvrYDsCgZdZwpLTKPAE8HYxiJL167kz00cCeQUPcrEQV3V1nVsUASoNb0hsYSLf0QoSx9CpIjpYDzlAZCi/9VBehfJRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776745654; c=relaxed/simple;
	bh=wale4Kil78lCVIcMU9rWdtl5jr9dGiZiq2YawPyMS4g=;
	h=To:Subject:From:Message-Id:Date; b=qVmIZ1M3uGlHVpDY3HaQPuZJkwTnIcZ0SvJwnhbDdAJAy/mkdFNgi+mt82mhxytYli8yLC4uibHOCDv2GBNTWM1v3whjPtJUIRmV7e1pqKpcoDnOHNVKPNRKJinejMz9dB77oxEBLkh1pG/WbgScW2paLdIOPB1765Apm7QkUDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeBbmEHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeBbmEHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CCFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776745653;
	bh=wale4Kil78lCVIcMU9rWdtl5jr9dGiZiq2YawPyMS4g=;
	h=To:Subject:From:Date:From;
	b=aeBbmEHqQ/RHfMs9oQtWcpyE20Z2GnoqJXiVY3YLv0Fux6fLfVnqOX5HMhf0Pbl7l
	 o9iDQbjj91KMPB7kzD+XfDj341Lpx53RTSdyZrPV3AnspzgiH7S+crAIHyX0naR6/G
	 JZiSFoBll9v/6HFMXvOk8AZ3KzjHXUYZf2a8ZoAK/UhGkN5k8tKuLRZjIgGZbGHwMU
	 Dp+z6b/rb3cmJ5UYZr1IAJi+Mby4SIapJ/UXZkSrx7diqJhpxMGqUcJ7Hb6FUN8wV9
	 LJpujzQm7gSAy0zKJ6aMqGMFzdTh1oE1+ObzhzXogd+zE0ip6GTUa7+I3UBTXe8umS
	 q2w389Htc1JMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07A3EA7184
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674565368.8824.1757812233448017601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0958e063e355095dc3f720b760c8804f0ee9ef5172d1d49573480abdef2e30b
Date: Tue, 21 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776745653
