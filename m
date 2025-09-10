Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAC30BF6C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757489994; cv=none; b=O0EKHzSyNm1TCB/buxNQNCa+yl6lAok4QQypaNjwqCp5ir6huPhs5rTbFcce9lPmCthohZbnBwhaZJ7UEJxRd2y703IoqLElMdJS4JkpnEFvnTy9IVEFuieIKMmKIZHciAU5hx2P5rkgKmxkELMu0QZIcTxznrnev2BB5b0d09w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757489994; c=relaxed/simple;
	bh=0FR9cv3X9UP3XSy2q+1ZJoPqttKV/2TVz/OiOMXlgWE=;
	h=To:Subject:From:Message-Id:Date; b=UzgoLhol7CblQY+cmpH9MEUQigITDPXfZd3QDKmQLeJb1MKZxUVmUlap2+JRIFr0qFBj2nGQYudPz6o01hGEOz6xLTfvAIdH7vtcoXUYMsytYZuBrt6JTZ0JI5YVAYHK6IPRke36zlq/oqFFFs4GopZg64ejXM7M8ylGzQMI1ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1o7EoC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1o7EoC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8C8C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757489993;
	bh=0FR9cv3X9UP3XSy2q+1ZJoPqttKV/2TVz/OiOMXlgWE=;
	h=To:Subject:From:Date:From;
	b=S1o7EoC2nxmQlYkM24PUnxpBCacJH7mllybDPemyTcTlZaDTY39GVVAk4c+tR/IYi
	 Lr8RBAXYV4QBHh4Xolad4udMfdEb4/acQ8BkxWzhXCWt/cw0mipW15ZLhl77kTDGBg
	 /8eIw/t6ShFl5zduM825QQhVKp2ylskZ9Fmspis4+vb5AxnG3UJ31DIiV6ZMsTSsJO
	 I1NONMmXCEPDT7Eo4HwhS7xaYsF4Px81yDp9UhVRFWjjAdRlN15pSB28YuvAjll+Qc
	 89rhduJWYkH0nDdI//rx3qFj/yXPQx6JSkPt+iqbGwFwKrEaPGvgqB13h+C2t6/fkt
	 sbsWTOGlVCLMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0CCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748999357.7085.4447362268609041413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3746a0dedc0e34b7aad511a8c66d7bbb900d743a6f7d5acc597b083a1447b629
Date: Wed, 10 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757489993
