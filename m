Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBBC1FE44A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765459374; cv=none; b=TfPJy2U0Sx7Ql2hegY4drkaw5qR5jJu1Ks82cBKu4XO8CgYaGXKEAfgNBzJT8RIJTPwpLqfD4L9HUsmrJ9kVpHDRcIvFntIVjpg3yLVJK88r5ryouWGciLO+hOtXiYxvIqb6hNvXh/eQ0hbNf6hOEvV5aAQelfDlnxt7+WSnQLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765459374; c=relaxed/simple;
	bh=p5FsDiHMzaQfonRemLxp9iZpVbY4hTq1mXPxAzHDav0=;
	h=To:Subject:From:Message-Id:Date; b=Bqoc17FMHnW7zxY0aSmT0veIiMNkviPb8FXpJJpSbBgTK+NAdFMZ4WahbNbmZHt8bnZNJyaCaskQVFCV94HTGs/g5gxIm+DaE+0vvpoBJCETKoKHFg+MCG0r1uHYc7AKQHFVnsPBHnUZrYK2sj+fC6XvqwiwYI8LY3t13cwJ7xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMJXjM9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMJXjM9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD12EC113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765459373;
	bh=p5FsDiHMzaQfonRemLxp9iZpVbY4hTq1mXPxAzHDav0=;
	h=To:Subject:From:Date:From;
	b=NMJXjM9AKrN0cxIy/5Nl375BqNmidQPxSBvNMTKI35shJ0C6b6fWBX+K6O3c1hLx3
	 X8JcQdutn4sbfc7tBufhX1f7NxmdRvFT/n3Oe2KJpbiY0jg+ZJZ9ESwEPbKgsbvUQa
	 6WF9J/9+701KSirnnsOKFLNzaXNjcYOI5TwylRV8B7DIA0xCQR8UDAfHd3p7Bu/MDg
	 mfcVfXEO2BturdLQcOUIcCLG+lh0jwKfNkUnnXu1uk5bFuDMvp7/9e1ENB3THshwKQ
	 ZGAzWOHMrQ6kHRnQ7V4ehIundbEtWx2NtuGTFZLtQybm4DjgtSFmxpRDNqv6wCdHmx
	 XNuA98IIn2aJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975F7D41C36
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545937360.30503.16221392208366428934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05742c90eaa22b7a4b448ae21ee866b082a5af93d3ef983bfd50f11df44a9b44
Date: Thu, 11 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765459373
