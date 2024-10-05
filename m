Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410D94C91
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728095154; cv=none; b=cMyErnAc2Nzi3B/huUgAewDKeDPAHZ0bL8hpXKNk6/JrclYCY2v0zdK9aNW23bXWazvIWW9Geov0Z6mKyY2k84Wa8zjKdsv5+jp7bbCUfHKTK+V2TfUi0BtpoS0/m5VvGYIOOVbZS/8iQ5ufjAdLpDKSJEP0vb+pD6zv47Bt/5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728095154; c=relaxed/simple;
	bh=6q+vd6urFqeGNacwAhBpljigK2pR6oXGb48qFq1el8A=;
	h=To:Subject:From:Message-Id:Date; b=L+lV8Fq5YId9qhecxqljWTzD533WPG8TAteKU9xlB9V6rDLirZ+gKjvyWg7N9D3Mz3gEpyESXwS/tOA3xP92M6eZo8hbcW8S28xvLpevRQmbBDTNW4fG7+XyUPjbCwNMV9hH+yhaFbKLxoT0zW1yD8yyrvSRfQL0z5TqenpLMLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxEpRyyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxEpRyyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8054C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728095153;
	bh=6q+vd6urFqeGNacwAhBpljigK2pR6oXGb48qFq1el8A=;
	h=To:Subject:From:Date:From;
	b=HxEpRyyvutlquCR0yZQO8yc8roTrtkAtRjm+SPpR7qdJMwtzUoPt1bj1giRiXD3N8
	 Bc2vTbxtCBhYbCXrCFAkThFQt0U33Ce7yssvVGFRGEoChgVo9wdMIvGoCQ6dmZ40/x
	 KON4Fdk5r1B2KOZCnw+Q7K/Hp4QXPFRFquuuC7KWscieVAOSO1Z3DismInK/yYFCr5
	 rMwtdU7Yv3vT23DfC4OuQwBwrVwrdAyQUT20QSki7SyKk8BssxgWFIEzjWSaQUwzCF
	 gm2ebbhF4t4vj6tGOY2316FHZerFDuxbk5V/FLvhWKqXm1r/YKLQZDP6t0HwQbtJjU
	 LxoWdSLditecg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C257CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809515360.17108.764598188115013342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cd9ade9127eb4f0c6640961d8585c0ef2f0e3ae29d429c546f436fcf0c02af
Date: Sat, 05 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728095153
