Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780AC149DF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718299103; cv=none; b=bAo48uKDgm7VNTmom5q4gTZ/uUC/CkzQ44VLgMA+FRdCFQfQWRFWqmkIm8+lP9fy9kml3pBOsELz9X+YEUCeEXaOfxb/cO+HXf0FsBw20L+7Z2/tPY1vJ82nKevTOpPXGJ87lm95XWQsVMprDwqFbro1MiLQOPSHo3mv4hryd/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718299103; c=relaxed/simple;
	bh=EjR6IEhBNyzbFPjZv7sJzWZBGCPEQMhBuNeQSicngQU=;
	h=To:Subject:From:Message-Id:Date; b=WYvCvN0y1XxRXAW2X3dl53Uk+8OBSFHY+HrK6xTG12h5wAFvvwmemQh6OSspJ24tGqnLHTXe1lHLNXRe9O991M9bNTXZMr3vIMryB+8JPpoGl3FUSTq/JNADz+lAqruaPtzL79DR7n4OpLgquAQzHA/iT0ZdFUyAcIT7QaiQtho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocjH9PMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocjH9PMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E225EC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718299102;
	bh=EjR6IEhBNyzbFPjZv7sJzWZBGCPEQMhBuNeQSicngQU=;
	h=To:Subject:From:Date:From;
	b=ocjH9PMNlX5EwVNJbKWWlnaxy0FWWrkgeayBMs9XcAimdQ2oveWDGqGv0ABK9U+lX
	 xZqaWiNbJTT+k7h+9gkQ46WiR1i40S7h1kv8Ts/qmvNVUp3jmQbYuIzW+RbsuhHuga
	 Yw7/1USFVRmy1WQ40k+9Gv4hFEeosvOoQyCoEjM69/L0M0092EjZimNQEDVMcLw7d2
	 xzls9o/dPkUWjhGjA4UtehJawId+wgXMhsIDJdyRp+YxtlIlxOt/mrib/FfKel/rGT
	 n7/2OFPpNxFPxO0oHMkF4j2XxB3p+ZjvOmRrEgZTqi2JyvPdJkCjcm/5Mwub5Ll0T2
	 tCVN/Bx+/SMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCBCEC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829910278.23621.13183849762754620186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7501e0986c732ebd4a4c3c27f25f290b9114f2c9348b0d1a37a1e4a50be2d8d8
Date: Thu, 13 Jun 2024 17:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718299102
