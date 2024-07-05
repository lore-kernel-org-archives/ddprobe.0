Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6923A5336A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720163723; cv=none; b=aoiCre44KFwKYrKvL2CP9YFMOmu9zYMgF5X6uj7/yoMWVipqtNzQc5cjpxNF9Zz+r8WevXW+u52u/QJvSpjSXPPQfG1iYdEFKrvDYglUYvY8pE16PlXQGpUZ6bKLTGxQmWTuyH5PVH2IICS2Y8QsCCW3x6cw+DYPQUqw/rv5zMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720163723; c=relaxed/simple;
	bh=ADOC+Afj4wYQeECjeL4xLwza3wXtCE3JWyIB+6cwrsY=;
	h=To:Subject:From:Message-Id:Date; b=HDencMZx9EDCMgr3+/evYOhE55wnQ1w9zW48z9qZd5fa6Av5viHrqeFTub8Q4NMD2fdr3Kll+GGZjhwFQsTdyMnejVJWDZMhu22Zqgb+FDGFfBxm9JGg1/nqrKS0S8ANysHe85YrwMso2H3hBqhETNBHhQx+g5ipojgt2au2y8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCnnFQ6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCnnFQ6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8532C4AF07
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720163722;
	bh=ADOC+Afj4wYQeECjeL4xLwza3wXtCE3JWyIB+6cwrsY=;
	h=To:Subject:From:Date:From;
	b=aCnnFQ6stuV4jT+o83Uw+GZ1nD3vKjdSNP3YQxbJKqrtYz2wlLoVKJFdju4B0koVQ
	 PD0NTq+ViqLUAdBCUjAv+qHX26WGOhXSTnnrJIZHrNkkoy5Iqcc/gkzTo3ayJqEqX/
	 T3bNl9JOc7/80guY4HsT/Tg3LigNPC5DJ7om7EyOZ22mIK0hWC2/55TP5Ys66CqYTc
	 NzqSrlPCjaxv5WUmLJhYHuHiK2Eu9OWoGiaaVPQj2TjlTZN/ZyAJ2zzJn08TDfqGQR
	 TstikJXnghJ54p3INiJcSdGUgUyb5EIfbG5CD5ASHeZnMz5JzfArySjcuitzLpxFFC
	 SEqSlSTUdngxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0886C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016372278.13059.14290003092761034841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f01e34989788be8afa2781f54ab4280e190474e85c241f30cb8ac3854b6088
Date: Fri, 05 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720163722
