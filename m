Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429861DB95E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781316994; cv=none; b=D+dvnbZ25ZBaMcWFiNBCc/jM3DF7RYeEKMmzESaAj7seEd0YDahT4yJpFUMGvyT4GN1BZRvOwAmUxaZ0nQUiGFiOBbIPsjlkOjAIESDZv6w/myh6D0ZqThC240Qh+eS118/juFx8VGmHc4glBYq84OXUDU2RNqNRwKDGzaUhvuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781316994; c=relaxed/simple;
	bh=s0Ig92tjHZQ6yW8Cm4WGZzbQpTJlJHJG5zzbcoXcbyY=;
	h=To:Subject:From:Message-Id:Date; b=rH9QAr3CduntbqZ1rP/9deZqdjWuc6q1PxmPQCv3Y9LhZRapyifHd1P0DPWy3rnxLuGn89dx7BMVS11tm0ghQJclZveZofalTyETNn2EUzMWzoGWLAk5xksiWg6wUFWpoi4gqU3jBDPwbYPIrL2T7o2G94JWw/YG204psGpLknc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1w9Sviw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1w9Sviw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45E4C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781316993;
	bh=s0Ig92tjHZQ6yW8Cm4WGZzbQpTJlJHJG5zzbcoXcbyY=;
	h=To:Subject:From:Date:From;
	b=c1w9SviwwKJa+sTHuhEMQ7XZwavqEDZSZE75tPfuftZtjufdS0eUkzoCnH4/bdeRn
	 YHMPXpM2mifA0MbevfdGoMlq6OC/AiKvYEhSkQKJ/4mAKRElEtpEZnLBEBTWOm34/U
	 11kia8u168o2KHUpNpjLDyHQq26HMlRD/+BRsn5AFvsiJcU3Hdu9JTXsPAFspFcvSg
	 bPrwyz+oIoWpf0wVfInn4m2++DgiKaZ2Rzgpqq19gLkCP+oOEgCdZmVZpazgUT2vHE
	 brX1n10HaRjMWL65HmXkM0QhGIT3XaHx0MwiXg+rpR6zqWC/YjMU0Av1XanWmsiXys
	 LhHvMwYByLffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5F5CD98CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131699368.17176.9700706670480760170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265d3d1842d088061640ca647759696c1409970e8cf0c1fbe820ec6218218dcf
Date: Sat, 13 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781316993
