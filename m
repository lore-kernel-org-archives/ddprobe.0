Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B58212FBD
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737563754; cv=none; b=FtldT2CpXe+9kdzEFnyvvopaXKhqyo/IfWuv7QufxcwFrXBg2lV6779UAsOpCGEbVE+ECd07aYR/YSabItAxoTq74XpzP1BC6GpyrLLoVMjYM7OZsm1ZYQBavgc+WqXEiVv/PTAqVueJubFrKAYhrpds14aKQ4G4p+86xZhi+F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737563754; c=relaxed/simple;
	bh=hkwgUP6LPo7f8aEFmRNZkEcRmxmjvgHdxWWFivKze7I=;
	h=To:Subject:From:Message-Id:Date; b=bMfw6YI6G7SYS2z4d/CLlBmTE4ys9++xvpuOyA73r7jgA2lFYjSzjlF0JhC2gjB9OsDw8QAm9TJjCypiW2t5M1GogCK3hHQJPwEIxAtiz8RgePZd9v6Bn6eX3Gm0dVOlujHWtFQHpzr0+BRssrPvPFpiEtsHPlByIeemkURou08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVPVNHrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVPVNHrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC60C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737563753;
	bh=hkwgUP6LPo7f8aEFmRNZkEcRmxmjvgHdxWWFivKze7I=;
	h=To:Subject:From:Date:From;
	b=RVPVNHrC50vWOZVNOPLM0DZ3mRsh1aQVSQJIe+vzq1jzgQpwmAIkQjtYtj+FjzYdW
	 3BAvWarMOTyH9k1SoUt4Uwfdxb+qr9RjPzWy+WkW/M0wGhb5z5amTYFgMD66Z4I07X
	 SmQHqp1N+WH8OV6Dz1RpnNbccl91gf9bMDinF+Tjz48mH9YZCt99ElKXRyjUin0bCF
	 IvFgZqYhYifZNaMX8zBV+Fsx0i2uUpna2JT3KvC4/MTByBuvzPAz02Va0BFbQPWQ3d
	 YrJ7pDvrD8NUsIKRd20WqM9D/7G62T6qMG2x/yqwem3fZ3tLimMpkJdscqJU3vJ6R5
	 sDK+fO19HtuAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952ACC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756375360.14506.8258795008847266176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22410cd9557aa8ce3eaaba11fe9f378b2251b3bb7de78d36e9823da618018b4
Date: Wed, 22 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737563753
