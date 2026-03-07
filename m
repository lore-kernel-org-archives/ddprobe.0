Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BCC2EA171
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772869494; cv=none; b=jlQ8i3AjJkruv0dCfwnJd7haUrAX3dezAuSRbavc9abWjwkS5LDDzp1rtvSWKGCkMDFjKBovXRXBviM5+J5GbjF9I8F3JRp7jlwA0Ngesn49P0CIv3ykrRY79t50sbNKIJC5Jsp+qw94GDtRway0d8KLGT6E0PmgGCMJ1icoExI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772869494; c=relaxed/simple;
	bh=0TE3wt6N5iMw8O3I4w2GRNIeB19L1diXug9a1bQkm6M=;
	h=To:Subject:From:Message-Id:Date; b=YwnfqWOZsga9UKRa0vSnCRdpXfXNoNfxNrcm+PQqsLLoD3atjmnOccxQ076e7fkDemGlTOQjAa249Xq0n4vx9PX8g+/nk2g+3X4KpXrWSFQoL3yKv2JGOAHZTA4sbQC2ESwaqkjNBsR0NtUR2hlwfMOjv5WDAmDiqk7UrZovIfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clo74/E/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clo74/E/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD015C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772869493;
	bh=0TE3wt6N5iMw8O3I4w2GRNIeB19L1diXug9a1bQkm6M=;
	h=To:Subject:From:Date:From;
	b=clo74/E/2P5TVQYVCuVR/J5NwgcIUypPavenojW9RLpv2TW9+Hj2elqxug3L5wgRC
	 84bs4sRZ5kT5f17B+YEFPlYQGWrxqkYnD3Y5RNl3zBhOTA0/TaiAIFngokzQ2ITfM5
	 1m/3P008ceRSt5+7QGn0H0NUoDeZ6czdWVPXZ6uWsIXHloQL97ua9NYJFJALyRGImj
	 TlVSGR2ay//Attdefe+a3mx/9z0QbfC0Ogm+pTof3dq/NA+EfgQfkgvFjH8x6wdPAp
	 97a4R6X9if2WDbij7/P+x0vqfIZ8SmK9wzw58lhTtiR+pf47WcBZFriLNXCvD2trc/
	 Yt89D6UNLkDcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968EDFC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286949358.17246.8924728380205487784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de82993c78fd8cab5415b1746b40c7f6bfdda7c7a5878d53505a4e1a9969c71
Date: Sat, 07 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772869493
