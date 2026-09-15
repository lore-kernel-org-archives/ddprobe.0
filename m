Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B27042376C
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789507234; cv=none; b=HVDLDd2zHg/tsUxtt9gW+7s9WsTc4Wrzj9sjnowCQoU8+6vosa5mPC2llCnqMfdINe1JzPtZx8QgaEy1X6okiiIASgwmRiwnpGwwoNYiQcOkVMCMq+4RdjLGNAb/shD7NT1xekjzjajTVgnZd14P0pco6v+fe9caVLuvmwnG1m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789507234; c=relaxed/simple;
	bh=RokOzsOENdiob2KiGS3CMnIdCG0JYZppMHfGXN3YzkI=;
	h=To:Subject:From:Message-Id:Date; b=F+hFX9NF21LR4G/U45kKowHZLx2yLcq7YCvINj0w3F0l7VUBeq7pKppC7GexF8c3WeM8tjm3OLaYfJ6qOVd2x+TQiL9Ga1VNc9hfGW+mpR2/Eeq3f7InCtX0XwahaQwyuKZHd59+D1PFuXIzaAfxWHogNH3pKkJaIp0Ij2FhJgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b02tTUax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b02tTUax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7A0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789507233;
	bh=RokOzsOENdiob2KiGS3CMnIdCG0JYZppMHfGXN3YzkI=;
	h=To:Subject:From:Date:From;
	b=b02tTUax+4s3ad94gLZTzJFopy8UzibprsRtufbjJSLLaHLNjNgAjzYKst4bMokSL
	 NJ8lA85/+9fSBI5ktJtHTeETR8lNBz+7uAjvRDV8tMNmhfyGXLndXH74tuJERw1vd1
	 /BjRGEkcl+AaNEtzLdwVOoSbcr5wcY7scOf+4GGN8OY9NF6i+Y8lkCN/iy2azSAWiN
	 80OJaOjnTk3SiOmgptBlQo+AoI5m2lWS8+B/ZIwoWHR0J/jq29PFxddcx6zq8/5pwy
	 YWPWxAkgrWbYmOZsLGLfar9Jp7SAYgohag/RzZ8sjub6HabkPTlflmHigO4GiAyC9j
	 juIXVekT1TIBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9203C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950723368.4487.3879372130176603865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3d9c51372c4e9543071629b13b4ac6291f6821a19c09895c66a429d8230ccb
Date: Tue, 15 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789507233
