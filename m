Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432C84204E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720120523; cv=none; b=IrD9BAT8rtRkIDsmfgm1mBU0XuXvufPFTWp44EReXJ7rH0W/WqCcFUFNy+tPvv4pPoJ5fAe652Pckmiqq008JVOkwIY8/TKMYjGhmR++K9pEh+FJBJw1elW9x3ElcSloxrFt5ywR0ASXKHpfCQYQVWPmcEmZ2PlLJR2IK578+tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720120523; c=relaxed/simple;
	bh=L4EaTGxHm0Ldkmp47RddxMjpjD9NlhPMDTjWUAXembg=;
	h=To:Subject:From:Message-Id:Date; b=IIkeg8UUIsy/bytoPnXeuKFfBjb2HHcwRjSeJVbXNrsTd9QnlLAidsacGotyp2MFo8opegc9t8SN7PqbLheUTEQTT+Ov7Ulp9fbgR3kyctK0lpoEM2leuhI7/9SXX/QIm8igZjezCQwhZRM+ivOxtoGqEI935upL+l2szMID814=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6sklNhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6sklNhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF565C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720120522;
	bh=L4EaTGxHm0Ldkmp47RddxMjpjD9NlhPMDTjWUAXembg=;
	h=To:Subject:From:Date:From;
	b=k6sklNhnR0I+0Ye8KYUmIJ2mSO/kpM8R1yrPitdjPPYi4KzvWSl1GSGAkAXiKIeyr
	 WUXJm7F1RZh5xzLLupdacipWYbuv36K4yaus8CbMrdgiVJqTAC7DpN2JMWSoHg0hMV
	 sIBLTqD4d2aZg9F6BR47/Vd4b2yYMZrLGzoBrSNuVZaMSPPWYXnfJYzuOkUcHPM4XX
	 Jlwq4raXL06vMQ2bqnHLi6kr5eES6dmPg75k8vbZww5+YBiy12iZuBBs3AbGQVYez1
	 TLnF7Hs0wx2Sq0iVG1KIlaT/mLpmEcH7mJZLrwu9w8lt6NmWqmDNnuDqnwydY2CP19
	 Yw0/xIUQM9klQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD792C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012052276.9305.8640392154564086636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f506c5b05dc235056b81bff1d8efd43cdfbd6988e0b835edd5165e66c69bfd
Date: Thu, 04 Jul 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720120522
