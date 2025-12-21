Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C5812E1E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766292234; cv=none; b=WooR8PVd3FOJcPU/rklQ2wfNUwQvC4ToZmCWUYdinp2nR7pWo0+adTAa0QER7Ib/6MJ2PdccCd13VY6WGlxJe3zp2PYapjfWRf908Se73/LP1IldQAs6oodL5+P5ZsmvK8xKlaTz0+M1GLYwQMfPA4b2hrRv7kRvOC10+b7XQSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766292234; c=relaxed/simple;
	bh=sDJ+D+TnmNRJUcIXjLLtvPq+HDcoitAI+B6hPsiJd0c=;
	h=To:Subject:From:Message-Id:Date; b=PWzISyHBtVgHLKZB97JMMfOPyff8guEkrvC2hl2f1Qz81uhd3vruUosUct9HT6+msg/CDTNCHvVRTe1BBOVjfvLWQIZRYeH7UhCT7bq/dEArXa9X6kI4I0xy8EEJ7gKGt6wUjLMnFRzdoHdkh9LothZ1HlbpCZh+tyhbrJryKp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Olq0miVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Olq0miVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766292233;
	bh=sDJ+D+TnmNRJUcIXjLLtvPq+HDcoitAI+B6hPsiJd0c=;
	h=To:Subject:From:Date:From;
	b=Olq0miVPcB+nb2/SdrbA55qQknsU6cAj1CNdCE9el495ZxK3UlYg2VGCdrVG8UPQX
	 /bPxY9gVde+kQxWDzp9fz/S+cKXE26Yc6X477QWFFBqr8+vtjbMiB+70xAcLBp7dyc
	 /XkBc8eY0e/+HYSde4BNE8Aq3hRhA1IZ4uqsXLB/SrBuJdqtUg7z66DKmltQRnrNmP
	 YygGv9tep9vofQ2oOS1bG3muNTGdhb64MCoFKfj1SBMOrn/h2n/RnEUzbr0i0Qn0pY
	 Ad/rZkKJ6IHIT+y6fuGlax92kotoNhg1i09jWMs8FSYsULtY5hfTBB7pVj9JQFwWC+
	 NUN8o47DuaSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFBD68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176629223358.13863.6514575297976040258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a2b6f0f4fad7a108e8433a9a01cd35ed86fee317200905b1c0d0c5ee8e0b2e
Date: Sun, 21 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766292233
