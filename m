Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245062641C6
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761629994; cv=none; b=OkPcQ2hC3xXddZj5RtVwO6IA+hq6he0lCNg0yKfiOPAzaPAlgGEx3h0I7TN3MI6Ux4Y3w6cukADxi+kTuxiPLaCAs8OkyyECKCoQqFqJ6mZBwOWZ4A+vf6jd0edCnRtjvmDwlJAsulS6pV82MEi5fscY3g6YyMdh/cs1gW4hwyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761629994; c=relaxed/simple;
	bh=/fQ5WRNgL0q+0W4uRgLwA+pRveS9Nz/ZG0grMpvw5BI=;
	h=To:Subject:From:Message-Id:Date; b=AhlqMyVEhXuc8RlP87208IySf+JUqfx785pMecWBRmwL57BJNcZYatsXVLMiEMkvZcZitTD6z7aex8+TVR2veFdguqV5Ht5Bt5cwNisZhtT2FYWi5jQwv8yxVEBxZDdUlwRnVk0eDrLldmf/DP6SW/kWUojb4nLlFWvCPfRBLzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a276xLO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a276xLO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD273C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761629993;
	bh=/fQ5WRNgL0q+0W4uRgLwA+pRveS9Nz/ZG0grMpvw5BI=;
	h=To:Subject:From:Date:From;
	b=a276xLO8kGchJIFew6wulOSP2MFGt/S/6EfvlKcWDyKynWWL0uCyhaKISY6dUzi+Q
	 ph1Y8p9h6qZYpn4DHpnYwm2YoBA+0ELJiihodnl7yTCQaXMOHNoEiAR21XVXlVup+a
	 mr0YVZIaaqRTh/7012JU8RAtzmazYOoT22DieqGO2IoW4m/jEDI32u3Jy7edvGIAng
	 66A6CO8VeVsHraGs051Sm/+MfQefcBzjuhWbzhGljMhq6r7Shh23La6L+hwGZ7pGEF
	 vTi4+CwVNHG8AgSLmXcqLVwRMhGWB58vJ6/4KfiJVQfqOxVSbh0m+XtWWjIYLjYisA
	 OmhTV+1GVneEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AD8CCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162999361.14740.6019941203348984023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f898345f373887cf20256b23c740283a5c9bcb013624844f6e44c7e7e8a68753
Date: Tue, 28 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761629993
