Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3918A1D9324
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752996594; cv=none; b=mr6IWMFZ3stmLYSmz7TVzI41uh9NdzXapPZ/UDHRYva2aS5VW9qfA67xF9lKdH30+ZUOTQgtehJeLBXrXUHtS5UGC/fV/lg4lSwZpEbtfYlxUc5GOKwjMHxGjCNH+cYLoEyUrBjHwLotlAU/CMogakN2SUE4/L87qte0Laod9Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752996594; c=relaxed/simple;
	bh=DEjz4EnuyeqJyP9iqZXEl6a3KLNZWcXltTWBUIi3mVM=;
	h=To:Subject:From:Message-Id:Date; b=eHpwKPh0lfSv5Fzo8B5m1auQb8DNdeflGie+r+9KKBeeqFY89nLWMrNAP9gn334mwan8C0TKLPg51LPN1bI+SZHFHNIroniyTsCgGivFuQO4zfrLSS5Luh0pJdMBLh05mfDEkTNVmj8G1bnFCmvwXnA6Tp/csFiT3VHxIwtA6UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtLor9G1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtLor9G1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4446C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752996593;
	bh=DEjz4EnuyeqJyP9iqZXEl6a3KLNZWcXltTWBUIi3mVM=;
	h=To:Subject:From:Date:From;
	b=JtLor9G1QaVs/ZWEVq2Tcyb57QXIseOxBgHLYDbfwUJCGv9hH0LwoWa3FM6XHVaP1
	 2KhRoHVKDnm7JCqDN4sUiLb6waimaL6V7nwLjqfs6ytEUCtfQMgK8BnmIBx+F3BjX0
	 lZtKBYZ5RCF6tuKfabdDtTig3i1mKguvnVnAO/gWJ95qi99uqkiR+tqANnn4WfMkmT
	 l4RQy/8DvJiFEt5NwLHCTGXM001kNWpRjYShLpSgFo8DW3PIq26eX5F1Cd57RxsMqi
	 Qkq2Pbr8YAGazELa5En1jemDemFskbB5gdh6EGw3Uxqg50nyLEV3jOUvYAzrZ1Veyw
	 OXV+ItBn42m+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96873C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299659359.11843.16358773671918183491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad332d48fdb402982be9b29cc2a392a84c1c6bdd420834d972afcbdec3a963be
Date: Sun, 20 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752996593
