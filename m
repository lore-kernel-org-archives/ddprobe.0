Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B46063B9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751221794; cv=none; b=RUJj+pD9SeU9J1vfkWV0/ZRqGuVRwNGwRpBOGIesUi9ImkLC24H7yfMGpdMcV/6YdOMbHthXIqBjmI/Ifbj3l2rKaWi2UOAAogwq9/CacLt6t3BGrKoupaFF+/CgJxcKb51MhRd9nhCsJdvkI1U1Yr0fO8xnMIgjlgQzLzrWteU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751221794; c=relaxed/simple;
	bh=kMCOvpYCHf3Fl36grINqlN+6548RCaZB2iSAQ/O1sUM=;
	h=To:Subject:From:Message-Id:Date; b=ZqlaRf6FulMlW66DjPXRwZtebwMHYtmXgIBY2Id4VFy19TcL5fX8mgFjB+mDJf+X16viKW3gJ3P3nbY8h1RYrJEbZR47tswvf0/9jMPd6CPQUAfF2PAcpf3bYmj6bA40Q242Uuo51gGLcwtR/hghXdp/G2BK/833vCeL1YJv9Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+dorXmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+dorXmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E88C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751221793;
	bh=kMCOvpYCHf3Fl36grINqlN+6548RCaZB2iSAQ/O1sUM=;
	h=To:Subject:From:Date:From;
	b=I+dorXmWKH/U2Q11DHErUF+2/mGXSVWFXuWy5as7FGmF3Y60uycRdiyLsk9p86i9I
	 Dq+w4cMA/oVD3BmxJAlPsNJBBxRmfk6AElC5d6bK7ogq84IReqT55zvTEcctC3RqAv
	 65gDnSLMnA+EXqjkHXDAIIt0+PIrn0+vxRins+8r4Zmh+z/orKHcunRHRgI9dnT+u1
	 cLSa8ywf1G6PnWyaSrslVRmItzlq/dh7XGEm5s/8kjnCYP/yPJ26PEv9gTRdb9fk3U
	 yaqENSG6r2MICTj7oKZYkT/PNpxx2r+jPZw1yqmIdyyegKbX1ehTJMmUlLHhpoHozb
	 RwJ9y3x20R9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF69C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122179357.24862.1800616064007404948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9f3918550dc53d28bb8ea3f86f56adf6aaed2155ef1a7dbcce176c9c43ccc1
Date: Sun, 29 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751221793
