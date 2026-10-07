Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758D5392C2F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791361234; cv=none; b=KvyHe/DUNQ+QLIBMBe37ob9MXsLOy38G5tXE8tqNd3a8Ly2mc+hkWEBTRcxfnGjtoERwrldiDzcS1hW0yb0fvE2RBrdoi4Q3ARIRfN3dBIz3AKgBeWRRfmyI4iF9GpY0ow1UXNJWlX5rEDFNareAneWKXKUK4IlZgmidFTAqp7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791361234; c=relaxed/simple;
	bh=f1tabZk2HG+BSrUk86YWpCigEPbiF7F3mwRfxCwnbMY=;
	h=To:Subject:From:Message-Id:Date; b=BMOiD6XWt8kdgMQWkhEVJQ87XhaEtM69ans9qZ4ELTZq6+O7iLs4CMPPedA76PhNlcXiT6Y7/3nufjl+sAakeg0zzDLVEaBlw1sIZ4gXMDfhq2YVQWaptXPVzT5/NXzXw0m6JoaqsTSQzy4JDFFXsRrvpHatAXupMUIBqnlhJMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGwGr58R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGwGr58R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791361233;
	bh=f1tabZk2HG+BSrUk86YWpCigEPbiF7F3mwRfxCwnbMY=;
	h=To:Subject:From:Date:From;
	b=lGwGr58RbXc5d/c1DHKM9nfDfgmRlWpWVjlSee1dZOEc2LXXlkHGI+k7I0wq5pnfF
	 n4sRj0kRjf7WFroATyfwQMXfDksgDg3TJJRfMB5b7tw9DmNVYOUMs9RmQhvfuIpnWG
	 NAXbUUuilYFi8t00/OQ9ss6FvO6XAIZKYHD71lhzKIpDNkCPHkRgu5rZQgdSTeQIfe
	 nueNwEG2gruI191UB7CQTUho8dtEnb9Wu1LXQgWIaAjLTRIaNEisuUJ8TlR012KnXy
	 C4qRAusKrLemICtmwfdoIC6BmbKzDc/vdbxvFwvF78HmfxiF0kJdqAp3DFdrCVB0PU
	 UNHnZ7de92lxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E82CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136123368.13586.11412502667198315003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4688d84662736663173de620275902f3aa72d3819e8938f782e8b7009433e8d8
Date: Wed, 07 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791361233
