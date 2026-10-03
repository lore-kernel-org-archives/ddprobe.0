Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645572F0661
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791055234; cv=none; b=RCwyE9hZfytsa2543qlQ352NprdpLpUYGdximPMB5O42h3r7pDnuvil9CgsxnmJTFaQ9j/cWPb67cQVT3tTYn+h4OhopNCMpIA66tWgwaJGSy6icIYrnDIQCkkFlhIto7KtNPoek3hRgmySqV36ft5NfY9FqOH+p0ldgFDV8QYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791055234; c=relaxed/simple;
	bh=U5X9ABAH9/8/HONJeOMDz2/rQ9/fIYqGjeImzqmTBiI=;
	h=To:Subject:From:Message-Id:Date; b=G+G+5V+m4JGwfNfKmu2RHTNAuMIwT0wl1PTHdy/6bYq8YmHwNs75bDT/HV/k2gKR+BwetRJ0NKjflZnvVSAic3JHpdIDCjPHIwoOW0SpH6hDZvjOeMVQLuOvvrgKrWPmXt9nAffFKORpKdol8AH909VyKQR1ME0r5qtfpOsidSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9BUA+d4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9BUA+d4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3214C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791055233;
	bh=U5X9ABAH9/8/HONJeOMDz2/rQ9/fIYqGjeImzqmTBiI=;
	h=To:Subject:From:Date:From;
	b=K9BUA+d4RWsZZ83+EHvPcHzjlTj7jsS38CG4ado3REvYO01uB2JLIauluWKj93Eai
	 O3P+aQz8X1MJSfQOwiZ+Lui1RBzmZgbfoEdphc9bdXxNY1GR6k9ZLzDuxypecOwJLg
	 l5akF9YV8/M/b2MXYB7E52FCmEWQze7vJzay6cuoOIcppzoZHbAU/rKaovKdaCI5w+
	 H90/SIr69KLDi2V9OxPJtwrzpb6AB2FNVereqfu2A/RLJgNQiSZLAFiFyG3BJgW4T3
	 OOso9szLcpiRf6ItlaPYua/zFXWHL8X6568AD5gpUWqCBx/9LYyMRLODdCJbdRGNMS
	 FWdLaMGYzpnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0316CA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105523368.17724.6924886796461124331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765cb56031f506d6539bc417d83a36ad5353dcbef00e5acf80642b48b2ec1262
Date: Sat, 03 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791055233
