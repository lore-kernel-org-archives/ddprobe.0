Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6AD20B80B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767240834; cv=none; b=Rvh0Ci0WrGgYK54gAgpEoEMeBryFnM/Iz4Un6dajD+Au8Z2OrkO4ByaXatPqPw9bSkbV2q1BV/MEouwgO/NOSNvuCJ76f8DB4SiFKWGiDpa9MlGx+echuO2xwgvYBxURdl7+i+ydJcRbQG6YV/IxX1C4ogwzDCEj/OaK+9yJUPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767240834; c=relaxed/simple;
	bh=7J9seNniMNC8XWdG43iOSNdeq9jqFSogiShiJds6J6Q=;
	h=To:Subject:From:Message-Id:Date; b=YBx/ilMU10JVwc0Zg/OiCfyBjPzYMBxetLczcdP40TQLOCtWva2Cq+YAQMv4J7FVDFMvxfPGamGQjrjw1Lqj+VfzsraQAb4BBPVRwht4LudqAdnjGuhzkwu9tZanQ1SSjqZm5X9FikiLU1CjVBKGFEKeShuaflsDyvIuz10oC8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAyLn3w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAyLn3w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EB8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767240833;
	bh=7J9seNniMNC8XWdG43iOSNdeq9jqFSogiShiJds6J6Q=;
	h=To:Subject:From:Date:From;
	b=VAyLn3w+33Yq7OpeDYiXUp4HZSzkITSyLabx6Ek/lyNikx0KmgVmQTq66E1gIa6+n
	 mw1aK7kO8b7wyUORhIIhVbc10IV10Eg2KMQocqGHA053GRvDADiwUU6ZjI5Wlx32Dr
	 DYBnU+B9wGLz7dcA0OeOCPjSII0U6p8c6ZdmP+qDnk1k2aWdW7pdV9C3s0R2qB+zP5
	 T+7hvsFgagxHiFXKxfip0L3O7ybdZrrI1NE2d6hA+A8GTML+XQNES0JMwRvZCvi4sm
	 6sG+nVHI0YT5d9g7VwN2akzJPY+ZLmKAwV4wdfJ3Nka3Ad6omDEQ/IU1jMfc5VC7gM
	 V43BfpMlfXcVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E64EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724083358.3474.958165525973312090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310ab5e2bad7e4781a9ad8a28b051bdb2786832ffd11bf14be038c52db116c1c
Date: Thu, 01 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767240833
