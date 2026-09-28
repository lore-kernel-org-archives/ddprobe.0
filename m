Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE954BEE4A
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790604034; cv=none; b=TE6/VAGVDG4JCIIOq17n/T88ooq20DOypSfZyaO81frwoYIovETN+CuoPKD09iMugYNPqSE4yP0zd1HSYMkxLcbuM5jKR3xQIYNckM2ZBp7X2PSF+HRYlIBcZKzYMNh17ueFrk8ns7qQX+Cs4zEKsN6vYDtjLDMuhSvIv+3982k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790604034; c=relaxed/simple;
	bh=x7t5au2KszMHchyynPUWFQ/bUFyymH5pchYeNO6VT7w=;
	h=To:Subject:From:Message-Id:Date; b=EAQw3W3DwJZTgbe8ddSTK+HpEAd2+WUVjMdb9lDu5U8fpYGAFCsWiZ5obTp9kKeHOHoG94JMLPp2V6yzfkLHf4vAqrs6tDqkUD2u+I2Rswv1N44YLs5erP/BYLsK1k7spCAbO33SBJyozjmyDoWtVRhBOKFnh6oeWdNAFQ5o8aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RThelbxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RThelbxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01CEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790604033;
	bh=x7t5au2KszMHchyynPUWFQ/bUFyymH5pchYeNO6VT7w=;
	h=To:Subject:From:Date:From;
	b=RThelbxIKXHrFjeKHuEyaV00R/DKmfQ5txC4am3YCMeY27q2jouLPPXyqKaH2ur9l
	 s3yEfXk2exCBq6QsGGVLAoIYhSDecG1lxSG7eF9c9o8oOzc8JJ8dRAzS4uHxGcBXJm
	 oOAdtRsEO+cW6mE1iWbMli/0C42yQqn4ilAnhHYDjBaDthSFPUYWdwj4vMF7Zqyj0Z
	 migZYQ1igM7RpUB9XUJG5o/BeEp0WcXAXaLXGPb5QlLAB75tcdTFk3UrVxK2SS+7Vf
	 OnMAs7U7QJ3+W7+c/HGSIZ5+YUT6SAxB+LoHm6BF7UyOIDXZGqSfXENGGt7SBBJIWS
	 lxC+RD2+Qigcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC48CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060403369.1616.17975078304496973644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a143be4f09793f19f5946e05c12958eeb408860b8d523d976399247ab526cbc
Date: Mon, 28 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790604033
