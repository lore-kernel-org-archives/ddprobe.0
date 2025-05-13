Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F86C14A8B
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747152594; cv=none; b=fY+gFvyiskMphavea1Xn+6Cyz/QUvhYLvHh4BlQc2Ubf98DdWu3vmQVADpvzAWIgBj2SdjHjI7kVLBaaDZZ99AaKtW0p9heEJ+5cQTeGH5mYJLxcG9lJPbh+W98xspsMvShxyfxSzHaBDPHoh51dRCrUdHo/Sz8l0NHWghDz28Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747152594; c=relaxed/simple;
	bh=laq8kBxrSnoe+QqBa06MHrLvgzioS6hdB248KvOpm2Q=;
	h=To:Subject:From:Message-Id:Date; b=mYUFvR0CCHfSL9Zpl2lnEsbEhtUVSJd86jSbWKCME0O1GfklvTLLlaT9yEUqzI1eJZPSfrY3Dad12daRrmKNnSc5+O4UwOEpZ/Vlz+7mQ/mI93NZwqi9DIqxCZ++qi50Vn3/I7oCFMpihUvVLMMFChggPqohHPAK1Qqfv2HUdlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neP8jjdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neP8jjdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BABC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747152593;
	bh=laq8kBxrSnoe+QqBa06MHrLvgzioS6hdB248KvOpm2Q=;
	h=To:Subject:From:Date:From;
	b=neP8jjdctvCSkPhIJMLbLj2PyaoM8O4GGYtiFtpfdqmuRRmRCWYeTm/QhpZGdsEqC
	 Jh3omfn0tIM+VEbgOYlZEb87FJJjIjXFTlMH8OmpVeYgcIACeZl19LA5/Rt77OwI8k
	 tfP4YsDfz7cZkEVsRkO1lM2R6x5QRmO99y41Vi1WzreN4Q/uU+EOSoGY6/+pYNaeU/
	 jvDfQKMT8i46Qrtoh+hW9faEZzCQRAxuS4JdBZKX+Z/QOazavAWtkWalxSY4gmkb54
	 rhkNkC0JZhBe6iIuludRmjFrD/3+//ox+QUEk/8U7gKlIW74tM0r4HKekuJOeTORqN
	 avyFU6/DCLXCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF3C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715259359.5525.3835014838976375483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81254652e2c4c6ab7e9f2c0d21e8ee6c098250e66842131988a09ea45074af2c
Date: Tue, 13 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747152593
