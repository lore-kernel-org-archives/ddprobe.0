Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF361482EA
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717097063; cv=none; b=loNnpdCAMM/2Fzwjv2qpZbln1pEKpuHGxNAE2YBLF2AVqoyuhZ6zsG39OdkM3Gxh9QhxT8ME9X5Oe4StI0cGAJ9nIZZ5W5RG9GvErUC+SO1HGzwfpV+LxUvY9FPSCR810rD/KbisU34o5WMfIhHz39lTNSkjkyUmdvqkh4T1Geo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717097063; c=relaxed/simple;
	bh=tRPIqI8/i5/Y2WzTGgaEpLjMfd34s4+tvPMnEJR2HU4=;
	h=To:Subject:From:Message-Id:Date; b=Z1wCpEPw9CT+bVKkLpW6XaDhIq+iP0WCqBrl7+vYvOejHeO+mgIGzv5QDRFQ+m56NBgDgZZq9iUN+7WPUEHm0fpZ1uwUHZsILauwP7Ij2DbfMifr72tdgdRWlEKPgUmne0Uk7WCPigkoISv0k4Nd09rQU+PxTTsnJLjRZN92wdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkA95NLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkA95NLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B70C4AF08
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717097062;
	bh=tRPIqI8/i5/Y2WzTGgaEpLjMfd34s4+tvPMnEJR2HU4=;
	h=To:Subject:From:Date:From;
	b=VkA95NLpxUI5WBHhMtA4pOFPP2ZsT0mSghd/J8JK4o04xyZgTu79xVE2AWEbh0Zqj
	 ysm9x1quHkKJO4rjWMfUMduxTWjgw242UaWaCHfmwR301wDsrwHkKYvCG9ghdEdMfY
	 nBJ5kDKGDO4facTaRwtcq/3pWvR00LUmdwrkoczXUZOi5MTFFJXxpkgqoUbnu4eR+m
	 Ul4HuLfZ5HF106WW7J6ilNKWQUNdmVjZLrb5rlGtMXLRcZNewli3Zm1rC8ocBNolHV
	 0KgXAT3zggnFkIZKw6F9c7ndMrW1z9IWjlw1ppk/6hcRr402Wp7L+agR3kHbfBU6do
	 rUITm0ndyFQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD978C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 19:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709706282.27992.7393111621695624192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b24a451db0257a6113adea2eb185a07e18523ff1cafd075cae5c5a3bd0d6bde
Date: Thu, 30 May 2024 19:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717097062
