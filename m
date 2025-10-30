Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670F260587
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761802194; cv=none; b=BblADlslMZDZFkFnGIlPP/JWQ1lIaDnmGYKlRShkRQsJ931YGUrNDXs0I7NcvW7Up9wUKoBw19bYJY+VrW45i+HoLnBvXJpYY1x0YhXYJXBPlklZQ9a4kdS030SZkP4SEPvN1TFOQM1+c5DK3yF1wOFyk+2GrnJUtulsBFUR/no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761802194; c=relaxed/simple;
	bh=dwo4O+c/qsCohdSro+6qI8oxeSR8u50oip/ss8x3b14=;
	h=To:Subject:From:Message-Id:Date; b=BQqREhg1KyvH/xxJEeeNAX/hnrVawPdZyKamFYffczMlrUNBvBarRuqiJ+g9hK3tMK5shiLqiXyzNVN+u1vszdf8owr8AZfErBZUbz04+bfnPc6kSQpt/T8sfAMFRB7tkRB24rywAlgBT2jSUVYFLD7GGDJeCTiU9bcnGr7E7+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQS4CRYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQS4CRYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761802193;
	bh=dwo4O+c/qsCohdSro+6qI8oxeSR8u50oip/ss8x3b14=;
	h=To:Subject:From:Date:From;
	b=iQS4CRYOnaPCDPuOp3BLGGC1iFMif9NQbAy3ffhW0f6NhrPbVG8lTRfZuF15zrT9S
	 5hAD37j94MRr+Rl8QnM3WfKmsO8SrSSleohXkbU66m5Q40I3trsVOSKgGBs+1++bgZ
	 8c9bDha4xB4FOM6spn6tNTwM4+LP7Fqm1GdhMXO3CJZ2A/oU1UO02l0aT8A3jV/g/W
	 H2AtEGPTM0vNvCKVVtqzw2xi6JtVA3nNuquxfwY7RIRn70xc6CTULDf4D5Lt9o7uvf
	 JrS0XXCaIK7ypT8ejEeUT0bZ4neA+VUzVVo9SWkeVt4MSWYXZo0gevW9HCH1K60NWu
	 g7xdtjykrsDJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB1CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180219361.6035.15900770727589107264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361134648389194bd3a7d90adc34cbcec2227a7b549fbbf995819fedfd1e48db
Date: Thu, 30 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761802193
