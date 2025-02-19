Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5024E4DB
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739998734; cv=none; b=fENCwAr4a/YFfenFmKbSbcDCcSad9LwBhIxRT0E5DdUS4HoxAcOVP/IRYJdmt4Shr1YmOiiEzpU9jBrwaE82c/Q40ts+IFeXr0IRoH/IK27jU0ooIiDyAAtEZuF2tQx0s4gAyWYPyJ+3yKznrm58D8RD4eqKZO/lEObcPeE4M2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739998734; c=relaxed/simple;
	bh=nEv50ResWXKw9B+D/wgGT12U/6sKklg6h8yhvZ4M7pA=;
	h=To:Subject:From:Message-Id:Date; b=L8nZ/9+hDKTXO9pOWXiKksyp0eB9UkYt7OFuxWDUpqKqJzB4zpmlRTjQJ4nmwMir/e2IzfNxVoyG1+xQr9gGuhYvK51y7MNdGROK+ZsLMFDhoigccVj7bzaewudaDFHDVU6hlxQOTB3GRYy2EnC92B1epvR1luni9Uwx1gLaQ8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwlJirw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwlJirw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4EEC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739998733;
	bh=nEv50ResWXKw9B+D/wgGT12U/6sKklg6h8yhvZ4M7pA=;
	h=To:Subject:From:Date:From;
	b=lwlJirw1lUozHEnOf7OnnTOzHoyg4PtVmJLlq6y++9ruokBHfcTIMXtEz9qvcRZNN
	 d6qdtHiK2xnmY2DUEbuKQvm1iwRA8+Dl0IoQL/gvT0F2Oq/IjyCF6cqvyjfgyQUQbW
	 P3Zh9TDQdYj5T7q5SDQM9duqggYFW2KyAvzrRC1aBxFQ4+y0mCasKrypS159Sra/X0
	 xociR0hcJ/YP23AtWgVhpO7ovBXB0THn2g/IF2o/AvNYD3cIuyvxgBW33hbfW4c/aq
	 E65uSJ+utgH6TvFNg3cX8JimIpb+mKfivNU06YBGUHzgIyIHbE1yyEGJM/BOYiILM8
	 ZXqZrp1aHGTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B4DC021B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173999873365.21015.207401458796131969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f74803acd9bbcb20c052f5aac88a205502ab2b7f710db0ec909fe57eaa059a5
Date: Wed, 19 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739998733
