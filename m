Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F211C3BFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788070234; cv=none; b=svxcKWLtTBT/FfPIjEBsEIH6IxiwzKZ12slfgRA7wh53CagrzEOUAUVxqHUitFgyKBwSNEOglqRYo+v5MrqFghv/7bW1RrMI3kr2PxcDcJ0snR2yqWUsTASKDqU+4o6jUGBu9fzRJgzr6FpUpJqHhcl04cXAMg/R6Z6iHTbcHfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788070234; c=relaxed/simple;
	bh=42OxEduNcVWwWblPgXyU7BbBUAu/anTtp5VUlPOnOb4=;
	h=To:Subject:From:Message-Id:Date; b=Qp9/fOsY2einuoMFpI9BQMsGas7ewucx6E35HmYpnkZXkaNR9hhqv7YMeAZYPN638KRqI4xJzKrH8Qf8jPfX45e8K7WPoNlP9Ghucn5OxujSBhwR6VU/VK7ad0VceUXKBTjnspGpbDaHZQYwV8aHeqJ9nu/yPGb0kB0U67yvvpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0OB6k8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0OB6k8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A72C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788070233;
	bh=42OxEduNcVWwWblPgXyU7BbBUAu/anTtp5VUlPOnOb4=;
	h=To:Subject:From:Date:From;
	b=N0OB6k8IccHWNNSHTNpvwfvBplcXgjDlq++TKdJfEhI/0WBTQCE+5YnatPv2lL25z
	 jHqlDV7Ws8MIP00hLRwDXzw1KCP9Q+Mpsp/nWHrgH6M04IDuE+f31Bll6Tk8YBYwNm
	 w822JsEkMBldNte/mMifX54h5fvmB6yR+iILKQPH/rbrStf7pn2G7WKwQYj3cxY4K1
	 KHvSow/IPJyX+b1b7nF4C4PU0DaYO8sLojeXStMKaVS765J3SIJuqTgssYg9+HLAzn
	 F0ULm2OBNG2gJwj3+hyNOs6K4YQM1ZmFf2FYbotzIvLP29GyEMJNTsDk0l9ZYINe50
	 7dgM5NZT4Hi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC3BC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807023369.32347.13279986554030931306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd1b320b30ad2f36cc84d32e4eb0f3c5a5ec6395785cb15729f3917918f6937
Date: Sun, 30 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788070233
