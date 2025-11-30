Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC5079CD
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764507774; cv=none; b=mgS8omi4mDsZhFIODB5gRfELPyJxTyLS0MKx5TdBoCHEdMoGoM0JWJs8G6WeJjVrZfSIZGYz06R1LMKSuPEYN6UAEFXjLiZhx7RHlAQrOG/SwD6focRw7/uj9QHAcbENAIbqnM/XpGTEGWtaS1f6aFMEXTmaq0lc08cStvRxBz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764507774; c=relaxed/simple;
	bh=ZHTnxaduuuFKTeOJFnTGjqvYO5mXtRvcaw9oMvGG+vw=;
	h=To:Subject:From:Message-Id:Date; b=C1IrXrF42O5u0xDo3HemGfGnAja/OlcjxbjIfK0hDaCKN2A/aF5Tgxf52vyx7KDM7qWFct8vjMcJetXw8s+74l3j4HJrPr2RWDIwpMjezpDdGO9ZdCL4QWh8Vt47bErJky74kmfOekn9HXBDz4+fwI9bNJbitDqDN6qEkKyXuHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flyn+t+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flyn+t+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B96C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764507773;
	bh=ZHTnxaduuuFKTeOJFnTGjqvYO5mXtRvcaw9oMvGG+vw=;
	h=To:Subject:From:Date:From;
	b=flyn+t+VWscguUHHxVe6Dq/uWTl6NMMum6qebXGb4xdizgE52lqYrY9K6Cb1anCCE
	 /3dcZznX8O5qAQrZz00LUsp4w/6zaLbPJKwi9UnpErtLYmimMlzexjOMm9EUIdTbrx
	 3hXFokOWLOHDy4sBk3hOXDd01n3aYAJmyTUyxNXXwSHenuxLCla6IaTj/IGv9ni2dW
	 lrjwVOKb5t7Y2eH9Ze4FZHgO/w1fuek4+cnX80xukLe5+oCN9HdGVB3Td78Jfq1o36
	 FleYbdeFQ0kYRxz+r8B+0hpyUGdlEoaPlibAou1JuFhLFI9vdQyiSG1dKbudj6pt4N
	 dl+hjjGA39yEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF4CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450777358.19762.18407650320731942898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbc997530d3379b42a03753e17eec385143e31bb25fa9bcfc1c6c32e68c5d2d
Date: Sun, 30 Nov 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764507773
