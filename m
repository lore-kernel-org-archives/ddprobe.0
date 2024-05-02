Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6109656B73
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714643543; cv=none; b=XW64QWU0rdp9spnG9hh32rUI+rV4/NR5fKx/sxZwDVM06yFFdFQ8It33iWAqJnoHn7om3hbFGSSfF8GQzFuZg/gFVK5We3PkaKpSJIxEH/K6cLg9LgDAyvZLPO7nptfDdVPY9Nn+zzx831WX5xfHxiLpA3Vqg9BM/grUJ7yVgDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714643543; c=relaxed/simple;
	bh=6pBciBpQIOLwt0VTXcV0mdn3yelULsD0CpXwMue5i5U=;
	h=To:Subject:From:Message-Id:Date; b=S0Qs/16zZu8DV9rTzK+MBgJgqucuTTAFFHhL24QepNLBj7TMpeoqeOxtDT5C0x5oNA/hKpqGb9Ol9222Ga19Qvw3BPVveP5LtikVbz+GO1lNhUbQI8Wc1bxPmEl1+iPiryWYd64IG5PKap46HWzaLcKWWiWldYG+jYXEDw8fz6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbJDd1n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbJDd1n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C67C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714643542;
	bh=6pBciBpQIOLwt0VTXcV0mdn3yelULsD0CpXwMue5i5U=;
	h=To:Subject:From:Date:From;
	b=BbJDd1n76EupguNeKzMcXJJT6efxGyi69wgz5xKPXqkEfV0HGSYgK3KbzdqFhubVA
	 AbtViEJMqZp5n13nOOWrW3JRclipjc38fe9aKVLwohYh7OB/xmyUBzVu5g+EJ3KiQm
	 Udu9odDVkQZHoxOCW1nwpnWl/gERl8NS6h03O7sStu5TBXMl+we900Ae6zrs1sCPJU
	 vMpo2logtN++RFRc4JUmOOgEBH6APtTFDyuKaIxZfPQK1fDIuM831fqbkLVWJvJvE3
	 f8b0kGtF/F0SP7B+wc2goKrEvFRX9W8XBJV9HG+wwd9I+Fwj04AdTLdazwYCgVJyC1
	 RQK9fSi0SO8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2508C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464354278.19646.10083680359486510426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3437413ffacb3fcb7258cfc7adbaddc741d11484391dd1151786a0cbc98b9d3d
Date: Thu, 02 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714643542
