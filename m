Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B283CAE9B
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792311034; cv=none; b=qJNXrwISdZHyqr+pJrRVQbbEut2gDVMYJdZqSnjzmtUWAoYgJ0jb8chuBo4w10xzqIn66WpOZOZ3N6zggdvuid6t53u9FzllHZZEpImgebJhNx6Eh38HM++PqdO+gICx5d152PFQyObZAU5JNbh0g7qDZkBDQM7VJcRP2dV0oQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792311034; c=relaxed/simple;
	bh=VYIjfHzWA3Qq5L5uvHRT8GBDJ62KzHsX+v0z6tWhYLA=;
	h=To:Subject:From:Message-Id:Date; b=JKkLIEqH2V1NuzDl1MKmXowzPweU0V1fw7EqPBWu7osiw27Yk8E8MoXsfJ86VnwVrx6YQFYODaj6waWMRUtw9Na3PBKTIeg67/vmc1DhCIovlE1O5UUOHtmTAAwUCFVM+YeUNeIQdcFGaPE0vyvQBy0bsE2ow1EIw/Zi4qkcMtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgXAQQnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgXAQQnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6E9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792311033;
	bh=VYIjfHzWA3Qq5L5uvHRT8GBDJ62KzHsX+v0z6tWhYLA=;
	h=To:Subject:From:Date:From;
	b=BgXAQQnY4GRKWeQXaKCP/CvaRTwg6fu0713ItCwveErQaKQ/5Dsxg1UvqMSouZZFl
	 ASeXAAzzSoPnfBwqoztHvwepucmQqOn5inqhKab8mJOaInFYbVDyPKprOD+oUM4Y4X
	 Y1NLbAosZ0ENDPlNR8T41vTu9/hwKF8dEGfR9yfKP21Rb82McrsFzU5Ygz5LzmfTF4
	 zqJHfdaIsWJWA9bJyjeDmvsWVcvvU+YBt/7PMw8pHLOAWsy//ZNLD0BtWa6LpBdbH2
	 ByL8gC/2lFrKrFMAuSxPhthGKJQ1hh0yZC3zfQV5YvDVyb8gnIqQqVwWd4WKB7cjv+
	 bZ7954Q+R7INA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA9CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231103368.27881.15107772638026923543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0034024864bb1d8c0930a96192bf2e7027bf450c5caa34bf0c63b0f7656de9
Date: Sun, 18 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792311033
