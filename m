Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1000500967
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768717434; cv=none; b=YLxqwIWdfWlFKskJkI4YFBuCi+UPi6p9VoSG5DkvhCsy5c3qeMv4dW4jJyyvRrYjyq6fF90GilX0ddpF1AvzmywGcRnl/vjS7YuPBzaUNue/jdmafiYZiebwokE/0vSGUEczPfZB5W4QBtXKcg24dhGSOlIfxUOPBuKEzzurgkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768717434; c=relaxed/simple;
	bh=G+oOQCr3QSjtPvKxu8w/EM0vTLSNFUdtzDIL0GCtd2g=;
	h=To:Subject:From:Message-Id:Date; b=NQORr15uugWVzhIdxcNSiJHNeMR6rACGKsebkqiDHI/VK7b64ntOZAkcD6GyoWF4M20u3fmjmDGQiVuizypzC1pyfAd+Dmh9RXFIlTz2Eq+EmGcfoO8AJb10cUC1wnV8A381O5cEs8swpgvNUhZDcrpVDkDZC0H179JdCwPd1Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMRKWZuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMRKWZuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6082C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768717433;
	bh=G+oOQCr3QSjtPvKxu8w/EM0vTLSNFUdtzDIL0GCtd2g=;
	h=To:Subject:From:Date:From;
	b=SMRKWZuLad0uhSokYt7xZ9tIyhWuP4EuzMsdOmkDsQOycor1zYwCj+1PiVYSlSjVN
	 p41iwK6nTh2zaWhPTFH4TpOs8+NwX2tu0/CRT7FQEhu9OAn/7q0XHn8WQ0438Vryl6
	 2pjKb03QlrMlh2LzX302IKMVASSXdAcxvYVttR7IcF/MRrtkj2j2dnOnVILtRLV0Ys
	 O6xEFIpXlY+UMjVCcy68oXcq1zzB/MokiHBqIeSgUS4RwB7sm8/qMdBSAVcELFuXTC
	 V9+D8NgXYyhBPSs1gM7U6JOkU262Yh/2BM1CCaAM+uPQCMQMxPMAcJZdvaomELtruD
	 kD/l3bGY5+gWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE8D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871743357.31385.14794244481807176290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84ef303830e239c3e3275e9e478c3f726c53814304b2e44f72ca11f739826da
Date: Sun, 18 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768717433
