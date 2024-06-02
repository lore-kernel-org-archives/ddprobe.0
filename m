Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C37210E6
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717365323; cv=none; b=i3pKGs0TNhzMFaWpBgpPAxhnIMZPGUnXz7noyk4TJy4+J8pQC6yRtTwYcnIvfWIAcQZbUiNyRdZJkhsfxaErC0VMVuDB3ZTYGQaBmRq2rNX7yyTAuNLp+wo2f1mDFPZKXHl5wOmIKPXEZ7DPy4JGYdp8ybG67VqiKN5ytM9PWHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717365323; c=relaxed/simple;
	bh=17EfoZoku5VdgzvV7fKxCjgCVsTAKNkzRMyxlY0HF8s=;
	h=To:Subject:From:Message-Id:Date; b=IgBBuXG0tZERYKl1bvttUyNrlTg6U91DzTsskBJ27p15JW/mJ8Lprlg4rSfd+5RH5g5GOs0vY7Joi2WnpU61rR6Fg44M4xN3euLYuz/wBj7KkervTDcILYWP208mjT0o6Ynyb3/R7mxix4Fdgw06gKR8ZQPSJYl2JLH7xr6ghN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHzlkzT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHzlkzT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B3DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717365322;
	bh=17EfoZoku5VdgzvV7fKxCjgCVsTAKNkzRMyxlY0HF8s=;
	h=To:Subject:From:Date:From;
	b=dHzlkzT6L/BiSDPUHbzB1XXnK2PGDfSn0twwcZ0J04xxa3a2P38lBcdiXiIalYRNe
	 eFpvhqoD+gHaxxelzF6gxevhGXLB+Lq5mwwtS8Xn4xA92PbxBvR/qeIXYD/pApENM+
	 xTEHW6GenCv+r1f7RzKryAduw2W5pXRK+QTvhKbxo3C443bP+HpqM1GCrFVXJqEywb
	 pqqf5MIXc6m+sEbG/C6PWK5cJuBWMrlEU31TNqp0na6ubKXPuiCTkr7aK+yllDOrpm
	 fD2GPp4WoZgdo08XNCNzA7dgxuwFtLtU2YLQaV01sOSVkjy/U+OKfbljNYEEPnkpD+
	 kdY5SnDUC62zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF35CC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736532275.18365.13426880441190381987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986983a408df053fa56a733da0157ef4ac02ba453bd18748e493c4a489bc9249
Date: Sun, 02 Jun 2024 21:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717365322
