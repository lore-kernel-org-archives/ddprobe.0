Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A8E4315A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749151195; cv=none; b=sTzYtyGoBLZidSuyNxB4AZGrCAcSC97ZVok8mptAvfuskv/Sl/tW2Jlg/wLZ3MUADCx4fdRKiMhxLs49JgEsls9qIccD35Y+Awo4KnL10FWWKBPRyJIRrR3y/rm9fz4KisSfhMzCsOvM0qG6QzqXqtkdHfEfGsAABBMJS/M+OB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749151195; c=relaxed/simple;
	bh=5Ft+CN8b74k2SPt2YQpnoRTKmKOc7jJZ863a8Ry+kEA=;
	h=To:Subject:From:Message-Id:Date; b=WeiOtRo60jHhiLhqKZzUbarhRyY5PxjomvJLF9fhxrkqIriABZ4y+CTN6nxjJUvzFjeEfgC/J8bwoabtg/QqKygDLrZ6V/yASMwCGwkVzSwKrtPmJcREsWJ2s1JY0+Fkb5eyfrSIsmrjJEaqp/uUAqmYSgbtXiHmrckwcqOh/Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCNbjuG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCNbjuG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749151193;
	bh=5Ft+CN8b74k2SPt2YQpnoRTKmKOc7jJZ863a8Ry+kEA=;
	h=To:Subject:From:Date:From;
	b=mCNbjuG9eElhOTr+1ChUY31SVBP0htktmcqdqFuSOkitonfaj+xY1oJbHOFDgevT9
	 OXFkCDuSa+dbnjTNbPpKAX595xBpkxEC/xqlnZaF7kNUemxhXjQSdRM8Ogkr6eOmFJ
	 0dGXSxy8NKd5Wd4Yx/a+7X9HmRGIhUUU/l0GjAg+33NCF34mUW9LfGSrao1Dv/faeh
	 sOAIsvtNOlUT0FUvnmgvecEopWH7kRPRm1BRKkt+/mhBSCenAoENPHCyGESlreRKmb
	 /UiE5bbi9I0vyazNcRIYDeP8moxYqjNkACuRMJ0/ogKAqz5flAn6sK1IqIXXT7uG6R
	 KlUY1zBX1OGlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154CC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915119358.8889.12485502448554901845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76dbcf6a93527216cd322ca200843f4b38da7eb4cf140f7738bc5aa54ae1e48f
Date: Thu, 05 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749151193
