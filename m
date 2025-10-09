Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582B86352
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760004594; cv=none; b=hDE/MtcCBQUKw9stysuUvmUD7RxNQoK7PIj7Oe2pXWjkk2sRT+tGCav6MHHZrPXcxuqGNxM3WJam55A1LDdUPxMkHddrNdD3mQTqetikHxc330HRofdTgeR5N/K8E9RUkjrLSFABWE/VkHyKzG35ZMcDVQa2JrMMHasEeU5+lkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760004594; c=relaxed/simple;
	bh=askFNyo4LYAZfBkQZHHjTc7oZmNnuYccIBRSU4n90YI=;
	h=To:Subject:From:Message-Id:Date; b=b8FoxNC0Ia1yzDGBNPqhw2ik1DIU7QLnCQtHlWTknjte/l2vwueYC92bOM5NuREFF4g2GLMIwaMaqMfZZMNyqanb7MWR1VrLKUss39seNPUHMtnW4i4fpukvjAzVGPu38wQPq6E9+3maxwT5KXCTge9RNUQGYjDVwicyxdFe5tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJow+Lwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJow+Lwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA46FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760004593;
	bh=askFNyo4LYAZfBkQZHHjTc7oZmNnuYccIBRSU4n90YI=;
	h=To:Subject:From:Date:From;
	b=VJow+LwilSP0Hm5wYopjwQQZBQkZjjXXBlUhyZDNcLaUr4SEI+vgXVlY9EXycwqcH
	 MsTkw+scuKs3rgaqWRPrHtaE1hk+Cplyl6JQpw7jsLWOz0SlAi8aeC0hYCp1/2Ns1Z
	 XdFueoBrIh0u0v74W9Ycfw7ZMHOGx0hBwv/vGnSBtpqw/P9snaHobh17RO8bJfvdrs
	 RCfLg4q64UCvnlJGsPGm8KLNqbitFogZhop/BFSv6i1cqIEnpYYK/VCO46ChVd2h9P
	 oG4Gc+LncgCIWunPG6d8JRm1JjmvJl41Sjk4sqBWjnooeA4V5dJZEfOU4YeUY0UH6X
	 AETIx/2f1zGlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96185CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000459358.26338.16433369199084429245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab1ba841a36c134d9e98bcee29938d65a27e43bfa39d0f02ead0cfdcfe47981
Date: Thu, 09 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760004593
