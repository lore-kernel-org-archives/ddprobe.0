Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F12921D3F8
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557394; cv=none; b=DSUEIHgORyLBvSYFDoRc9bHaRQTFsgPL7NAKXw0NLStR+K0RlfNVvdZzzsHc+AgsjqY+IOFBpkNO7VDiXQnbSCL2OvSGCIe6aDLQSAYQiO90C5Zjeh24qds7VTPsPg9oanEHdjbnXr5O+WvWUfYb4nYx80yPL6X01qygPWgVaWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557394; c=relaxed/simple;
	bh=b5SRbhCg8OfmOgNBfOMQqjfkcZSmWySiQEoiU3bI0/k=;
	h=To:Subject:From:Message-Id:Date; b=qOCPEjuw/e+09KXh07TmuaplZtCyy+FgxC1Jart85NreY/E8fANkYFWWxo9WNvnT40fcEwe7YZq7xfWizASVFGkux1ZDL8TDkn7SvmybfHMVwieHNzySbsN/ncpWS4Agu5nBVCkBfd01xtpWUhouMD/f/62ODkYOq66CbkAL0iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQgk25Jl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQgk25Jl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D36C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761557393;
	bh=b5SRbhCg8OfmOgNBfOMQqjfkcZSmWySiQEoiU3bI0/k=;
	h=To:Subject:From:Date:From;
	b=JQgk25JlbjWAW6WxuL9Tey4Yi3r/H0C82yToNVGdVXTOB2eSQzGXOip4xsNMe8XWm
	 DQYfJJjEZeDXgdDMJS8daON0xOu3+k0SfOuRbIBD8lx8M/01tALjHbBX2cHeJrbgZ9
	 IEPBy2kXcEqCGhLwmQmQqWf363nFA8DeXN7T9JTwXj5ij2IyT4HoZctBA9f5STWK3z
	 b0kzjWl+1Q9qR7T81+ei6u9Rye0UVi70xSCR/skAtx1S1TFb0nhYEs5MXf7oqYxWUU
	 04V6MX0SgIfYKr5lQivDYz+i/SRQWov+Zc2geU+JNEogtSP1pWQwmXoXXLRnzCt7tM
	 OZcL17EHcFRpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C5CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155739357.12652.15487033104611383204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63d3c053945644f22e2084657211f672be85b9b4af33a247d49667f109d6ce7
Date: Mon, 27 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761557393
