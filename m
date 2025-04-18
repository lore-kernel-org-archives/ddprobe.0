Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA862686AE
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744945194; cv=none; b=YRSwzBq7xU+SEiBueL+/cQjPIcS5pPVyF644KG9f223YJKa7JvPdHpKSsUbFDsuOzXtZOnxcR2iv5vcr560U7xpWxCOaaudBjLYz1D1w243GE5776llAfZojj2++EhGj9Fko/X10cAXx69Ar3l3NUoG4TRpO279dp3BKaVorpxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744945194; c=relaxed/simple;
	bh=XiO/CWtmRYkL6+xo+qgfLqIv08Ju4JKt7m9CO+L/TCk=;
	h=To:Subject:From:Message-Id:Date; b=n6eZVZixbO1YqLhqe3JrlY/HmZHGllvHWsA5kUQXGk4m5R8stw9jhcARskXX/jIfVKm05RAd1Vhchb9Gr9kTmJKI8cD4If/logSVo+ss8xm7qdcUAoBi5axtlgHl/p0jYaEmInocvqWp1majEK7kU28A0aMUNgXbPUpLbi8vxAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6C0b6oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6C0b6oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2598C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744945193;
	bh=XiO/CWtmRYkL6+xo+qgfLqIv08Ju4JKt7m9CO+L/TCk=;
	h=To:Subject:From:Date:From;
	b=K6C0b6oV5aVTN/UW56WcTMo549mYyX4OFZRJ2HnmphB7qZbADR4xZQyMv3pp+/x1Y
	 tq/PB1aQRcVuLU4OszHsCsTY4wC1P5LvZuw+6eyukhAqhEL3FFcYSYZOJ3xKChUk2d
	 aZkEo5/ZvzsuRVprO6zLBUic7K1blU4wsLQoxT9zuAFFl1rXOfcOWvBqPfl/It5Zj9
	 uRTKRBlXKdqS0B76d1qMq2jNO8HGnWqP7l4DVQbuRTfQKyITt7/8INcEBcvTO/IT0N
	 UuqojGUM82Re8MkvYx0lYx/UPk6ou5pNIpNV6Cc1W7klh1w8ArHULUSXDX5Fs1S14n
	 ya0hBE5AfBBfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02C3C369CB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494519364.12107.10295324328497093466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef4ad2f88d845e64c31fc760986306204400bd32c203bb5a2f616c8fbb0cad5
Date: Fri, 18 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744945193
