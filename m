Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7701130A57
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712317097; cv=none; b=BbeEw8wyUCAkzlooaffvgufHZRhpMXVamO++cak04ttbDu2D/T73cOLFJ9XIMEhyGtmSEt3BMAcOKgbYsQyNhCxeuUvcLQaDEOcdxdPvjGW0CFjGE/7yT70MXXJDkiQL/ML3QuN/L689vv5UTpdZ/3glLrwf6zJbT5ohltHVQpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712317097; c=relaxed/simple;
	bh=ww0j5G5J/YD2Bfy9NNf2YiWOJsHjwwHzwTqi1kozwGs=;
	h=To:Subject:From:Message-Id:Date; b=iu0XtHLhZBZOZ1DkD2rL4rQvhEbtpMLwka9VYPie57QaeuMpulKwgYUW1Q+jnrnVLOKzK48RT1i8zl/EG7EtEMb66wjP40pXnWbAa/Ax98kfTsiyQpOmiBNP3GANX5nTwHowj7XZY4jV55qctaVfbbb3S9i52ChRqLEU31Qxb6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+KZl3cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+KZl3cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6C8C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712317096;
	bh=ww0j5G5J/YD2Bfy9NNf2YiWOJsHjwwHzwTqi1kozwGs=;
	h=To:Subject:From:Date:From;
	b=l+KZl3cETlFGji9Aqk9LlYmjUha8U9o+sOf7LYhVerEBTNngS7SyT30GcMp805wS7
	 D9y27FrBLglCxu5p4PICNaF8xYns8jbDhSK4SbXBl4pUlPCDpAedkAz3yY92RCv82v
	 99k0l9SX94WJXyD5kcvf5fP41T/Zt9xM9cBD2lxIrQXeleIHQYtkrEAQwjnQ0gzXjc
	 SHK/v06lOKlwpdFeZrRnw/wHU0npbs8AC2FA6llhnjXHSojn/8jIfCwE7iQTlrBu1X
	 d7Q5+UpHCQRQ6eT2DOK6IZp2DPjiCr/RPDjGBJV9SFyPcMxBDqYModL3o7ZvS5C3W3
	 fyRAGpccQTvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E69EC67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171231709638.519.4168492968832368111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340b9e251c805947bed399958d8bc14468f61eca39577910ed08c80650c8aa20
Date: Fri, 05 Apr 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712317096
