Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8BE187336
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717760243; cv=none; b=XE+xBZLavs2xVdNaDjzyPjWsudTSzLJPzlwfVqd9YQ2RKyJ1vRIjoWUa0YRDJEy74MkgT6FOliomZQOTmrnbaI3SEYwnIFBrraw5WC0/5rPZ/TtrJvpWRjeC2C5ajRiOt+s1kbIyVpjPIJPTB1yseROjz0b/SKbPIIC04/G0GK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717760243; c=relaxed/simple;
	bh=g6n7S5KeL+ARDUHd+5MyLbhZ4uPddkRKNEPjsCC6Dx0=;
	h=To:Subject:From:Message-Id:Date; b=prC2aGuZUkPXGFpFCsQnxg+PEvXlNqZNismzLjaUWWRogELUIhi10uaLzSdxD9e89RBWd5svt8UFWPO83wzf7ZVngGYL1Tn1+w5BBl5YyzdeSUOMq7dzHRhZHiFRl2HKpAE18ZM0lsTXTc2/D7XzHPiKmmi8jrSEwAtqQ9jN5zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTaKkX4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTaKkX4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1624C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717760242;
	bh=g6n7S5KeL+ARDUHd+5MyLbhZ4uPddkRKNEPjsCC6Dx0=;
	h=To:Subject:From:Date:From;
	b=cTaKkX4jpqp+HEK/0nK6+2lVOsOB4dX9MW9+BvrRsy73PJCxjM0ML1z5VHTSYTzvM
	 GsIu0s/3xFC3ucy+c5c/QI0j91PRLS0g5JV1mCHg5TFcsrgaCrNtNqamw4BFbloOmd
	 yawQzoGSgyQ84L08iLYt+F8yMCwEGMFLorO8SeHmVkS9+nKgt7OIJ8jI8x8WszkfAQ
	 EEzUcSsdTz/sThqP5HLQNrZs0RMHngMWEwrxlyR7Z4tZeEXnvKo6eKX5v37dznAua2
	 5HDiHBvAQu7KzuXoucBpmFAL6BQr1NaPeO6hyGY/MSwT6wLp4zN4T9M3BJVQwQn8df
	 fLq38ztSFLSZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC59C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776024282.3420.14186169573000678304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6f81fe559cd0346250f90212163cbe8cf4f4c8e587f034129bb73aec6fd490
Date: Fri, 07 Jun 2024 11:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717760242
