Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D106417C68
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736625953; cv=none; b=dh9CjF1ASfrtHeKV61OLkCtveyGE38s6nE3AMq7vLD3L19vnCHkp3nxfGOu2cKczo53WpCZwHcP2QP5ZHai6jK6O5fFBqb+LWEXvqAopmuYw0XPwnXE7I138y/7aZXof5DA4HAejJjpnZcH8jnErdaXgFhNCM7Tss6AjOcJ2po8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736625953; c=relaxed/simple;
	bh=u12aL/uQK3LxkaOKrW4IR8ekPoFheOFE3eerlp3ilVc=;
	h=To:Subject:From:Message-Id:Date; b=BQc8DlvcgKrW5/xh7Zvj0hMJN2pcPbeNd7diy2jaXny191QEog8ppXOMUj8CCkfwTv8EvpgRfnnBV5DRtmuq7ZTSZY6VS2ipQDpNvUMWb7HAbSDqhifGNTAn3y0QLgzzzn5xui0pmmJrPWfvBEEg7gaew5eXHvV7egIKn0EYxQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7WNevsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7WNevsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC8C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736625953;
	bh=u12aL/uQK3LxkaOKrW4IR8ekPoFheOFE3eerlp3ilVc=;
	h=To:Subject:From:Date:From;
	b=J7WNevsGF2Qb2lrFeXce9o3lffQg5M3xwMWrtZfjgJSfzG5AuiDtkyOJj4UxsuzwJ
	 j16AdtdUrRfcQdDw5uQmZA+wcB5FazvRrR9oXObPKUsrsAwlgeu6YneD2R/OWEP7SQ
	 U9VvhFEONhK1HXStQ8ENVc0hDbCIlQhOpxsL/R/lskHuKehdtwnwuvVkm6UaEKhvD1
	 7V00E5lI+bjirW126nSEWEHBjSmyQiyYn4R/YwKSMd5yqMx2YHc5kDCq6c3DsrHcYU
	 op96UuYqGI7tg1TFi8YaPZ4hzm9Ag20tPfLb9FHzQEROgSGj+VTLRPKICzOZVWH7bY
	 zLyo/axp/f2qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90145E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662595358.18293.18417292905590545889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491cb8f9b998f2f7920f6909edf957c3275ffe59ddae56430f1275f553e3af0d
Date: Sat, 11 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736625953
