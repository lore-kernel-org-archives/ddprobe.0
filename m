Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ADC263C8F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777759654; cv=none; b=hlgGfV1BNaKPEiBChLjSNz0GHcEs+LjdVgdsatZe46ZIkvZh8C8BdBaq6MXU80w9ZAbDq7K7+8BXOOFPyhetil8i3q1A/jV66Ehxi+FgpSanFNVVgooOwierJb9RGiXELts0B7uUdGrGU1w+2hm+sUIMW/MsHRkNsIwE/fE2gnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777759654; c=relaxed/simple;
	bh=FP9KvvI5a6lhPvbqcmIf08GCmCEFVYZyjy4373rZVpA=;
	h=To:Subject:From:Message-Id:Date; b=ldRoKd9FrBdvCWprPPDBN/3shw2hXN+vCi6Zxk6a+TBlkR+Urg/c3uZrjHKssat+zUtgmhZfBQCUKN8A+lE7brsz+xds4JL2LsnJc8gFfAhVRAoVAQy9uf/Cav2VC7Rfwvhcmzil8tTfWkNIe5/Aiwlw1G/YtRkrkMBOVJAKS5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2T23PYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2T23PYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0243C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777759653;
	bh=FP9KvvI5a6lhPvbqcmIf08GCmCEFVYZyjy4373rZVpA=;
	h=To:Subject:From:Date:From;
	b=R2T23PYYC5clKPx64wrECTnVKZkVZ3G4il8GiuisBWYgaJm3NAxqPJ3mV6aOUr84v
	 LjJ/iy8fl5GtBqxAiRsEs/npIdJgk/yP/EWnHbt2xCh1f0ktIbr4w7l1FXJaR16kzl
	 mwVhvkuJCFXsOCLeihZ3o3pzsXgTxK6aSIfiB6tFE848YStkZERC6KHrhtwAswxnce
	 tSQYWGslNwIdyi5GZk4iHtciOUTlAvdGjQltGqnVOUQXADxIilnKV0//48WGwx5jqp
	 5/L+4+o3CYqZHrhGlV/sLIQ8ikeFSR+lxJOzA5gfs2bJwigsVzFbUQ1aje1rt32z0L
	 iEQhGvUNCuYpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF728CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775965368.25879.431165515883472511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c820e560b6374a72db15679df1da78c6df7e914a39ed4d533c1c57f5392987
Date: Sat, 02 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777759653
