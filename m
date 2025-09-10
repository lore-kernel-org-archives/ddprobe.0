Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DD82D5940
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757531994; cv=none; b=DgFbNDjSHgdkDnxPqweJUZrHv/cbqpHWSxvyJQuq21a7QdPEx3bfhTq8pmcfJPpEC0oR79ov+4EaSHxdQtgmnoAcvTnV+pgJ2AdxwIjEjWL5gRSuUn+dvMw/quyiR6Ps9Nub0VITb1T2xvTuRBKKM9QvJYarkBDfUN8ko1PJjnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757531994; c=relaxed/simple;
	bh=CRysH9ywsAk0i5lORLq6WZmRajgdWGZSxSFpjopi7v8=;
	h=To:Subject:From:Message-Id:Date; b=UF6DIExCgZXNcEwT41npKk6E3db0NvMbmGd7kmol7lgDXrNUBEgBd7j6XrZfNN0KbCf3Vs93e8Y25Ic+lPby9reBO1y5lVdXLfl3k2yowerRNPfNQWEKMR801xI2CumttV4uEcuDZ5y+NTYj05SRyW0RrMZp5WMyDiZporJa/rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG8n6Bpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG8n6Bpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73EEC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757531993;
	bh=CRysH9ywsAk0i5lORLq6WZmRajgdWGZSxSFpjopi7v8=;
	h=To:Subject:From:Date:From;
	b=SG8n6Bppn6W+M3NvIWWLnyHkx3HA15sFzPLc8qt/QcoxtQ6195NtwNOs2O9w8ilu6
	 HCjgTWjviC6d3nJ/eMaORt9dP3zNPlKBsHusLxqyVTC6h88xPnqnCG4tBvvOP7ghbb
	 N+GyJpLHWG/ph6MtGgWIFEtWdZvQ/Gj4hRcAaVMsvf+aeIn1zv6tot+/hUcKNhxNzo
	 2mDjdzZmkxDgqJMDQrL7cxU6UeNDG0V/yBkbvyfDBf2ZNDGJnr67IQNoXIXQax4c4/
	 ReODy1hLOmosf+dpoHW4nwx2v2Ednac2UoiNIog5mielMwWpEBF+zjhP8uixAW+ZKs
	 q1DSaGes+tyqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD8CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753199359.31772.17137563372492119430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5294c98760e1809d830f21546bfc16f6039d43602a7d122d6915aa11c8f763c6
Date: Wed, 10 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757531993
