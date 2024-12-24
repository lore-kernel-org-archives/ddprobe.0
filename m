Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3136DCA6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735048554; cv=none; b=Kpz0bywPAMIFhWxa6u7S+UgwJq1tqWlyV4lt6bJU/b0ygJ9xLVDAZ5lWg+j2RSDwJSGAUZViTHtbe1akrHvLRTB4EfT/mN+RrEJbMV8C4FOW7Iw6GEroUj8NPmker/SQ79ZgaTJCvLC6R+ijK70DnJwAq2lC8d+ngzF66h8ZGDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735048554; c=relaxed/simple;
	bh=doVJ+YFERVk3SzgsaupisW1+eCvw1KistiMnlTSm520=;
	h=To:Subject:From:Message-Id:Date; b=onXjLUkfWw9jGhFLd5kFKh+gllKCl8N5N8vyTXLey3DoJet3Q3qCjaIqggWYt2ny52hOs4M0yvmxAIXaq+qiLrrSEmoiqfDoqjpwLhop6U/+FKaO7Jl4Chu6zIYmrQq30LjMGegH2m1lGqcKtwXu1G4wLRgJMtmuAnoR+HdwFy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivzNNGQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivzNNGQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3971C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735048553;
	bh=doVJ+YFERVk3SzgsaupisW1+eCvw1KistiMnlTSm520=;
	h=To:Subject:From:Date:From;
	b=ivzNNGQIv0dWwo6YImxUCJY4BOVOjcR7MFjGPCpzTYVpRan6HP9mJCFuUD6o3dDKH
	 gcauqrwX7nhZicjj/3vy+K5aluO+xEgIPT1SaSyg2R4j8rrvUNAu+A+dTZzrwdvJxb
	 TkHDXPPFKgscmoOxnEjCGkhCuiOosctgPTpXcDDLTRfF8A+AANh2OeXD7H70bToA+7
	 113RFehqQw5pN8kQnkym+BTzAd+7OgC2ZyJph2GB5tundqrKQh7g3nB6y2HahW0yRC
	 R8BN8XDA7OmLGefmsEvAcmrTXe8FqOtLzbQxGTm7SpYqHFdVGLbuevx1L19pz8u0jt
	 s0kb72JAhicgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91919E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173504855358.12626.8459649250277796089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24071344ff90ceee71636151324343125bd2a5586ef0f7f2b309c54e1043d3e7
Date: Tue, 24 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735048553
