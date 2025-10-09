Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B06176AC8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759995594; cv=none; b=QvYhfaEEYD7sDsktqJGrX348rzmbTF8vkIhAJNVvgs9nLLMXi22dhtAlZD/z/Wdv0PKkDt7/FRXNv/i0qP2GdBGs6JkDSl8ttfCggwoqI3e7/9LGEYWBHRZEVaj8+MMH4YVBv00EgCE0bKTvDUakU9zK2Fb9tk0HkJnWqfOgpyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759995594; c=relaxed/simple;
	bh=p4pOnhc9ZebEJIpfA39HsC4foydtPAv8xf28PCtMs6E=;
	h=To:Subject:From:Message-Id:Date; b=PHuHL879Jh9jWUdpodpvZfo5Bf3fe9byZsvhUbVyhADKk4birfSn/802NKHosaN5zwdiigzns8WAiEYcgv0Z9f4X6OhCbSYAk6PCN2Fy6/3zOpsmKtNcVPIuCPAObTg9Z/vdqf0M/XTWxlpVx0mvwQ2NlMnRDiUTMNaOUFLclFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KL7tvJUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KL7tvJUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2546C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759995593;
	bh=p4pOnhc9ZebEJIpfA39HsC4foydtPAv8xf28PCtMs6E=;
	h=To:Subject:From:Date:From;
	b=KL7tvJUkJoJGxlARp7fIAs7GmorAv3NgUixFEZvY99VsKQn2rFkamFzARpwQj0/aQ
	 vlhlsZCJe5QyhtN/79SEmGlnh2/eUT27jkTZX8o3l/PA4Becunvdg25ib7+rugRKJC
	 kamhIEft+4Lljb1ZqxszQUsGeT+fFXCihlVAJmFxSWKcH8D1UK4sbG4kO4CH0azZjl
	 swo4Mfvuyw+sA82IgWV4y4/h5bOwRh+qFR9hi7r0wcJGohAeINjerderQ6gjogMC/4
	 YkfOFuOIPRWcGFQQbCdPljSnPj7uUkWsdUITuB9Nf+pje6bVH3aY1zY093T9I5WtY5
	 AJTQVPHsCpVew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1CCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999559358.24539.10339990526126093712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2c79e2cb25686b2ad348eb3cbf7ef7c2e4eed8c013eae308224f4aff30c577
Date: Thu, 09 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759995593
