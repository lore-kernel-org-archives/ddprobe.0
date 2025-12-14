Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD14145355
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765693374; cv=none; b=RJ0du9KgMm51muQZggmiJUjuWUpf0yvlZ4PRo7EiuPxyqDb2yFraDLrWxTCl8fv+fo9VjA9kipp3H484hOzsRBi22JtTpPr2vv3A06pi0qaHqcaEKVzt+wQfCYI51vPFH1jJPOjV0Qv1mKd2PUVhLniiWiHGO/C+HAQHxJZDJUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765693374; c=relaxed/simple;
	bh=NU298O2XHbHKPe1AL53oGafbcnwkPJ8znd5gqRoT7XY=;
	h=To:Subject:From:Message-Id:Date; b=CVZh3fCXEq3pz0sO508ytnsfaSizYeG6W84+3iAeCOvS2BmuvKg1AIehwXLI6JhLepvtXjxTdSENJ1Mwu59ldL3cKkT8mXZiMyoVzf/pYHwG/qPFheZwFrbCcHsDdiOSmXnzLoKP717xKKMFrmhn9lXirbciyjVVYAXbcCMEHxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSAyCGMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSAyCGMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A637EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765693373;
	bh=NU298O2XHbHKPe1AL53oGafbcnwkPJ8znd5gqRoT7XY=;
	h=To:Subject:From:Date:From;
	b=QSAyCGManwvGFCIrmlJbcfm8irGhLHI6UEIGYOxdqoz8biOA2A9dfBotwVbUc5rws
	 t6t/yCixXGt0v5bQwJDoQ2UjwwqGl322IhBLAOjDm1JGwaPIRn22+u2w90Byhfu/wL
	 5M/RqWFDTmrsFHybOPUAUdaaC0/rO0LEx2bW+nipQpX602L7VxhvyHGjgDmx0qSeo0
	 h3LAaVvKDrq9IQef1yDvBoOGC/eCQ/sn4Wq24TLtqshzSvglzbfN/SU9myRXSTpsXY
	 3cS9ARAjoerfzuS/9qdRex0okA4rAaPkfe6dkgxI6c9fpVAJfEqcqpomdHsL57iOo+
	 CavFp1RmX+IKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B15D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569337358.3299.8791013315794628648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec468ba5f43317500fb03fdbe998aba4fdc23cd9715deff8b150b7a6dc03f3a
Date: Sun, 14 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765693373
