Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F55612B64
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725115554; cv=none; b=ovxORviJBeQ+mIIkxmCwhAigUYxGbQQzZon+LfFCgqS7MaeIcIE/CxdPSKGzDUdiJTjrXlmdjKzD83B/ucE2kIDY6K76n1rrky2FLOvqKM7mfWQJGsgkIUIP5HQ1z9nHf3jihKB/Ckylvi7y2UkdIv9rdDZ2t9vbzBrNrwJZmxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725115554; c=relaxed/simple;
	bh=A2B3FwIrAYU4QIbZNT9IF+GQMetCkatYgCvsSCd9My8=;
	h=To:Subject:From:Message-Id:Date; b=D8QPKJP5TXgWRkKKgaUNZw7VBoNvRojZOBnd14eS2fyd/gMUN7/0QE+AdpgokezpQ91WQ7g4xhnoDOxxel6Cr9FQnUl+JPXE20jd+YWOO6YLPoGMl5GvBV9XiDd/3G/z5hiss82POaJi+L6daE0br4qOurO3geM2LFGQBayQ11Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enxLxDK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enxLxDK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4EDC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725115553;
	bh=A2B3FwIrAYU4QIbZNT9IF+GQMetCkatYgCvsSCd9My8=;
	h=To:Subject:From:Date:From;
	b=enxLxDK3Y+m5fFN/SE1pDuvRKJ/ZxDSukhnhuUbY/J7htiSvToGtFNGBFkTUo3ZuH
	 BWPGhPEzVkGoIwzGwzp2O2AecYJtkb6u9RPu5LvRt/6PBF7E+vzit+LOaQ5tM0BmPq
	 83W39NVGhIweyuR6z04N6l2ZF93mPkSkG0Ep4cJk7FZrm5fM3hragZL3q+OpNHbnD3
	 iv7kWqDznppKwR2kJMrwofmJwZRLl6H0BN7lGSs9za44eLUFWkN0xFvSs6Gx3kN3y5
	 1Zw6elobGPaCUbk5HrOwww46xmL7AJT7Jn5B1VcpF4MoWVdzJRgYCTV/BDE28hyigu
	 7MaIPYIX43CTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80A3CD13D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172511555361.14152.10060369683129243620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef8904bc66ba77440224bcf5fbb2b301d39fdc33709e9ed89c34a226ffa6398
Date: Sat, 31 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725115553
