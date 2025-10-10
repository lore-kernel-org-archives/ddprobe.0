Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290C72E9755
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760140194; cv=none; b=Ju8djiK6ntzdyNdGFASKHBzv+Ja6NzzVzLaQHm+mBR1k/nGLeq443hc9vyFRUUV6K/qkoxe/AkXzKqYuv+6LqBBpE/lr9ydIR6g8fTuf83hcbVn69gQoiBLY/gQniKeDD32b0Cn5vaQud2aX5jW2Nh+R1h6cmJJZIn+wbJMqPtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760140194; c=relaxed/simple;
	bh=hkBbKJh1fIjcFB+QkoiLI1KiYDTaS6BsZNS5kcsTcnI=;
	h=To:Subject:From:Message-Id:Date; b=TG6Bl9zWcZ28iEPQNsgod/SmdMVHJabftkEPgvnup5agdIIKRDuNnDMRTjSMZ26Xb/43aaa0H+JcD5DQtUu6bn/j1XXu3d2IdvmsZPVX2E3sgVn7Cak4jtQKez8Zsd/npjAVjM8RrPJwFKa5yTtgx07UkPsZHEtEQw2JgCciEfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6lJ31iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6lJ31iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8291C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760140193;
	bh=hkBbKJh1fIjcFB+QkoiLI1KiYDTaS6BsZNS5kcsTcnI=;
	h=To:Subject:From:Date:From;
	b=P6lJ31iz8tti1CxioIxb8Uu6YWfeTtYehFdObvdFFot25ON/vKfzyUnpkmNL7Uaha
	 HTD3FDmyZAwnghORwlbZTOQesR5WdwF+j2h6QNb/AR3DEk2V7nTRCgyqhWwFrvroFl
	 w8LeKUqi2PyBeo4ciWqFTzbYeJ94ZwWLYwRmDQM/lx0ZkjJ7wIHZ13qUtZaQ+c0Bh7
	 x0n9ER1z6PHD0ji88Zq6XE4ZL3ZfYEeBBY1Ndu7VmUNLJq1UMoqzNTddwDAd2kLFEH
	 PUG1log/4QANsPo5pT53wZsbIGqTnpmPidc8ZKrCc3Vd1L9/dR0gOw11kJE5Ifblnb
	 mJ4PssbbYNTFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B99CCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014019359.8331.18237856837672873798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95aaf82c04161928123bea717cfc408b74dad53eaff92bc0b1927179aa839dc7
Date: Fri, 10 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760140193
