Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4364F1FC10E
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741124934; cv=none; b=gfy0dJfDFhgISnsDDv4OO48abqRm7D6yD0Gd9udpYrzwTnEU1oX8UzY4G/qD9R3I8wSpDP81wpVbH0SO1MDb8xkUrpHF+i5lKV0+7TeZ0PLj/ZTg1zHCcfJv5t/K41KOY6hOpk8lJFQ00zsHrjCXWZOeQ7S6GalFdLJ4NyQc77E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741124934; c=relaxed/simple;
	bh=7yO5/W0Uf4LisScL2TkK/ZpLmYm0AF8ohKN49F3OVtY=;
	h=To:Subject:From:Message-Id:Date; b=gBIllvX8BrI3USW8Ecn9Svpd6rzxnn6wWd7mZN3/lnMezy29uCjRlwqEyOg2FD35Uep9IJwb0DFsg4AgOn/MG3BfY/5N3KZboMCcASkhj/q2bLwOffMl0zTN8Dp5fFolm8It+kIIAaU/wK9OgUk8CF/Nq/SmmH9i/KTY1MlphLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtycFBgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtycFBgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18FEC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741124933;
	bh=7yO5/W0Uf4LisScL2TkK/ZpLmYm0AF8ohKN49F3OVtY=;
	h=To:Subject:From:Date:From;
	b=TtycFBgsdFwl+05bBASY9mAXU7u/MTx91om15GUJ/ZDxRguDU2RDm4D8Ux88RiJrs
	 aqzF2XptnmtIb7QUqyr+JE6m26nmu/fs8fHI6UH2z2XTkPVFFaMylJBLLZ7t//v8ae
	 sjs2RbBv5mMaAZDFf5Q3JDxcxOu6HmDhan5Y/CHyk6uRtCZtJ4piO+ZcJ1bgLsfgJG
	 hSOE98ideIP+6e3u3vlYX16pnHRQCXayisHYmGVPp5MEwUr2V2+Lt54ZHUsKCGk4II
	 eTdRX1zV8ZFOD85aISRnL/Ci6FqlALhoW2KPVo4Gv+qtVQwIMfB4YyvtfE+r3TflTH
	 w5iLeYZ8KlCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC6EC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112493360.32666.16625637996096239996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e77beb8e1955e7bae72a57d94295330714e887cf2530baa63d7bc23a33ea38f
Date: Tue, 04 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741124933
