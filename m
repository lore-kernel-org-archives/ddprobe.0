Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F161551C4A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705669697; cv=none; b=hkA8cE4Bly5L8bskxkq5LCfHlrZx8Zeo2XsfDzxm0UMVg2KRieIWKfxPQuFqem7fLY7jiP7OkfBuKS4+EKSqlhteA17R9CJeN7trjSXaov3Yb2xtnNGV6bAexcQMXGbgWmDuj0Lqu9CT34p2o2JCxI9/zFK3Ll8VZID126opy5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705669697; c=relaxed/simple;
	bh=xD/VkAJgsz2qPRiykbUR7k2FN01sTDasx9nPCoyAyQ4=;
	h=To:Subject:From:Message-Id:Date; b=LoFxStuTpLEGwXUsPbyBSq1B7baHFuqMUZYbPfCCtSvPkRWPGNSYEe9hDizOV9ngLlvQpcS1ODLZEv9H7gBOZWcEIMPB03AMVW4x8l71uJPrFT4loKQ78GiMM70dO2S3PsWOYJPWNMlPn5wzbt1sUJxdtn1asQwBpdiNkKdnkV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZXu7VkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZXu7VkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D10BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705669696;
	bh=xD/VkAJgsz2qPRiykbUR7k2FN01sTDasx9nPCoyAyQ4=;
	h=To:Subject:From:Date:From;
	b=aZXu7VkA4jddKFsQ564j5eDczh74ChFNpJ5fYYo59CVfeCp3bA7OS+zQ636SJIjXH
	 ccblb8xtCX4hBQUr+cNfz4lqCDoNQQTVUQLdaMMIyAwXsG0x3Vd9qhbu67eq3LRMJv
	 jro47YgqdeuMiHOqzPgGvAr61Sh6UUuBaSWZ9hPFq0YNUNxx8pN8kx3oB9PXF0C5pn
	 VQP9hiGErHQrtuAKg0vYekTQ7/YS+aDavqwizPW3LBbkQ3l5WpAP6eRezw3iZ1tFvy
	 jAHd+CY9WcOvzyQDr93MetE2LgsDzOHqG7Gy53g1SGq8ypzm1gXRdNbhnjdpy6ueVf
	 zZifSKticf4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6171EC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170566969637.24022.2503196781849864252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae869f41339c858adf70c1ed3df73232b31e66e089ee4a4b38df19a1bc40592b
Date: Fri, 19 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705669696
