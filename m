Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A09D26AA91
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750019994; cv=none; b=caLVeWAdP6K4lQOnOLdfkDoyWxBDbfdxFJL0Jxu07tAPj3LrFvb5+CcMkGptH8BpgX7djlyqDQD71OP/9MrMQRbd38jbQCmj3gr+ZWnDZ2bd5BuFVHt66X0JVPgHDSiXfJz7SsmTyQz6/Ak8F3+NMn1u02OwoZCaLu5PHcIqCpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750019994; c=relaxed/simple;
	bh=sV2Pu++I1ZkwkQvR6UnCaVr56dbrOm8IxSiAZN5/Iq4=;
	h=To:Subject:From:Message-Id:Date; b=bDfZmmhedRSpPU7p1wYvtSZsXdZv5zWws7cZdWRLArHYtbssWqnKK4ICBkRniP/g6lagpV+Vh+qXnA3zKqg7l0bzYHt4aICLa7IkVYvIGV8xX2zV39cv12vMimZ06vrNGm9K6DyF4pyPeIbCnYzY0F5qq0lkQsNjvxbYSxq8sMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw8d3+Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw8d3+Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB28CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750019993;
	bh=sV2Pu++I1ZkwkQvR6UnCaVr56dbrOm8IxSiAZN5/Iq4=;
	h=To:Subject:From:Date:From;
	b=Hw8d3+HymrykoCxAQ2wL3Pb707A8tmMrsQQissYJlPuu6oVY3J7odAK6MvJB4DPPI
	 tNaIg+W2zXzd20qZV9/PZtRI6Uv25XI3KpBCD45F/y5BHQ8hldWS5YtXwJyOzgoTt5
	 gqPFuUWhefKtA2w+aDjOMLOijPdEn986+pgvip3SEGM8BgtmgPEHjanw+3r+a8pXRu
	 M5OHSQPZBNxD8xT/HZ0xx2ioxH1szPzYZaGvTAjxv0WDyMEJ/Uc9QZYo/AxyRwpd8V
	 TfoLdmT7cqqEsNEgFrNRGxu7XJmmqKSZnRHxHu4BrofxLcqPEpPJmcjjhSAl5q2CgZ
	 jKtL95oVd5P6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94557C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001999358.13623.8275443233514103841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60b1e31b3eea87d5c20e86c06d303aeee95738ff2e0492f2ead4013bf745cb6
Date: Sun, 15 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750019993
