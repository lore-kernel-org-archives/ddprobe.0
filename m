Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C5517BD6
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751854794; cv=none; b=r1Fg1/iOkaFnIDox0UgaOhCeDB75yEZ0kn+ywdykcWwcuRv4zKTuQynlUUrINQU3CS1jbEi1utMAECxTnm6F20QNZw7OimSwNutAq4i5zVpOXBrX+VUzFgP3Uw+rCq5/MePnIwDm3jhMN2CN9OWkHPilNYNsk9B6xK5v1Q4kYtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751854794; c=relaxed/simple;
	bh=qr96jJNgFX9A2ka7kr2s1rmDjJIrAbI/B6g/7qYS2SQ=;
	h=To:Subject:From:Message-Id:Date; b=rMl42FIAo5zgNtGEEYF9Hv/3gtxz4PIg0vSQlNTvEMFmhz5NmTWKoIWB0fX5w/bird89cJSsiGSdsSTCeAlaQktH2eNp3hu/fCiQ22+F1g8bsGtIlASBkNXMAtW7+QxJhrV8ld9KQ88NhN57M+EqAS9wwSNCS1+99HGaOLZXcKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlYPlRNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlYPlRNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2663C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751854793;
	bh=qr96jJNgFX9A2ka7kr2s1rmDjJIrAbI/B6g/7qYS2SQ=;
	h=To:Subject:From:Date:From;
	b=FlYPlRNTup2EwyDvri4quZ0skrJU+GKKtaga7yGsA9IUqkVAzelA4siq+NGkX5LrV
	 fhEBFxHB6rLVc+8m+8NGQ0MyVBnw/HMNv/3kJWcqJAc7kCkhbEcUXqzG3tO3TgxNly
	 IqRm3iw/dYh8035wvWHI6q6hOQ3Z59sq680EQSIqHXGzV+csh1SJrgHOffHHXtsefl
	 24hO11bbaUdCJ7o4GyzUTY6VpIC5Luw035+pM39KlsUDhcBMeGWP6el6nWEqX5nsuZ
	 1cWD9qEbORXPx+8k7LDlpEGLy4oG/v7few3DI56YD4n1UR8u6erfht4A5IjM6yaBP6
	 e0k+C4o1Ez0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E266C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185479357.24175.11515809352941352441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5886f3adb2843e68e2f2950ab303901bd0fc2488a378ba2d4deac182b8848929
Date: Mon, 07 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751854793
