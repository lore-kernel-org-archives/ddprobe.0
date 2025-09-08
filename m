Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B591F09B3
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757356194; cv=none; b=FSWqASxvBhNQxVS+P68oTv1vkH+mvrM87MI3TnFSjn5oLJMWFHeyvcC6fESgJpJ89KNtJrAhcEEadmz3DPdthY0HVm7NsdGHAAFlmHa++gBaBidYzNAIWxFcR6LFoDapDA/4dV/zTMoPH2fNMGjLAm+3fWL5sAEp5emspTYnRvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757356194; c=relaxed/simple;
	bh=mp8JWWk3MWDhqxDNRJ0NJ8WXuwH02LVt15rs1PYDJcI=;
	h=To:Subject:From:Message-Id:Date; b=dHUcvJRfs/oC2LIcUIvLRawsrME0ZZj0AgG8cyb08ec288exGoNiqu7N8q5BZRB3djT/FCt3sFMJ5F7YQ6uOR3C3jkcJceK5wnp4c1xi0IiTe50i7OgDZXqsVfRGy5/ybwCWrNZN5nfaZ1FrRpef7j5+Ew4t4+Ma+zNaF3L9H/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd+6v15c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd+6v15c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1773C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757356193;
	bh=mp8JWWk3MWDhqxDNRJ0NJ8WXuwH02LVt15rs1PYDJcI=;
	h=To:Subject:From:Date:From;
	b=Wd+6v15cKQ2suJDtog/cAfGbtZHacUX/cRNMV9lDXGqtLuucT+kQ8K91gv92spnYp
	 HtKIb+xSv1DDRy1bvcrHRrSP4fcW5gsjaMKGCn32sXeu3GuwDY4Z3WuWPUSq9zLKHm
	 hcY7JxkK9V9BhkzJilrb7W1wKXBAXPqe4WbrxaXpI1YZYCn6Tra1dXJIfgtL8acxSc
	 BqONPEEK0uGNtdPvO5TZ5BHaqYMaCCG8yu38ApDENF1POdhojxVJQPjJeaRS2l2hYA
	 0SL0igktLeVLzjmdi4JdNHwPkuQgPyK56y/QzwMfulfh/oDkSfto4NDM5pKG/32fsb
	 M8e2QyIx8dMCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3BCAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735619358.11273.3651324160246270906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df86ea252f4a696294e7d52714060188f5c963f2c22e4a928700e5d8aa644192
Date: Mon, 08 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757356193
