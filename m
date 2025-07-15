Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBFD1A5B84
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752548994; cv=none; b=nVYEj5S9rnQWgHyXVb/QI3S5jba/o+ZKxw2QMz09c+hP7nwMk41RzoQABVvwKQ9ck3buxLHHt9/lSO2CD0JjCm3FIbyEG5P90dILBKdJLnm0DJ0E+1iUB+pU1I5nbqmnZ9MnJ5XGftXSl73cwkplwVTAQ7ydDiZDjnUOAQzLaUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752548994; c=relaxed/simple;
	bh=4ng+fFL8rfbDSp1QxNs2VPEuXUGWpHjgVJWOuM/ocOY=;
	h=To:Subject:From:Message-Id:Date; b=tcz5jjQ0qMXDgQDdsEmb91YXIQNITPZB6pgV8F7/kdgzYJpBTvUdZBv0RILWJXjDynM8z9U/W2Pn+jmc34gvCC0CwGqEMdZ991tzwplUORu4ZTbgK5EYQouTA3nXfvq8hxfsjtbc9FDeTwjAp15U5MwHCORCMoyEsZOzO/Sv6ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTJnhdXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTJnhdXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0338C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752548993;
	bh=4ng+fFL8rfbDSp1QxNs2VPEuXUGWpHjgVJWOuM/ocOY=;
	h=To:Subject:From:Date:From;
	b=YTJnhdXbptTJWYzMnDHigu4lY4mGX/2AnUQDRPuX/vaZdpKBjbPBUckBxN54dnnOi
	 r+bjTqrPLQxLgsVlSDq2rCANlWBtCPcrJcvgCEMDYx8zedCUNvYOtw03dkewMp2bbp
	 G6t7MmauxbfgETBrbx8IOfpb5Nt6h/rxZL0QOMhb+bagC9ni4VSAdLj4LNM9akOdID
	 8tASWfjgg3n7Si704SDSoxq1NExywUL6qeqvGv3Dk7WnHVb5P29lgnvcKMOWJ7kMjP
	 18tKTeh5yCaK9IkqSJ8zYxO2hbcA8ytadC6lCX1N5BEBx/Qx87vaLSyeJmvBiKl90U
	 k9zWcMsHmA27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91321C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254899357.3610.16178941439233952589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d91ed9c98915137111c70ab68f2ed816f6090e4bbfab6368b6233659ccdf74f
Date: Tue, 15 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752548993
