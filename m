Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F95171E59
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712339897; cv=none; b=lQXIAnzKyfnUpz3qr2TP+NN9tjtlepcNS4YaO+DuznQT+E5WGwoRztCvAWj3+TjR//i+c2IcgW4+qvHpzQ4hWB+aUPFnzwSNeb60gIYJyZ9Y3Som85QvR17FYZwO2RO5fwyp+rjFr/1Et0Ez3oO3nfmYXbz4EKwo3Li3SlQylJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712339897; c=relaxed/simple;
	bh=CZVjC5kpV0Ye56HBpp6baQunx9+i3+VrrnpW82sJs5A=;
	h=To:Subject:From:Message-Id:Date; b=b0SKsNGevav7r1yN84rjCk1v/hSuyplFJhdPcdr1b1QrH1LJhr+UeCAq/7BPDnPc0yJLk3OdxvXaBcRcm8w7iHTDpGC915DY4csv+FsN7p7L3lk4WCLcDhB+1cjKBDdrss2HgLi9gvIj7YqoIB0NahtbzvIQZ3rptvhnTGpvhr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuQ2JnS2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuQ2JnS2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78886C433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712339896;
	bh=CZVjC5kpV0Ye56HBpp6baQunx9+i3+VrrnpW82sJs5A=;
	h=To:Subject:From:Date:From;
	b=WuQ2JnS211DG7JQGz30HMf5sT3YMwCuBduA5brKnqqVqXQ7/9/UwkrbzD6le/l7oM
	 WLSQLWnIYAFam8D8Vw/4fcRGSwqnIKpPqpUKl+PhhIahTzUyQ1UpCs946BxRspU92r
	 Zqq3CwPLFYfVnvd7DyeB8CTZUy0over6d5Oo5pFSzhPRjGKamM+d585XobPuDLmUKu
	 ODcZSBcTxpY4itonfuC6xi3BJo3czJR0Oda/+JUh5tsyRihtt7Uu7CiGZB5NIW7kCH
	 QumBwQ/eM952A65WmCWJHvDCPkX3ECgpDYbbcI9yrywei0Z6xaDKibjynMUynH6m4i
	 6Ilo3Wp20KZAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BD5C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233989640.24496.1575883506339343748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c0d6f8a57050bd9dfe57fbbc1a9d981a80fd9cee52e7d84525126dd7cd0203
Date: Fri, 05 Apr 2024 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712339896
