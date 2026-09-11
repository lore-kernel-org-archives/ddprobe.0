Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3148737FF6D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789128634; cv=none; b=kvMmZNC12OdCNSs8r4OGCaS2PibUiZjSV63a+DnCRpcZxeQ//kkQJrRA3tFHPJ9MZk4F8lXUAdvAgA2aCsaylYU0sRLek3fVRlg76BRE5hmccOeyi21CwVps5CJJnL+ifEcMbJT0bgzEehy5jObbcgCymyd3vwVamAIiitriPvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789128634; c=relaxed/simple;
	bh=RnbqtDHkQeDMAYNFXD98u5nmLfpTgsNJUuJTQob7uL4=;
	h=To:Subject:From:Message-Id:Date; b=hohhNGufSe2z6cgrW0qDDVB9NtevPlc+e4jkAvBPD5jMIwsQjwsQz/9/wWZCsBUmPzZU5DUotWEAWjRLs4YdmYPmrkAm70FLeS6PWTAgwWbmwHBkPyK3MoIShXqlYKAHJSn6hhStXAKFDqyQLahOi890u+8LwxYppoSgVbCqHBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFJ3Wb7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFJ3Wb7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7081C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789128633;
	bh=RnbqtDHkQeDMAYNFXD98u5nmLfpTgsNJUuJTQob7uL4=;
	h=To:Subject:From:Date:From;
	b=DFJ3Wb7TxGh3z6UtY3ffLb08LaIYbfBN8qlYwvrTczPk/OnSjgoEgm94Io3YJwtLg
	 aqAngaLihtR0ycna4XXmhL4Z7boXQd2wqTyfbvMfsgYdgI/LucD8v3BFE9ZJs9yVdm
	 /9xbkbKs1oayZeawaNw1j38W47cR3NCPc+vwSb1fatBpwpBJGivLWXvehjkp7BLMob
	 I4qMu2b6k0/4DZm/HwYlpmM4LpLkb9clBitHDLZM+vOJkjFRY+Al/gaWPVQHuYSp5h
	 yCea/9U7e7R4s+Koz8gy+sF79Joow1iILL2DxCu+S0yY6gHXAT/O6hWxq4lR0Gq8hO
	 2qErJ/3W8YnDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38AFC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912863372.671.8159639556895950217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73233aabb6106c3321aaa29676e8fbebad8633947e9040932a2fe05bf437d015
Date: Fri, 11 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789128633
