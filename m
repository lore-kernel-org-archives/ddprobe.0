Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC43149C6F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756239594; cv=none; b=uX55bfalAhsAFUYhs0pG9PiE5IFuyG2g2uuRoCa6ZuuKHQUkjoXuJOSE6ajSumCoqTokcPI8QDwMFsDkCPRPQ9dR286ivpyKv8Jt39AqljSIqdInG6d547BH9um/NYm2e+ONuLJL7yFL+pKfBZwMlFnn1PjVCj1Qt9oYDMumuXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756239594; c=relaxed/simple;
	bh=1wEBEfiRbZVyND5qMqN9Ouhavtw0vHGeNRe1FmMFp3A=;
	h=To:Subject:From:Message-Id:Date; b=tpN3vixhYnmH1+O/EcTJAU0JnHStN6j5gHLt4gKwFEBSj24fvdh3brOfNzd2499ZlunQHGMFyuVAtAa9JBJ0YLS7DvufcSeBBWhxMv3cO/9+KIcOp1I62pQ8xBSEN9SD7eE5fPfBRMo5zJBpaWr7liNm9dIBA1dLDrLA5b2wF9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MC/o91E6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MC/o91E6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1069C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756239593;
	bh=1wEBEfiRbZVyND5qMqN9Ouhavtw0vHGeNRe1FmMFp3A=;
	h=To:Subject:From:Date:From;
	b=MC/o91E6l4Z2+25IM9c1tR6ukWwyCggb8xZ+OhX7pJZ+wiFtI1o6pkpBmTCGdmne+
	 /cvBt8k+ZbNyQhd/6dosCL/ie+kYAutZbRRDut+gguLZJQly2TrSsyl9BYTCF5RpFm
	 ON6/+ecZ2dOkitu5ZVHtgRFeS/FLa3qeT0clWeoOkjiZg4au2lrtCpGm1wFbwVu42e
	 Hoyc1H86LwnuspW5DYrFLXRcpTCMQclhmVtBs5Tdz9MTLOIxSJ0rQ7XM/2D9dWymd2
	 BMmkfxkMmcOdOAseu+eGbqGim5zsAC7c7+9zOf9/1v2JaR++lqivofcM2tgcoKAh/2
	 GInlu7ZJz7ICg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C1CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623959357.16408.8441064265023309120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fd52cf7861bc30dbe236abfc125ab8b44a40075b81488db7788c281e0dd75f
Date: Tue, 26 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756239593
