Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D61F3ACA7F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782944914; cv=none; b=RfVtuOjAGKeUUpM4bDAUwppjkhv73X9kLIzDaltiGMpd35kZXkug+zcZdCN5h33Jwpe1IIgnLP8HrwDu1QTT7onO+QYTCWmJ3w8kCF3Duh9gnECNVhYEyR6oz5VEcenq1+GrFGsyOocYk7FI694Ze91C2Ad0FNX+GH0kHe/K2uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782944914; c=relaxed/simple;
	bh=VdvGmwtm26xdmxdv3RePEjry9v+mMNviplHT0ROb+F0=;
	h=To:Subject:From:Message-Id:Date; b=WNq8emJEscK9UUt1jQTU/sMpkdABSnH8BCN+yyaeY+Nim7QsGv0AWrljJG1V4tw3tBFAEFm1lvKKHf5ERahkGFhmpNvw2m4oSU4yxiFGyDkM5UE+Rq5pgQnNPuOnDp/z3IeP2Kcr7vzrG73+ZVgBXDs+OUrIFsLOzFys0lpC8bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC55GVzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC55GVzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25EDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782944913;
	bh=VdvGmwtm26xdmxdv3RePEjry9v+mMNviplHT0ROb+F0=;
	h=To:Subject:From:Date:From;
	b=fC55GVzZrQI2RPRMD+mJsz3ndGqpMWKpfeuFH1Moba4CB6GHEMrcZuJpOvjQsgz5A
	 mToUWClmacLJ0eOBMYPgKUIOQtGQSQPilHDxItR4BXfi8FOOdwdQvmJSPENkY3hKTb
	 8rtuYX6SyeXUNplfvQ5BFsoOhO5MBI1zppbKtkifOo1O0ePlSokSjk9AG3S4NS9wVi
	 gd7XdO2HDcFWftyHh+bkhyOeLGnZQMIf1s4ThTLb8wwsx4jXqKy5JlRBnKrH6oPgqe
	 zwPDLop/UCVbhMT9jZKXffJ3VgEp76IdMRqcbZy/JIDOwgfXRBtfh4P/JtUQ/A2/m0
	 V1RkOWtS18PvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B1C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294491368.17231.15987004594340432567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ff245abdd7ffd127c26658ff1af00d2dc05f29c3bd6ef912c04611cb02d6df
Date: Wed, 01 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782944913
