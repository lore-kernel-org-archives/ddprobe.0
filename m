Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1C27262A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764508974; cv=none; b=FwnQsXEfzQdGNNPUUTjQ1Y4U6Ay1Q1C89dXqBjFDvSHhwe28ubOcI9Bn3cCwLtzzam6QepbY6I9+8tGD0+JJp/y68S3pzmNZpjUKQglIPTGlQLZz5uADbVJ2f2peMguGP+l8q3T74wBH//1R0Qc6RFp8/Arfe/U9f5YQ+hiYmGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764508974; c=relaxed/simple;
	bh=j0E9BWbyb0vblISvfz1dON3/zGPuumFyxw4DFHGcH14=;
	h=To:Subject:From:Message-Id:Date; b=t9SFdO5qvink9Xu+Cpx9VqP44EedfK1He0gNbieFCF2CMCTXG0ZC+VmCLayjbBu7mHVr5jaI6KiXw14EefD9M+of+NaAdpa11dkbUHhUFVfiiiRbmRkEucOSEqvH5q9apBEZwlCIXfOQVi7DuyYmcTJHncfjhFiai8y3F65crDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnsmsjEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnsmsjEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B426DC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764508973;
	bh=j0E9BWbyb0vblISvfz1dON3/zGPuumFyxw4DFHGcH14=;
	h=To:Subject:From:Date:From;
	b=cnsmsjEyUZsNIfVNHX6FhwQ0mseUGSUKcSJ5j7+/5HOxWGp9qcUhf+qQaYHTSgpNb
	 GMM+wam77i72i6F84KUZBVVVXhgAvGihgLG3qPXA9ERSv4pzoiaO03zIfn17HRN6t3
	 Poazn2nyzY/lRcMd/MoVVQyt/FPutWvKJN4xR6uvzkiGdD6WIMlQg+jf3RFv7GApn9
	 9te5Npv/WKaSjGKEMqJU7ndhturUaGBkI1COsGDeOfj0dOymf+w+rquWxPDlbLR3Z5
	 wV7N2M8hi9SqRPwXs+RH3M9pUGsgrPkzU6kHb16ZXVqDKtVNxGdktElxOsCETabB9N
	 H9J8uZOZcp15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1060CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450897361.3453.12142198667718043964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c46bce01310b675e55fe432d72d06a2c3470f1313172dc9e47603be49f685e
Date: Sun, 30 Nov 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764508973
