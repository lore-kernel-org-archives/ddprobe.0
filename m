Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3E71D7E55
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725391554; cv=none; b=UR1n915vYQxANwQNPVegDay9CqeQu5P5zNrTf7SkboGotcgDiSYl1CJk9q2yAv0i8SUIuU2vb4gFHJo7Qgt37MN3V80PvirNgL6D3y9SRk5eFwa+v54LZP03EGb7kat2NAbCnSomnMsL3YkUrWhsp2YOAVf7XIFGGX2MtMrcfEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725391554; c=relaxed/simple;
	bh=7VAn6AE1tVonSArc8RZjYBuLBH538l+vZRTqrrbuLdQ=;
	h=To:Subject:From:Message-Id:Date; b=RFssUWcWrmeORN4RS+XVOdCVQonKgMmvXL8AcyLi30hvyVKM8AgVKjeCdx/z463sMxG8DRlU5lfcb5F6sU9qyV0po0kafJPp4b9a6tEWpCtJJa/jzqJx7qln6y7dDc971am/wZwVKKtIBcsKTtkef3MP+oNYzAHO7ZHp7UVzzG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3YV9HnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3YV9HnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA24AC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725391553;
	bh=7VAn6AE1tVonSArc8RZjYBuLBH538l+vZRTqrrbuLdQ=;
	h=To:Subject:From:Date:From;
	b=k3YV9HnLUHFpYB/yqG+S2711C0i2/ed3IGfbVvCWgDfpBex14bdQNcwFR4S79H5Y3
	 Cw+RKR1oapMMCF8MUSyqCMCGOIzrPa60/uR+hisA75Tqa7HT8HIyv1KJtkCl/IF4YA
	 meylPmnjaNPPGeCQr+Xos4p2dvz+FhfaWOyal+CUUaMn1lcVrxepqu2krSc46bQjD/
	 uRhcLMnAX3qvozH/b1wuWGSmaZ3J9Qbi+R8GQyYpgU0jBVRhPHl25iXpU7+wRCJWH/
	 ja+03pSqiayt4T+Suo7TjOM3oQgVIGGlLKgBcN3OpwwbOx6Hj3El3cGw/vEk3yC88X
	 6NvwwPiioz4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4ECD37AB
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539155367.6867.13918283475153924329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4066817920392f15626397027448b96fa24fb808e632469aafe3416247f24ed
Date: Tue, 03 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725391553
