Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B42C38BF96
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772089494; cv=none; b=b8amRYK5ryVDgKjrUmaIsAh5+2VQAB6g32zVsXtNFVxcpnQSEyDkR7pYUNT2fItoNILkdp8nStzJRkCJJTBHeagP1rmeqT2XR73LW8ThIxvs3wDmScrEA+ZGvDNKCMQ/FAQEfgtEWhOuNUeKDxoHJpCoSkoZdDvSTKo79PFg5DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772089494; c=relaxed/simple;
	bh=lteC/4ZcyxL1qqjPpMmbZmqLyHo6j3qCFKcS861eAHE=;
	h=To:Subject:From:Message-Id:Date; b=kuPJ/o0ciCkpLiWiUoP6TzWzSH5sT4q5jdzZ/q8AlUeMgjGsaLs0koeiSbz88X88lLzdNPoDLjnMghUmO7J7BI1hasMvacThbH3lpJUfA4ZkFV9XDOcOFkUflMehnP03OVCmO3OIvR+E6RXWFYyIHvMf7vn1nJf2QAqoRE8T83o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3v73E7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3v73E7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E46C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772089493;
	bh=lteC/4ZcyxL1qqjPpMmbZmqLyHo6j3qCFKcS861eAHE=;
	h=To:Subject:From:Date:From;
	b=s3v73E7etNyucTXsHonlJiwv+bdfae5uC0Uyorb5j37jQIARdFf8F65REbTvxpcDZ
	 k19Kh1RFrsQJGuoXwuESE+ckIsrnzXgChEGF0nc0G2Mg6Ttbp6npBn3T3Anw2rk7Y9
	 6HrYhStFK0V4/HsctK3tbUgcmqrcGU19Sbg3jpaYBwyU7EYwHDgkbZm5zZsGKib5RD
	 rmWLCEVnBRLUir+jTmY980kt6pPsHXF1heDC6HVHHthzmWo9ZWR+nedUlucePaJQyU
	 KfrVpai2IQ2LIWqBq+i7InhUEXUJrVMZ+pLlgbdpihXRV7zlqWeR5eufdFtYPT37QJ
	 SQmHNyFfDFNfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB5FC5904
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208949359.12117.15047524078421339127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eba0bb1b94d73a2a71872a038295f63967e82207c1b2a8a126fb6a0b1a250e6
Date: Thu, 26 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772089493
