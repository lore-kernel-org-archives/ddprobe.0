Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47373EED6
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727024754; cv=none; b=YCazMHv7OcYzwjsdMc425t+lH5ekgs4uhvD/Xrwm0fha/PRvIJz+l4peL9wtZ+rTbvGIcAZeR8UXkj8C5ISC7LM0dKnHSvq8vb+9WsXBFpC1J2vPb06as2u4j/1y+6VJgde2q8GA4J1d+HCwA06ePLwz+eue2z5A/zHH5fLrArw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727024754; c=relaxed/simple;
	bh=ChIuWglviaeqtpcY9693fpK+Er6qLP8saE+iG6VsfL4=;
	h=To:Subject:From:Message-Id:Date; b=Q2lfGi4EL7dDFTBL+RBv6MXGQa33nNCG6wK8fN5dL4wVayhkJ2lF+GbFAn0ElwZrwE2isfUfNjzFUxuM42CDbLBH8cpcyLEYLJGrtr/UCH4QI9e4H9/Md3PW/2DaKqe0GGS/6aBgKJdkKgFOJWRlIzDLbTY9LnQSPoIgKdcgTT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMoWEfFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMoWEfFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB3CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727024753;
	bh=ChIuWglviaeqtpcY9693fpK+Er6qLP8saE+iG6VsfL4=;
	h=To:Subject:From:Date:From;
	b=eMoWEfFS82S//Fh/GxwVqt6SsaHH4ZXUvEGc0hF1oNXIIe2+jGmpV5Kf6UpLzKfe8
	 +yYN5UrRSyIM1HbL7YYVAlVl0tWT6nA4MuGvgdo+nafIh64OzWbnZhtj/gdK+Tg2KL
	 G4MSDYU4rGCw/qMTlqzKILXYS2oNOFaYHYbd8478BPG6frkWh/+Hyp2swAV2Y/5IkC
	 YE9vwifsEdgw0/fnpDb0mhLjIaLT/UxNE3gLR7B1whKWN80kna1vzWsidxJXI2OAMY
	 tKVih+/a/96LKHIybWfP9nFFdtNA3N3dmg0UFyzSgRamri5ninew6YsaQO0Dwye9/v
	 pZ2qOrnIACfhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70A9CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702475366.17416.16362052625892974051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15cf8f5a4fec32cdf6280150da6c2dcca6cd18e463e5e7840a53f3c0e450fce4
Date: Sun, 22 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727024753
