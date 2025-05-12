Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713F43151
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747050594; cv=none; b=e7Mi5/EXFVmrKe3lrtb8Xp56x5IMZ+vR/niSWf0MswPbASBvSt2WD7XUupoRvfKqY/hNlHxuuXnTKkfs10rL315uE7f1Ae8gSpQfPNZP635i6IR+EIvThzdmQ1vNWUhnjn4zYj/980IDjn+PwLzy2iSh7eZ/gzsmv0hpUsCWabw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747050594; c=relaxed/simple;
	bh=AH8xIYryys1sP09513wt1SEmbHE5Xv1a0T8l61LtfNc=;
	h=To:Subject:From:Message-Id:Date; b=kFdk/ER2STANY8xPUh8GkKq1ILUru5Mye58WtPMFZKNFeo9T3LAPlVPv7ZC6B+Tlo+rnva2xbkYk60DC8jjIrpIIlZHPqEqnK4PN3gqBSwupDvkCAVrA84Zp+w9+pX2eKrqJk4SIQndJD99kvCz0ZTFkPxrKJhlzCcpE5ykwKCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfRsCF2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfRsCF2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A177CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747050593;
	bh=AH8xIYryys1sP09513wt1SEmbHE5Xv1a0T8l61LtfNc=;
	h=To:Subject:From:Date:From;
	b=YfRsCF2uWIPoBBLVmqMacDPtn4414XVr+oSCP7If4eKc2JOx5fs5xpWKeOwsgCaux
	 1koXw/8A7Ha8MAGMIcPiupqjG4qxQ8qg+h3haRwpBTN3cWLe0NpnoKQdN4ohbYUchP
	 luJqcSqoEVk9T23wYWz7FYnlJYTfEXmLEmJVbsoEZjXRYWpuekn/MpUKbccfUi/Ucb
	 NtxnDvFyYlbF+9eahMP65Z/jAVUwOQn4LFvexZBIWl1cuthnFRKTlCHhEcpDBU0CNx
	 +aGTnAj0QQZr52hSmNIANr1a7dP2rTbMA8mRVZynA3zFTSuKyzOgxa/Pl417s0g2lF
	 QCn1irlYHcvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1DC3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705059357.32470.10145886973965556782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73713d8dd372a5b2e7b5c7bc1a8bbc249990452dbace2e6c15e7ea2a986722a0
Date: Mon, 12 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747050593
