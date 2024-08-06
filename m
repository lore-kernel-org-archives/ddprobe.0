Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAE718D650
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722977154; cv=none; b=EXJpkYAn2ssTsiUPsisAUGqfZGLcWP4rGL1XXfDkjKs2dZZG8YgrBzzL2WUlhVB5jZhMmumNS4J1GmPOCLuCcTh5/1Q1GqxDCM19rlSGCM24Tt3aFibl2mJDNtRQlzdPHPMnnytZlkqxGZ6JvgM0VUsgOlSiMViW279kKiiEXHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722977154; c=relaxed/simple;
	bh=rD/p+Z8YaOufvVxxq7RTKfjgYdUX1uhIMMRnbh9Mg8k=;
	h=To:Subject:From:Message-Id:Date; b=fZGx6REf5q4ieOhpgEbsJf2WwQ8m3scUfz4BtB5KPdo0f6WYLpSOdjqFFf5jkqH68Y+Lee+wHawlg3uEOit8WVaZ5UNYH/v1xhen/MhxT9U25hzUM6ptYqPgDNeex9j7WrvECmlWrie3hk8tuDPXhBnbuqTMNiqj6vj2k8yrGXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3kPApq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3kPApq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E36C4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722977153;
	bh=rD/p+Z8YaOufvVxxq7RTKfjgYdUX1uhIMMRnbh9Mg8k=;
	h=To:Subject:From:Date:From;
	b=H3kPApq1kYQxizWpxIXjQHHTQ/EtmGkP13DkrA2w9j8k4UnTVr4+6Xd99ZLKTq9Aj
	 hzBKN3eJ27SwZb7KunaBwRIKnPAXkHcAycE1Z4sFyRouBfgDAZAmdpv1fi8RyPQfOi
	 dXCs4QINPqyGnl32yvndze7WQe/AR9ek7uPBxXM0BcbHfxgZ87D4GzAviWvX/syCGS
	 qFV02KAbuEZ/ReScfVTpeXAsKWTv2SWHrxhW4eH9kXD2JV7e3DkFIR8hhmzfxv8gx5
	 b/a0e1P4qpOrFYbiiX/v0qoNlHeCAuO/eEiY98R7XbZnhCsJNdwSRxlLjf3YbsQril
	 QJ8m3/64TJwkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C8C52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172297715358.6875.11605130407949992686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ec73aa27fea4e4e24c0281f22c6ffb358b82cceff99d2a4bee9d7724f0838e
Date: Tue, 06 Aug 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722977153
