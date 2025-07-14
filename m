Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226771FBE8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752497994; cv=none; b=RNq8fHJtet7fNmqdnqk5ux/ZVZKzZ8eaGNLKg4p2ziWFAmFVMC7BJMQXukW97NYlzwOx2E+Xc3VSftWEivyp165v03IB+k6R6zkFdwZOiHTlHbxeBdM4uHMv66rXdOeLoACwTE6JHeWRiuldBao5IJ0qpkImV3FCbSK7EFp2bzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752497994; c=relaxed/simple;
	bh=dqh8I8ZMpzHIjzpILx2QFsIrnuWSLhVWdQB6Uam2YF0=;
	h=To:Subject:From:Message-Id:Date; b=sOsHlmxvOtYLtt8e913P3e1R7tbcgKVTrHhmlmuyKMNJPpoFnuK8LRDInd2lNS761DZ+hjg8oJqMxdi3IrXxHMaHRnx+SOwwcmNqYuWr8Te2st1egFXPXsyqvPeZLanBrWZ897d7iSz7SHjB+kmqNz6qwMgGDVZEHFktyTRbuR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSbpocKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSbpocKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A089CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752497993;
	bh=dqh8I8ZMpzHIjzpILx2QFsIrnuWSLhVWdQB6Uam2YF0=;
	h=To:Subject:From:Date:From;
	b=WSbpocKYi6nuRq56O6xdBH6NbtiAMN55B2owSr2SSb2phBqQX0I3/jQTMTDJs65oL
	 RTwvhckeVhPil0P7brJIsBwL8YXJuZ2KpDZt4T6uHD623/ekHa0LdDT8zrwE00FUY3
	 Qlc/uTMJCAouUeGEUDDuxBYLk2l/5OR8ge8FmCJCQkRe7UyalXJmvS9H1BWAqUi45u
	 kIV9qeSaVnId45X/2vei+zsW6nJDCmL+fgzmhbvU1pgg9IkwwAPcPGDGWQCG3M8AY9
	 N5HxrzVjAXwbs/GbANVHZLh+gPx9lU3rdKC8AocchgP2xMMFYvqe/Z0U4iMErKRe8D
	 0dvKBmJiSnZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA6C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249799358.18933.9903031553715666955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fe7e475edbb1d023a08612e8b4a02e9ffb16fede961efd7e32fbf895e5cd5f
Date: Mon, 14 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752497993
