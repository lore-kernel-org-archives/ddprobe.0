Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851312DB7B7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781210194; cv=none; b=WuLOF2iANzK3iFDJVgMptecCXgzb7U8yzw2Ty0y6w29JuQR/ST7X3jn0aVsqLu1B62PeL1IH+n4yUY7bw/sjJJrjOxOYp7yEEzndCIjD5UtOmvwyCDM1n7QHwIz04BE0VH5PkAZrae50p/d0YNmLDJkBD0DJbyEaw+22XtOzDu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781210194; c=relaxed/simple;
	bh=9ufLGfpzYyQwuZirro+q+zKWxnbhvjX71VupB3lmEL8=;
	h=To:Subject:From:Message-Id:Date; b=JPleK4SSWclvKUgnoVkkP+3ijDd1IneB76Q1VUADzctayUxnamaojbieYjDl2e30+y/2/Fcry5GcG8oYTEnIoLRy1l9k6nMm6tfh//PXKFBryN3LCX6ruGfGo6K5wz7ZZLTvp55ZIFf+TirVaKTZPz4liEMrXl+BWvbFaxYKhtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc5iz9L9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc5iz9L9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 189BDC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781210194;
	bh=9ufLGfpzYyQwuZirro+q+zKWxnbhvjX71VupB3lmEL8=;
	h=To:Subject:From:Date:From;
	b=Pc5iz9L98tvjKk2aytPjO0Bb2WwuLZBU1nzuTj8eLeoAHUlzXYwlt9r+SW8LEKWoU
	 I35IAKr5IB1oLpcIvOpcwAzVnzySwCtJtz66jlW6cjBoCJQ2mK4yZZwOz6HeKOZXe4
	 SF/xQBRUbzbsFyYW0yku3/K8uVrvOZtoiSaWvjgz4wMWxtgdxSs5U3edcaObFoLsKF
	 Wq7sO/zrnPBO/9EXgfjjbsdqXft44kSbpXxp9+0x89K5/HyR1BlTKYSXgWVHh6V3IS
	 I8fRrc1SUhXA9NpCMsqBm4xKZCpy/VZjVDSsTEN3j9mrPkYAhgGwrGGu/d3spWPtjj
	 VklPdgeDIb2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D945BCD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178121019386.10016.8662552360576642350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c1dc6833113cf74f11c6261c0ff0821a1268c6ea1c3c9af7ca3aab56c01aa5
Date: Thu, 11 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781210193
