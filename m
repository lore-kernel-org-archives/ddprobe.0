Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BC5371063
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779113434; cv=none; b=cw2GAhxD+7oFY6erAiFD1cln8CH4Br5nAEKr2dpkVI6qGaqN7i8jp10HmckhrHM0Hj4iGuk1HOM0uh4ns/IBmwu5hUjn+jwX8oSK+s2j/2V+mC1qvg49jgBNC8aA+FtTyGJGYwT5JvxZyaAC7my1pbIAArnEu28FYP+7oYyw4sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779113434; c=relaxed/simple;
	bh=dcwErlcg4waeL2MmuWVpd399EP6/aEKeiB1t8F7sK/U=;
	h=To:Subject:From:Message-Id:Date; b=LIuZW+ORlxswhaMGTrVsigwJRpZgk2p4kUWd+yS2lZpZXxa1jt8jMlmgMe8kPujkqScv+ARNJNJfqV81VuO3xLMgRMLXUnCoFEL0HGNd+ZjmAG+9DQrcoXrOUCJMuTw56B8wwfoskC8IQB23ExWAiGrwi8LmCmoOfxNLcdiUBm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UI1zoQT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UI1zoQT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69C4C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779113433;
	bh=dcwErlcg4waeL2MmuWVpd399EP6/aEKeiB1t8F7sK/U=;
	h=To:Subject:From:Date:From;
	b=UI1zoQT7oMV4Le1FFVvi0m3jk4aPvEYRbJqSBGlPc4ui+shOdQhRRncPHMceU9+9V
	 kxRDg8K1ONonEO7c8PUjkZJkKw6wgPCtv5UFiqk/EnP2gpaNH+4Qd1OqfnIcjUEVod
	 3VlwWsnI+7N4VoJ2vdN+/gl3m15UxqC9Qt0NudM594+Hcgs6LIaI9bLXkpj67DNN7f
	 2nTK2DtCSqP4MoSZE5RPdbqg/KYmzVC0R1WiqPBoikAwyKpVcgfeqeYj+TKTTwmGGa
	 2HgoVfhilpR52ql4UNWd5zlB/cAOE+kiS0/UabD+OuLunZlTasJoRMlQUHJlM2Rcud
	 TYN8/cQHChDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B021CCD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911343371.23371.7183151046172229221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81a8f04bd0cc5788cd12ad4f4ea3e4ff4df2b424c5b92d326fc69cc6c1d058e
Date: Mon, 18 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779113433
