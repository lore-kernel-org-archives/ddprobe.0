Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1BD17C69
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735968954; cv=none; b=sE2m6BiPDnvUtDr8n9/4Cr5NE90a3sqsjEo7IXN09gse6NiUdBk9As9rzBgiBKLy7iT2zQa0jlRUWVROAZzom+rCFGmAQMrkcqegd3dAP34J6Sh8tXATeEelgM/urjZdBtJ/EJMfzBJT1WMThouPSEvi88RKsWdarEHdqAV+/rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735968954; c=relaxed/simple;
	bh=usii7Lef5L4ekGb8mPP+AD9QPyrnt3wMeyww8cvLilE=;
	h=To:Subject:From:Message-Id:Date; b=XRVXyhdsJK/PqUXSFUkCMUZ0+IjQFpKMK7DQ2liAN0ViL1ibkP/nn1WEEvfebwZBimAUQklECrqF0U+SssPv6a/orplZ6I04nT9igsQcc7Dh3+d7jMrQO0SO14piVeKi6rVnci2xWcgtzJqJnuhI/TYAiTLxlI8m/63BPt/ghmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGC/eB3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGC/eB3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF099C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735968953;
	bh=usii7Lef5L4ekGb8mPP+AD9QPyrnt3wMeyww8cvLilE=;
	h=To:Subject:From:Date:From;
	b=bGC/eB3gCUyEEcNW7onyNTJK56DbJU8CdwbGTfnKRmzXwTvxBJ0vtk972EjNtnciT
	 uY9lF6oeA3nuybswFK3OuTpW0oNfVowglT3JH34pSy4IKPOJEQWBlgiTkf+GCCsoVG
	 qiUL4hLA5iS2rLQmIF1zvSJYGoX+4wXLyx/SMcomGA38pFcHS0u+WrrznjjXjYieee
	 S81s0owKCicGoplnW6Qd6ZLp9TpWtMfGZ+/mFG0R0UE8vYLmw3x4MKVlhSXYNtZk8U
	 E8x3xU3S7y70NwV/pjNKwCMW1VOEMPgPUBtWMiHPqJwTNFdQhSWqP9KYOC+f0zCUOI
	 ce7GvwXmxvcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5BCE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596895365.8731.10731680088764622989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a320cafdee718ec89f6157af26980d42c528b777c2a70af8def3964d039ba64
Date: Sat, 04 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735968953
