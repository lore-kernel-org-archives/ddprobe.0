Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221AC2AD04
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752206394; cv=none; b=ny6JS0k7bMNBUIMjKk/A3Bi/NXyPL4/vWwOaTAYYbo16/nLOch5UEuplAohoXi2loZnhR1H4K8hitKynqW4pN27/kVtc0xT+EMH85JkSd3MQOoA3mUU1o172GIl5y6rgiuUZK7frCGldHj2HGb9NlCH/oPMdJu48lgH5ZBGVBks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752206394; c=relaxed/simple;
	bh=CEfm1FeaBqMvHJF5b/voV823N+Z4F0gXqxCOPU7zgFQ=;
	h=To:Subject:From:Message-Id:Date; b=LBE+DSe6bROoRVA5s5aOmzyZbJXIMM7j88vUoUsogdoqgI+susdoNxp0rXntYi4gdqdRXhJ46wHcjQkoueJV+PeMvSIkm6SGdlsO+nML99SsQFDwDO69TOKFQQR8MOSFMZrNucR1cdBBIeG/AhprV1RCI0sBA4xIdwofQA1pyaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJv9RD5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJv9RD5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED5C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752206393;
	bh=CEfm1FeaBqMvHJF5b/voV823N+Z4F0gXqxCOPU7zgFQ=;
	h=To:Subject:From:Date:From;
	b=MJv9RD5CV8sYcmmtO4DyS6JJx07KbEXkWDHvm2Z7+Wunw3L6e0BVUZ51dJEaib0E1
	 E0bkD4UJ4byIdrouw6U0MwdeLlo69pv6/RR0Kl+geSLoYuNt9iyA1LcRDACYjdqy7V
	 a/WCf24EgCDnSQ5jjqlf5+ATcW5sDMwRA0UTqz5/ln2uKcxunUop6i/gkyESgvICJt
	 YPe0MA+eGieaWOrb09OwibhdDum/RM6KNWyhq8q6QE3qN/TNWvmkWusj02bWKyz7eh
	 iPm1SZ3mauNxqEXfhcJuPn7qUAoYd/D3//jwx327c3GX3Q3WqwbNERbC9cFmB9e6k5
	 Bg4Hlav3nrruA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA08C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220639357.6235.8138613717691254206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdc27869417ee3d4fe5cae4ffcd579ddf4816f032b4fedeb0023408303f3550
Date: Fri, 11 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752206393
