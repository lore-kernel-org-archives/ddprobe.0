Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285D815AF1
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716021143; cv=none; b=uZbrseCEBuUoJagxY2RWm0LSDIG0ogESB1BJgXsSa/3p+qLc8Em0vEPhoa6EjiYR7IW3u26D47nhCqQbNclRzlukOpVLF8N9o8n19PiDPdjheTBUblIOih5t78JrRXvyeOo4kcdBh7pnIzOJxVjlS7d/aR3oXkP+hn/8q4uv1Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716021143; c=relaxed/simple;
	bh=ZNW3EsY5pE9cmGPcBg5lXEILBjtkt4EZ003MvAtttYg=;
	h=To:Subject:From:Message-Id:Date; b=jCtzB53bvd1JilLVEFXBEONHFIvhHZ9zdLB8BvSJTqN2UiwsVldT8IluWY1/4LMzg147aGphGeNaU56oE17POi/bvuQ7T8wfsE1B4xJ8RJogP5kVoLBfEGd2ACC736PT7jd7EGnf40US7gDRIi/0EgOXXDcS7LctWm45WLtU/ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrBipLxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrBipLxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1813C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716021142;
	bh=ZNW3EsY5pE9cmGPcBg5lXEILBjtkt4EZ003MvAtttYg=;
	h=To:Subject:From:Date:From;
	b=LrBipLxPMqlMmtncNoIEsyaO2IU+h6bIqTGgUGrnJ53c+7T4/baApDK7sedn08AMm
	 oVyN3moT5iED23ET+7c0Ngk7PmNMGLuIaWJbnNs8oQEI0Uu0mQkmnT5Rx5TiUpLDhL
	 iBEFh0nClilk4aiW0xiKi1uNxcaIxi/IkvHutBpqPl8l1WAQD+EKptGTifq9kP57AF
	 3NXspwd19kR0ra3NbeYLRtkHT2VWdFTfC6gHcpvfXT1uWbyp+HLAPm1gawGEWi+qV9
	 DeoK53aPf/6052VsG8TJH+RFhwEvTzBrmeKUyI4w6eoWMt01Fj+hqjGSiqLqZAY9iG
	 qxQVyC3oOF/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC5EC25B7A
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171602114276.9917.13183097274045786528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742a24665dfd963fcaa6d833cc10e0b59da3458a835786a27b8c797a149344e3
Date: Sat, 18 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716021142
