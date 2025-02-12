Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539072AD2A
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739369215; cv=none; b=kvBBZDMNrBp1My4XCpYAghLp5CgxZPPyVmZAhJ0SwGYnT8Avz85a0bIqEnc//F8MJvNoOEaTUKvfnCLIE2jMLz98F6Qm/OPLkofxKJn55A9yhgoFOzELpAgGufdDUPi10UmrGjEeRt22+JqsqnI3y0JVm3h4/WAyPA/B3mSAJ8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739369215; c=relaxed/simple;
	bh=mBE6tMH7dxYA0Ci4kYhBvQwy6VDJHgfT45TgG9I97hc=;
	h=To:Subject:From:Message-Id:Date; b=E0C6OpkiqcXRpWHGVa5KwHGCoJL/zSYLn1cnUVLqly6Im0hRVVQLNamVcDHGRvREVY3tYgGD1j48wE+F35+5EMWqLex/MyyKBu6elBDCkPG8mHY4BScnr1EY3K1G/cxlO95pSsCLLKdoHdjun6teiwzcO3EuPI85YrBW1LBPhaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hiCsEEPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hiCsEEPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8540C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739369214;
	bh=mBE6tMH7dxYA0Ci4kYhBvQwy6VDJHgfT45TgG9I97hc=;
	h=To:Subject:From:Date:From;
	b=hiCsEEPCySOejoYoH8M+IiMFGtA7lmiZ1gZgMCgNHfaGotWhWJ3s2j03sPnwsSn7j
	 6kT8pzxkxjePb2b/CvdlS52Cy1KdgfdUXkYXczIEK+9cHkausUpF0XJBht2bj4+diT
	 HkQK4Lu0YRKn6ToktNOFmtuhBWKiqcczc4g/JJQ9C/doC88ybyN4Trh83MNP/fxXPL
	 GGmWayHQKlVqRSX3rdSGae1IljaY3GHylCTA7uXUAeDE2u4C3kfDFN6cicghGybDzL
	 84q+rTMMncIfhX3hSL7d3t4T7FS4IeLfrelsgaK6ZMpCbkxCliB40h7SGLEzQykmFP
	 xfdXp41JQbLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3905AC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 14:06:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936921400.29659.9904932034845100156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178941bc069118d77100f01a0dcab131422450551807b9649d8750e9ee599e08
Date: Wed, 12 Feb 2025 14:06:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739369214
