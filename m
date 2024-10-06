Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C5C7BB15
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728233754; cv=none; b=u5cdCSO6JlgTTIMiPlL7f1Md+z/lDVxPlkx0PaIxyp0XDiqAqRADMnFx4e92y79Qa64ANh5cY3I/eyUKwMNsKV9MOWMDTXASu4vfjT6XwG1JMwaeQ/QD71rGjWZx6GDQRk4m/MMYOR/K2paJmF1gD6w5e7AerwEvDDPtFb4ceOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728233754; c=relaxed/simple;
	bh=vfcVqUDOrSYNO5Q3toUdfnfGdRrpz4PZFhlsRUaU9lc=;
	h=To:Subject:From:Message-Id:Date; b=hFTFrF3l9DEbIP1ydlUiiLEzguPVpreTEft2iYEJnrgn3VPz+XPi3NxuL+6HTdVZpvoeQCuzZMekLAU7AJsqhR9DxAEb4yOzsfCHcYswMJNFFeDxRRKbC/CGXc7sGnExU611HdJtwhgHgfIotq81XIi4FsjzahNshkGIvGE2Naw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5XZpcTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5XZpcTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB7DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728233753;
	bh=vfcVqUDOrSYNO5Q3toUdfnfGdRrpz4PZFhlsRUaU9lc=;
	h=To:Subject:From:Date:From;
	b=R5XZpcTPLMGD3pwFrPn90VY4W7kc1QQWDW99LtuUP/OV5u+E22MEFqCc3Ra/tOWRe
	 842989dXH6Y7UdCk3XyEG7A3Z59lXJWhaYqk1jWre7Qp30LsCWFs6TSN9Cg19DGHyu
	 A3Ff88D298uEu9To6OTdoxiv3Tqjxj/m9tavWmWat7IHy7E0aezRRqdwTBFo8K8YNP
	 3pVBu8vmS6kOuForCxcSc2At0SXs0a2+BLseNVPXV/VsRO5A0yHDx/AgtBrU85evAb
	 NNkApKZKF/hmrhCiwjZmNwLu9wc0pfIb6s3tMPbyVyc/RBuQc110aKOKjy9O/VD8s3
	 hva/nbrLVWR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C70BCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823375360.23982.1844899673820258619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832ab0f9b77b467d8bbcac341550906e8704c03bb4ab17fd16432332862606cc
Date: Sun, 06 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728233753
