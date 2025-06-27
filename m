Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AB9293C63
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751017794; cv=none; b=EF+FuiULGcd6nCVt1KnvigYaKywf1KgzTpf24rmaS+Xx7ZTH7n+9CY4bA+jFlGICSWJhzOxCKrhqPiej3AFNieKY7J05uFW+8SLeoIr6GFAO7/6liUDosVL1KlwM/XUor89VR1sqeFHBbZBorcuVLwrVf8zgu6L7SUoqLpqctHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751017794; c=relaxed/simple;
	bh=nQvK+0/aoXIbnxyzqG/MLtyYc+wH2JEXCMbBF/4oL9g=;
	h=To:Subject:From:Message-Id:Date; b=Qr3SN9PSoN4sU2LOXpybY65WG+OxW9/L0n8Yc2cW+QQsQt6y/qbnI6F2VDTuYmRSZFgcMA6gsbmADT9+hTMSbuYm5DX7/SaZB7KsFoZP/x+YGhr69ps4MaHAENYYVrA2OJkQiBuzeDGT9jadRJHA4YPawO+V2edLr/vku6TQMck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CztI26Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CztI26Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC872C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751017793;
	bh=nQvK+0/aoXIbnxyzqG/MLtyYc+wH2JEXCMbBF/4oL9g=;
	h=To:Subject:From:Date:From;
	b=CztI26Z4UfaNTFhU3mggOPAwWvJTELAZRkMmS+6rzp2sHrgbCq0SSfyRMlqDEleD4
	 /CgZUXDrkUIkjWMgt9OSJJpf0rA97TGIUWgjvGt1M57tE7m8ZrkZNTiorMFhXa1Ld8
	 5YwtL9RE4hIzoIZyW1Votq6VPn9+3JrjICv0WyJE1SUY0hcR1et0EJWLDU/BY1nykt
	 bqGLHRTDHennO4qvjU4jTJnqiVmXgNBCAathBrQgnPN8w4doFzAb+FWW62QfEbHTpt
	 jDfmhp6gaRfeQwjELmJ748ZPIcGwgcj5qpMH7MI224sbdljLKIywoDD1K5RicERYa/
	 PjyWaOGLD33zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AC6C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101779359.809.8707292188839764154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46f4e302c7badcbd0c3e9caf86bb010f9f2654d696d17059693ae7226cf5451
Date: Fri, 27 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751017793
