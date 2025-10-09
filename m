Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A411F2B88
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759983594; cv=none; b=BpaDh7zq7RP7YMr18gv9TXIRtu7LNlZnwR/RhABdvqGjv5ddxVtkyO8Z0+aIeZD15K0sN025tplEDx9I2QkxlXRZj7M7aidSNzg8UNlYDkLbPaPnTvhk2OHBkDPDmm+nLii3W8fY+NG2xqOWSsDyl+Z4rFVZbvRZQmI6EW9oBX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759983594; c=relaxed/simple;
	bh=NkJp0aLO/G8oZWvya/JKMXETJD7t2mfMkYqxqWaCGVc=;
	h=To:Subject:From:Message-Id:Date; b=h59qQdXCfSLJBHzB/ETUCio4M2vumjwplbg2DkLt971QJ8vRiU266XXxq0kj87W2xr376EvVCJcBS6WxlJZbEh7dkpV8qhMloSKGgTvUgixdGkRb116msdNqBOEBcyQIYqK/qrzcHKA7oWjOGKodQGJ21WQQmKMrcOYvbF6u0Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MH934hYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MH934hYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B13C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759983593;
	bh=NkJp0aLO/G8oZWvya/JKMXETJD7t2mfMkYqxqWaCGVc=;
	h=To:Subject:From:Date:From;
	b=MH934hYbo3HWtUBYV4CQlJB/bM6tba9giYtiQAOGjVg7GdiwkOgqlUUremfC/wWjg
	 489UySBezSyFwM5prwchuFvVz5vF7s0IGn0j6WAZsaSeTliBimkOQiz4+QEAogFxE5
	 u20cZXCk+O6ZPXKjNgb8nsrtRdUPlCQDuK9+x0lihaafSpD67e5SPB8PmxFi41h/5h
	 tZLSIq2rS9QsW7i9co02vbgJTD72bU5hlfWUaUPHP6I3s4xe5gcDr+xlWbo3BHFzvm
	 nRi83ubRd2TbmR3vam0VhKIDFMwZNNIQ/M4SeQecIEjitwrew5ZvdSMB4d9J/qm+vL
	 fI/UXjWREd3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2214CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998359362.22869.18239745203467605884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983186c48c19dd120cf057c256d0f3b4b29f9167a6df6a99b05ce40db7fa673e
Date: Thu, 09 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759983593
