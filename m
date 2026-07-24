Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C362931C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784854234; cv=none; b=nEGttfiUtWwiD5d9VR/YFo0A9gMikPX7AtZmCRVE2z6sy0+7HnbtSTAmJ6V2mCkCHArm15+fYy4sECHHUAPoHXtMK1oi0LUB5P2ygMsAKp9hUqMDIT7efcAhobO/oArytf00q6HGPYAj8XULlPhHZevRAbZpiQdH81PA3VNzl00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784854234; c=relaxed/simple;
	bh=N8JFI7+Xos2kyVI08bipRUBgDBSM7BqLt1e/xOHS0DI=;
	h=To:Subject:From:Message-Id:Date; b=cGVmMCFzgwWjVLM3bCsIQq1PylihPbnC6AHXKJZxvj05Q8E11MGG5kUw7o30a6xx/rGhzFCeojr9A9rLUODSErjw/Ui89AqES3oS/6DFr9ld+oeTn73oapUZytGUgt4fFvDwMcS7nyLJvNdbQdp4IWJhT/+REUPG86tLaByApsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKTt9/Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKTt9/Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ED9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784854233;
	bh=N8JFI7+Xos2kyVI08bipRUBgDBSM7BqLt1e/xOHS0DI=;
	h=To:Subject:From:Date:From;
	b=CKTt9/XxxRcoY3pDGP4mEGcRu6HmRFFOTtLcHjSlj/nxrVW4vyqL7ys6YVZjai2+P
	 WtXPksuB3T99yrhxqr+DJ/y/q+vcg7JECCqZFyAU3ckxWcEQ222kbbdOy4tZYr/Ujy
	 OT27pDp09NdOdfWBH+gKjb0nev9PTvI+x/AbW5u2mQLg/owv2cAdMEXpRtDPUQczY0
	 RT6tZ/T4kAItqfUjbjKc58wJ2Nicwc2lSETgNf3WdiYt/ELExQFTl3PPLhGgp1HLTU
	 H8PWtKp6AkNPB4nt0gZMQY0n/2bwgDtAANk8oebyN8QUo4vb2KUJExwdR3xcv8L0+z
	 0AirBgM4yDdfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8032C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485423368.30457.18331532910528194147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f420e4f3d277ba3ea29f0869bab7c3b8aaaaab87ad1c997e32b44e28cfe98661
Date: Fri, 24 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784854233
