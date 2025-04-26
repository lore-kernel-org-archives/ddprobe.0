Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EDD1E32BE
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745627393; cv=none; b=OmDHete4Xjj0f/UWlCrXMbdVYolO7rT58ye7d4bwKSKUTjed9WCapuZIW64VFrO+QiyXeyY8hkeE+SQhT2TmEprA7cSFZrOL1R+SbIfPTLLVEtJFKk9RmDKN4wOC32pkNMRnatuyjyRa1Q3VGyokq2FLhoQd+8IuxV6aC2zpr0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745627393; c=relaxed/simple;
	bh=37CTSgK1Aa71tWgeFN+FyhTTqsf2T9tX0DeoWHVq+4k=;
	h=To:Subject:From:Message-Id:Date; b=CN/jr9Ea0rgVeMuUrFkwcEvDeTnjUFqJhuDV74QiBr46eNnhaJ2RhRMibXYFzU03SuDVWHv0B2thbFyIfJJl+rRVQbIBuBzwbjHcP6NDWlsdetn5ciZdtTgaR0auxodQMxGdhMUEwQURpYaDPd1I8flrXQIOlqAYB8drTcs4CrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7w19BUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7w19BUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE8C4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745627393;
	bh=37CTSgK1Aa71tWgeFN+FyhTTqsf2T9tX0DeoWHVq+4k=;
	h=To:Subject:From:Date:From;
	b=e7w19BUNS7kX8GyQikCNMZkuE9g/yNI0PMyog8pvSihVARehG4luVMGZskq2jmHGn
	 CyTlyIhBGGBmdrtQrTPDkAkToV7q5bAEYS/Rr93jafbW9EqY3jUdAPOVjRLy4135bf
	 qL4QrsaPMwLFiwgQ6W7vBXAJg7Qc4wU4bk+xfRnIIHLxs1ZCwUO5rJSpYysqOv4zmY
	 VZMzC1HChXj3wavcUjU0d3PD5UsgrAwssidXOVNqGXuIkYJDMWjpjrdmarAipvqZqY
	 KffCFPBOSaWUqhzPMUnmLcOLIRVdHMZDtZNJ4kVKVw95+X1RfaTiFE1779EUFuhPut
	 KR8qAsyl213cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189DC369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562739357.8463.1026952835763667197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f352b81f1965eea89c335b5956f37632a6ab2149519016a10728e555d9086a
Date: Sat, 26 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745627393
