Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADC92CCB9
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779582754; cv=none; b=Y/5uObAKzvfo/eSnsgSDdluBgaqDssSrdDmfyKwVZdjgLlyqYOU113aR3Q+JmaB19YNc72OCmGxJ429UL4wy1UhWtpAsCI0csi0QlrFbn/QXYZrt1LEZYBbAKEzJbAD6Z9rAzaMbIotb+nxas4kShZ0ptaqwr4SgiF9YUX8u5K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779582754; c=relaxed/simple;
	bh=9np5lrH5REbbksa6Thsy+0RfAUA6XdJpCspMLFNGvEg=;
	h=To:Subject:From:Message-Id:Date; b=oN8h8MILxEZlplKd74KTZRUqxLgx62r9rYiNFJWHChyVqLTHCZfrPZvhnBb63d55xNVGYJL14Z0g3riEm+dGI8a2l0cv+dNJz2ph/WxZvOrHSs0SEAhtLdPK9wfpIK3CeuKP5u+9Anon9NzwKwxkTPGikQFYN9vvARGBd0d93Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bub+nrp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bub+nrp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9257C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779582753;
	bh=9np5lrH5REbbksa6Thsy+0RfAUA6XdJpCspMLFNGvEg=;
	h=To:Subject:From:Date:From;
	b=bub+nrp2etZn407hfAPwJLdT3AVH8JP+02mNNprdXhYv+fC7297WcEJ3I2/PffNn9
	 rBd9ukrs8FjzqEej42yM0Wcy/fKcLSu7hi2XMDqFQWgRB4MmH90eiGf7qB+wsOLw+u
	 O1miVGjS5dC9Ssa4gnHC+xX2n1d2xbvPkXgAVlVLEQE6e6DjurRRa4X2ZQ00hNpui5
	 O3FbB/A2XnW+9fVWNvqxHo82NUaUaQvrIiEIuvRX9SDPRIoCcrCBJ7TbkHthTv5nuW
	 Qrg7OZC5Lx2L0bM7X0C38ARYrTYcDZlv1YG9YKIsyFTqUByV/ZDBwGdXp2bonpHuSm
	 lX+3ZtdEPbGhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B077DCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958275369.4492.8075077768927438851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5804562b6786e5e35ee0c651b1c1da667ad406f4983f0376cdaa56e525006ccd
Date: Sun, 24 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779582753
