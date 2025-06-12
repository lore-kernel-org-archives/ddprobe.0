Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408831D79A5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749761394; cv=none; b=guexdc9D3ddhy2uIUh96TeEx3K3hJtDlUBB3hpy5qGKygOnjJKh3zaW9dFuL5ckWgjSSZOT8GPiWNphWITPTvVDOGQ1zPC2rYerS0w3AyePYwuxhSeyz4Ua0sbrTD1fJDNEUmqFoDgJWfBiDud6U8BBeBzWU9/oLCoh3F3REaOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749761394; c=relaxed/simple;
	bh=eIozADAPBRWSaXKStUWBIKvj86iZFWs4mAp0AM8b0hg=;
	h=To:Subject:From:Message-Id:Date; b=FYLTen1nEe2f3CoVNsTHhn976q5HvNgZ0Da8MOWyXQYhWbYmPq39Hgvr9rTjfF/Y9gFE3D9VgEQQQY3Q3vN8jKWXXpcWfbXNg0doDlN6rtZsJ/dYn2oe1/LxLxQ1Lli/rMRksFzxYCvD5q+A7sfUVXdVvUNd9uALSQOoNoURwmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AT7XP2pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AT7XP2pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BA5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749761393;
	bh=eIozADAPBRWSaXKStUWBIKvj86iZFWs4mAp0AM8b0hg=;
	h=To:Subject:From:Date:From;
	b=AT7XP2pnqxNEh+lqggACZPEuGE2nje80tEXeQEk5cqgV758M59GeWN1CsZUbLQimg
	 BL61sBtdE0D7mkRuNGB+gG+YANmPkqshVAVEdgI2qKm1u7c/V/j0t8805dnem23Kcv
	 xyfSNmEVi+yDnIZ7QOKK15ECzK0R56EObvhbgGnVBaRuick8ddOsmi4NO+aK6fHmje
	 Xry/dIQur2mg/jON2v1Bf5AIp8ED7TRwiLbPu1DahoDxohQcmnHoqD9YX0abqxlNFa
	 xAve5Y25SaIoHIISi+jh2LBFWjHmkY3VY2bPZDHQMu3zzgptypPqeHxYlpmH+Imu+3
	 XUvYZdG1sD4uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DBC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976139359.6088.18217550055568928404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6c6f2a9df385677d50471240419fd7985dfc1d0aa8a3e927118f6c6e036eb8
Date: Thu, 12 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749761393
