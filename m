Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6AF3D5C12
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778606434; cv=none; b=lMH4QY3ws5t4mbO2C1VsEDawkrnZuktl5WMC9u2eL9TeFIRPcyF6DU6M+kQgpVsukZ8thOFjWZJlTDY0NbQUEw2Uc9gDgpb++cI6MgEBi1z+vA/qbsizCIv92l2y1nlMEQHMZRiQwUvjI3H/VRqWWOSwx12nCgi3p2+cFkgG27U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778606434; c=relaxed/simple;
	bh=RuHpWHgdWKqHcXqBS5971BkS1peSDevctfERQgOSs5k=;
	h=To:Subject:From:Message-Id:Date; b=Y+lJugJ46T4FUXfaY15nD2g9sFgHEayQzTufaYb6RsRMSwi2iK5AxhYG+Ev2w2G/R3yHgSQHv25tMym8MS8ZDjB2MJ9y7NJnSSjGBOd4+urL2fIAMeT/wRFqG7dhlOsUBZw+1pL2lj45OOk2UsPhh1tAXGI45AWQngRi/qOdMnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezZKfi7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezZKfi7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2F3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778606433;
	bh=RuHpWHgdWKqHcXqBS5971BkS1peSDevctfERQgOSs5k=;
	h=To:Subject:From:Date:From;
	b=ezZKfi7Tl9/45zihyViWv5bKWqF4DE8DQSVoZ5s48IApRGyeNJ/gRxPoI/rQK2ZO5
	 EAL7imZaNJ5IAZlI6ndiFC7faa/ZFmOEr1lsEcMQvpA0Htxk7DoJ2sU1MD7WdEfk5m
	 7LSMcGWYju8/bwVXryVIgEsqGlpH0ExseF6Xu5OlAY/Ass6y8b465VmA0vyz64WMA2
	 8dM1dapg/rMS+8//tYzBUu7ytLwbcKLsSJjsE3o2ftFepnMHLLLfLPYforzQNqbLDm
	 nHkMdjoWNRxKRX83b5Soo+F2oIKTMQT0FHJvM6HtctB6ffy7FcnvEZMq9pdlagG6lM
	 JgzQOBp6c1Fdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC7CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860643369.3619.16697159839111669772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd6aea649af97915a3b939bf5a17e4dac401b0239029f27226dcd153e82daca
Date: Tue, 12 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778606433
