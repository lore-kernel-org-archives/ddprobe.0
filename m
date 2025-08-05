Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685F2586C5
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754383194; cv=none; b=lcwSNPz+yfkqsntI8ASellZfkxjEDiI8UnBkF/Km1nFGt/I0T0UhGdclNjgeSDHPLr2Qc7Ce1HlmjbHt7d9gu6+9bXJjXdifEA/yvcUZeklordr/oKNYn9DP8t7cqMgotVNNa4Ql/hpcvK+JRrwZ3m8fwKMsTzmZQ6ahFN7cCUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754383194; c=relaxed/simple;
	bh=Qx+XAjoSOwqd1ncH5tY+3MbdH96AUVB4HhZ0wP1EZus=;
	h=To:Subject:From:Message-Id:Date; b=PH9wQ8LtZ/FoTnA1YwUEX/Uh3wKny7nCoZlbRAotQFWWc+TC8J9QU639sCuf0eXA98d9W0MLP/kM07kAf7OIwvf056ngMkxIJV1bpOWWqzr0hFYVqM5qw3WVCLOGnId7ZWkTKTFBYA5qgCyY5w8mEE+qc157ChE1snWDJ2+WGHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAHbcu4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAHbcu4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1760C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754383193;
	bh=Qx+XAjoSOwqd1ncH5tY+3MbdH96AUVB4HhZ0wP1EZus=;
	h=To:Subject:From:Date:From;
	b=GAHbcu4Quo+s+lK3fW4RIdETpQvmyBqfu/2dIWtXB7cc2xZnoiJA0Fbds+mpehNNU
	 7evsuMbLDdfWYEx2Sq2msrsVqJKiW4Q8uwH+kwhspQ/ZsseMT0TEEb11U60Y5phXm/
	 p0iYid72KqcxwUD+X2/MSTc7uAQOyP2Oe6sujhT202v08+pe6mvSGLWEkcrRY8SydT
	 e4MVoMJeVapSwSLK9u1Dnaa/Spzq2e7uT6ju1bIuSDe7C7DJc+BYmqb4J8i6EGPozB
	 +yvVrwTa1ADUT5W5DhHhuRRPLVgTTg0PrRd2hwg6v09Hq1IYFBGbeFCruQo8DNLViv
	 maZ0R5rFzIu4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA99C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438319357.1062.10092181793419716575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409060e5ccbf3a788fd97db100d3b7ccdb3b1ee8797f0904745260d1af84ba5f
Date: Tue, 05 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754383193
