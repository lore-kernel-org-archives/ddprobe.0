Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B6680039
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716488003; cv=none; b=fNb1dnbCOfCwZzP4sE5x7s34kQFB03WKtpveP9qX7GkZ23jQCgk21F1112pQZ6+egrW8EIIDDfE3oiceQceioWwRHNj9Yy9mfJQhuHgGq/p+R2PtnM5VUMQXUZg1SSS467Vn0QvkVmxfzam93x15StNicz00EQ9SDVlKh6jgbjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716488003; c=relaxed/simple;
	bh=900jxxMy+tm/hNf68yGitJWh0Dglt2ocLkarYT/e6MU=;
	h=To:Subject:From:Message-Id:Date; b=QK1JKybDT8W8NSUAu75nD2M9dzujZi2LZzv1ilCyb5UVmcto0C5lr82Yls4BihoMdlHMUiX5OnbpxBMNRaTJpMbWGJJWtqx69bRMYbT8zhTJJTSduGh6xg2bFu9IE6duqECD2H7X6PCXi6z8ReQ0J+PUw7g1MQAUkRlwo/QMbBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smftiddj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smftiddj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEFD0C4AF08
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716488003;
	bh=900jxxMy+tm/hNf68yGitJWh0Dglt2ocLkarYT/e6MU=;
	h=To:Subject:From:Date:From;
	b=SmftiddjG0ckmnCLESIHk284O9Su+8SmBaejcDxSMPRadZpjdDos829sTzkKyAprD
	 RtGmM0nRjxtsk9fXA3RjYzW08wnIEtNqt5TDj1P08Sz1V6Z8gktJ5yYj7TdaZ75W9n
	 snfBs/zVVrZQRTKnWdVCqyXsEZuNleWK6GRWM7VFqeD1ZouTR2moxjq4XVESllFJ2n
	 TVf6m6dsw/9VXf1tfG1dBwiO0LTr3E499mCiFlVeEAbyPu72eF/t6oLqQeUEYii6Oi
	 BWNSkI0UaF18nsfa2FuxI4qAtK2CtfK8ZyoW6CbPC98nMEiqiE/qH9VHMFgg4Elc7D
	 5Lyfuw9lMQOrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1560C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 18:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171648800276.21066.9231675815463635600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7ffd025d9c67ba6c07e612d4908098ba2c22bc5b4a9247b717229367941387
Date: Thu, 23 May 2024 18:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716488002
