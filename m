Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4960E43DA3C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781622994; cv=none; b=oxREKgqJRcpKkPfxsTZo00NbOQK95n10AnzMwiY6fhUApN2ZLn7+Uo0lQGWOuxxFoEC7kLz5MJ9Vuh2ekCsM7law9T8+CFzA+ERG2EazctKDgppzTbeIUJ0ocxr7cHkU+FLLiEnBebfY+o7Aki9F7fh7yxB6nLWeySwrnjIPRJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781622994; c=relaxed/simple;
	bh=XRw9tbzf0b7bxL+1iXbUgsViLRLhDAkO/l4lFv05i9w=;
	h=To:Subject:From:Message-Id:Date; b=upEReowTOaz9106AnZs/yQG1KAsmtUKc2uhSglIoWVn2nCmBpZjU4tWsXxY3+HFqll0dEhhpGjg62UdlGcfXovr0B1n53HhS0VQ1Y2NA8YlIO+2tvx9G+NuHv8Oif5X2mHYQvHj2O794jmsIr5LnVonjZoMnCfxwHybzgglJShk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7AZ2FzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7AZ2FzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CBDC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781622993;
	bh=XRw9tbzf0b7bxL+1iXbUgsViLRLhDAkO/l4lFv05i9w=;
	h=To:Subject:From:Date:From;
	b=Y7AZ2FzFYNSoS7tB+5o2mBYle9srRvPw2MDueNR80RumKVlPI/V72W91xl6UhOOc1
	 3TMbv3eDsi+crP6W8oyIl5mhpIfUeA0X2dj6QEEf/vfiqRS2a1i3T6tT9fXtmrDFG+
	 lQdZtB674LVXadk+YPDnlWV5x/tszxFCXi0RClnDd9XAl2mpisZOErSL1uOg/cpYki
	 hHFSlEoj1VuATOTEBkmUSSb5It6nu4QVRyAiIIYskFB28kTbYkH/uh/ANEX3cuOt8o
	 608zBDD4oPJn+phpekD9tvWSC5oWqqQZEou9xXM7q12GR2NiYVwfC9CsK0qFKVhp3C
	 f8NsNAPLVnHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E25CD98E3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162299373.11695.17885091957185561186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4544298ac48ce498e7190c078110d696c575cfa9146e6bce64fb1c5c5c24a71
Date: Tue, 16 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781622993
