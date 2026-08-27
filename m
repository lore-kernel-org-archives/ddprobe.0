Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D88021CA03
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787790634; cv=none; b=F5ZyBnhxBUDpVguT6NJoI3eSZwKGRQ/OJrZba/cSuqoZSz/MCLpS6aYRhD5WomLQ+LxQq0sXfyUCT9Vq3PNd7pBvPZirFFKYIwD15OeBM9Ac97c0spOAiUx+TIbCIsCBBh7OQAih4r21roe6gPQ2ZiSCW6jIjSiaEwN73SycujE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787790634; c=relaxed/simple;
	bh=WkIwTZHEzFpYCz1OnZs7kog8hoLo2HuUiN7vK9TN3NM=;
	h=To:Subject:From:Message-Id:Date; b=qr59+MH3dcB2dL8cXsg1oOoDCaGzDG0zkHDDypaPoob5ZcHMBn5OyrsHT/iumn693pOZBo5EhNjP+ejZUi8ZY/rnQuWnEs0zLfH+pvH6nAwGai2ZWqCfdCgrJhDBtMMw96uSrzEyZelgKn5RUlEwXMMM5229XWoZBHi7ILHgM+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkKyVD7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkKyVD7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC935C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787790633;
	bh=WkIwTZHEzFpYCz1OnZs7kog8hoLo2HuUiN7vK9TN3NM=;
	h=To:Subject:From:Date:From;
	b=fkKyVD7m+b7YqHrSSxZC7XKIv1UBKeUZyxhbWqEdTGigFiXZFfeLv+Wqjrpn04hs/
	 kTx3uMqC8sQaRM7/vBeZ1iSWOa0s2o7QplUKC7pysijZ3du0dkymgaGVonuOq4rmB/
	 kL7ptc7TwO6X57FnpzoAvAsB9kz9kZnSfQbDIYxqfGFaKSckG0V6pXkfkCTRwGY54G
	 osW603YDKywLFuHGE11J6STLVB6jri1pjiEVs5X7Sn+K32LTH2cPShiOdIOGZeEsy1
	 up9lqbh4gshhwDea1794EF1mMEJz6N8RTKmiIbGj/szx+n6PdnbFiuUrouzdy7pHtT
	 7TUP8103pP6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E63C61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779063368.8575.6995479424097491197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72479248e57f5b0610e5eb3f182cd185a25ffe122901906cbd2dcb41f04aacfd
Date: Thu, 27 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787790633
