Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA183D3B3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727519754; cv=none; b=VLtJCC52jaY7COBGBjZb8EKN7Dr/nufdlDRS5t0nze0WnwjzHJTdmsFsgP4u/PmlVCge2gqL1L64FOD6Xp6HxcwLRcKoneVGPXYfGKTrF3FFPV9vX4nBtKIjAI/G9v5yD8gRrhlAGYQT9qYkLSS54NRv4WP+IsNPoke5Xz0lhkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727519754; c=relaxed/simple;
	bh=XGNFx26KoLGih/szpwAcO1WfBuB8VHpkcGk7g3bQDcE=;
	h=To:Subject:From:Message-Id:Date; b=QXMKPbA9YiA92ulWwIj48HP4wHfF7bPBl2SEecV5/wDhWihZ4IQQ8PRH14rPwmfTP14j9lGmUvNr8GJesDjw7GMAWh6i5FKqJLL1lFsWkFdDl6dYVliLUEwvRIUA9E3vUeadRys5lPm2O8y0AlyI0doG3nR1wusYPWbQ+e0cxFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjMDdZxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjMDdZxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBBDC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727519753;
	bh=XGNFx26KoLGih/szpwAcO1WfBuB8VHpkcGk7g3bQDcE=;
	h=To:Subject:From:Date:From;
	b=RjMDdZxGFAVkLx8opnU20LstlzctKrnZP59YIBFxR+YVzaks7k3Ce5V7KFZVScjVT
	 ak/KxbnKBSt7CrEmdHuEUXHTMnE2CBBAFHH1V+gxfKNeJ26wAoBozHemEBw9AlNlOt
	 U3HyDNGUD1AzWaSdm2Fh1G2S8t4eyvZ1oR+gvEUHFAogJ4+2tNmzZsO/REJ3lpc7Ke
	 KEzQAuSIDCcVmq8rkIYoJLPWMvrtfNk2gE52WusNik2QbzujOOAzAYkyR0Lu5iNlbl
	 MKY3nRlGboQYbZLUiwL7391Y0PSDvUOhQqSjNDn4Ehx3IOUaR/ESCVTlTAiLJfTlAG
	 fx09POFbQXIIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F6CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751975360.29598.6961254243942569565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e244c22598c95e8f05f64f29fec2adb47685f1d916a30b1761ea303d9995e8d6
Date: Sat, 28 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727519753
