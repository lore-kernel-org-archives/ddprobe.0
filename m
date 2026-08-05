Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC7C3E315E
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785915634; cv=none; b=PsX9365l5kYEkDIgZHM++AuYQDGperOwZtO40hLHN9TRKO+v0qhYZiTOxu05imRyqR+Hgz/Op7qFSqzMjDmMStNaWGpnLtSXoInIVbYijAb/lHnIj7+NqSv5rIEIkKtOt9gbuxLSVvllas4pr+4GiyXocJiESDVVpz9sPuvNsZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785915634; c=relaxed/simple;
	bh=RIAPq/V/+4881L/Jg1VK/Q7xRPYN80MuEtIg4moDXCU=;
	h=To:Subject:From:Message-Id:Date; b=buF3aDStTrwa9i+hx5IzfEHOlMRsX60HPt1BcknrKsBa7MZVJpeU5N3iLqZ+HdEX3i4dZFDHMPAMrfMJaI1QPdvU9t1n76VhFIANvSzO53f7UbTZAdpzJKvhL9RzJ6641ejK3z3ZZjmfyynp82gJpPTY0/SPzAkZZmavSnXDxPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpP1GoY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpP1GoY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD1DC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785915633;
	bh=RIAPq/V/+4881L/Jg1VK/Q7xRPYN80MuEtIg4moDXCU=;
	h=To:Subject:From:Date:From;
	b=PpP1GoY1Bg0iaH54wVRkTFnK9xzDT7krcYn3CuUml8feRnH63sOc61RVIvnT4Jsaq
	 qWp8hddCpEwleUe9wLXtdkslBpA/ayZj5JzllYTuuSaf65fby7I/RkedURqw8ritI4
	 aAdWQFiMoahAxY+P/JKNaDVPZMtWVJc/6/DPNpzBX6tYnIKm15tkBdCuKIy6hE+kvA
	 pNOyiQjoowPbA2xIO+1NL44JwAOfKgbsc9IDQk7h8/gvwQsYXNmL0af/jsR7B0j/XU
	 wd+aJJpgE/UlRTatEGlmlrUPHZqZvh970xH3k1gAo1sxISu2wjlZCwYB+pVoN5Extw
	 1hzDfyHKY3MsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B273BC55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591563371.31123.14635252810124587223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264d5f4d37e87f454a8f280011699f1f9d8cf55ae46d6043aaa7e8c5c84a7edc
Date: Wed, 05 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785915633
