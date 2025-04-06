Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4453E157A6B
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743955794; cv=none; b=k+LCGxIUxhrbukWqeJUH7snxoPubdMXl+QGqy2qBeT24TDJRH+HbHJ7x0I/lb6majrqzqRYMLTyzt3LKubW5phj7UAtnKQ6Lw0q2vFlExnNTxIKyTN0cC6gCHIHPslXRHdAK+ucvSNlp9INESn4kzolhtbV1UV8gPV/HZGP7XnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743955794; c=relaxed/simple;
	bh=T94QGECZuMaMOrkEnou0J6yvYlA1SB5CpUIgvTANrd4=;
	h=To:Subject:From:Message-Id:Date; b=KzhSMPfBujeMpfAcVAqWSVUIaCqDGuzUxBrFjJHDCuLz6OmD0aaJyJzAXWZkXg2ydLLH/0MkOhjNDht6ca2cLP9l+TQ0BNokS7tYAPKIShQucQS9/yHjxuno7QGP7mRpRgp9UqVfK6b3zH6COsO8wnKn1a2YGd+eR4PYtfHvDek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jglr1JMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jglr1JMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A897BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743955793;
	bh=T94QGECZuMaMOrkEnou0J6yvYlA1SB5CpUIgvTANrd4=;
	h=To:Subject:From:Date:From;
	b=Jglr1JMksHzXUBx7Hf5q238lPE01QBQrNdmaHn9b+QWRl8As7Znc+VADhmdUp0Pvc
	 sXjGh8YPySznv5D4N9jTxKep3MTVYBQ9fcoYN/wX8/RnL1cMUfhWDG1/5lvQ8eMqGX
	 ejd6RWQaK9DLKSs0hVsPVcxK5EfJS6fvBiPrFgq4pI2Dd3RgDVyQ7J7c2M8eeMbC2M
	 AWtieRVC+dQT+VoAgrpwuDuQg5vvd4/WuR0S34+QS57JukgY+LWIxehSRhWraJasx1
	 7HL4l+E5T+w0g8zRLRoi92xbXwv8/XqZj0EmTXuNgKfyVlh8UbhPoKuNO2aIPwfgjl
	 BhKSdQfstb1Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD7C3601A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395579360.10247.10847681315484099839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f6d9efa4f8f6333db8c3b9dc8652f0fb7aaa48c5425be3844e087bfb3690bb
Date: Sun, 06 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743955793
