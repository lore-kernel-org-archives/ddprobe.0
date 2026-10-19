Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4606A489884
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792397434; cv=none; b=bzZmpIqlEuPG6isxifNiGBqeSJ1gv6R/TJmh768syblF+QeTp7PdBgd5DK/X2KU7HEcenVdUconn58d2Rle7rqfuiHFD7Wx8Cx9kiqt0k+BJ6cpnwRDqt8PRcRpAOJoOwiRCCN3NK7gGOR2uHUvpcpYOyVlA7dsfOjlAYnlFyto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792397434; c=relaxed/simple;
	bh=xXqlFLj2JCedPTiiJ7F3ZTEINcOkcFuInHOyoY/aTbg=;
	h=To:Subject:From:Message-Id:Date; b=o3LVizx2pwHUWQs4Z8CWEQ2LiybOsfELab+wxz+3opgcpP/D+Uu/GUDjdDxQEmZQzxmfWLPzCTQnIznANIYkbjnaFr52bdH6a5Mrv0Xyd/6OY6W2lZd3QIG64WBc7UDBNK8KzKCXg7D5893pYDWxP2h5ypi54dwU+MCaldcs8ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+aHrrso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+aHrrso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D18C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792397433;
	bh=xXqlFLj2JCedPTiiJ7F3ZTEINcOkcFuInHOyoY/aTbg=;
	h=To:Subject:From:Date:From;
	b=S+aHrrsob79g/UXemvRefQwo4LvkapdlNJwkkTrlkZvzXDBHVH8G9ryJ8Ypj7iybx
	 g6HI8TbvzAiSolaic8EhsrjixjT3Trql4/oaoUWIAID1ia3kz8D4wGEdF3FXKfR0cy
	 eFmB7gZEpNV7Ijc5Oz1hBDCNzRAqi2um6yWTLwpBsAtHjOoF2+OcsuV75U9r957FRr
	 EIww93Y5wStbui58rqHwx2BfmqUA1+kj+drxymHH5vRx9FpgFLTfN+D0dPikpCKah5
	 KoBEr2FzE1H8kGioopMO/GMn0TG1ooraBDerTslv23zNQoVrzQutgHNiJPhptZRAJO
	 Mb+Lk1W6J/CAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE027CCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239743370.14026.14983320485420222155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f80e92cc7de07d1fb9c298ae8cb506022b9ed47605e057752297f442477ef1
Date: Mon, 19 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792397433
