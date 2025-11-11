Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E2A2C237E
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762901994; cv=none; b=VK/eGGRRUJ8xmSfS/upfz1oFP4nXK5o6DJh2SNIaN5U2STWtAKAvZz7DMHoZ78eMsrj4qI0Ab8ec3owCRTpfUzblRUUJjT5KKb8Qv5Ry8SV6zbXL2x16yAkkY5JFSi2aHeHHdDhOZkBEidVx75umjHQatr3my6Otm2kBbrIAJ30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762901994; c=relaxed/simple;
	bh=99qMXY4BsZGpFEFPdP3fycMMeDY5N9W9BoOiiMxiNeE=;
	h=To:Subject:From:Message-Id:Date; b=E8zET3hbTVgNhhFyhatOYdz3mXuphnMRt5xDqc0YqXQYX5WhTPwVgMt90I43gBpfH0VPshCJQ3hKffH4jKcOnOuoC4RWJSLctxL1lq2M/U3lcACbwbsid6oXYlH0Lqu/hrm7lCgw7LbN/9N3uBuiGz0mou/AeD0n/Z5SXsoZb74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie4sjkC9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie4sjkC9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42F1C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762901993;
	bh=99qMXY4BsZGpFEFPdP3fycMMeDY5N9W9BoOiiMxiNeE=;
	h=To:Subject:From:Date:From;
	b=Ie4sjkC9RGhRoDyVrXQn3I0i6CcXgJfTL960fncJD0Hyh7NzkApPyaPNr6d0nI3Yp
	 uFsmjOb/nACbMw1Y3I8ewFD7o5ip6e+ELx7VBGrh/qVykIxDrKJcO8xHllhzud0Xzi
	 AdXtCzTsVvD5PWhnoamWFnGDcBTPw9cYTC3VcbyHbmDuOtZYbBoZTZQPV7Xk1GO9lc
	 e4eEzkMhcacqJjjDFexbXWLNzA9XxINrZ7MogMUHU9RMYHMvqF8m7ufMutq5ztw39o
	 3NUsrcDWih2RKQxtNJop2lPxOCvQ3LDqk4Z8iBKDVuM6z8cyTYzfwzZOny0V/8btzI
	 I297KZScortSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425DCCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290199357.13529.14772916998737138188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21237b04f3cf160f05ba4d5235683043547c82f3e5f65a1e40d8c524c460b912
Date: Tue, 11 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762901993
