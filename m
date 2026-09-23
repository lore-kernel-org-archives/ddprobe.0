Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473FF481FBE
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790203234; cv=none; b=oAFUeNaHXadoKWOkyjEUagIvyOQFJjg+2gGbU98QH33+Pa0VwqWklcRi7bZuUjhxPnrjyAibLiNFkfQC4TWjCbNcafnt5FKqXgk/rk9wemrjtaw28XKN/ww2j1rrm9SPQdMpaUycBvGBCZRMgFvgXriCvVEjI18tKvO5JyFjE1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790203234; c=relaxed/simple;
	bh=3Mm7rVUTrqvsmFUTIE0ZbKQORji8jVTaJPsqZ9iWevs=;
	h=To:Subject:From:Message-Id:Date; b=OYeQZB6a0dTcee4pleFn2tQXvDapFfWYISE2HPZTJt+qTPyU/2FwB8TBX4OD5HuLyyDRyY6MkjMfazUrCG6GdkqY5G2yLRIagjmTP7H4EU8DCJ3iScRfYESx3aRJRY2QGP5W4eX420t0VgnvcRINIFUiX+zUNVLnq0qA1hw4VCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3PrchLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3PrchLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D637FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790203233;
	bh=3Mm7rVUTrqvsmFUTIE0ZbKQORji8jVTaJPsqZ9iWevs=;
	h=To:Subject:From:Date:From;
	b=S3PrchLtzlvMYEKLZDnDlMUNe3iLAr1R/WoErMLe44WbhtKUnBg8ZeXTSiZJJbwAW
	 3p+Xof9LpbBZK8AytXoehqihX/rf2dyh8BVSjYuETKwp9cVf1Roxs33OPqk8Tx/bA5
	 H3Qi6ob2CczUblr1iFSFJAjaIk1y2zByZ4mXW4cC8akLnDC6xIkYrt3xcKfZWWj+KT
	 EJIzo0rB5b388G3P7sHbeamq3c5sBX0eAYf3nEThMoDowyyqWId832TU4A60EHjVgp
	 x7hzZE0niTUqW+DhJYtvKCFNX3W3wBTVEfel5iyAXvHcrRvz53W5zjtzFC71tNuDtg
	 zNAUpi8hPh+tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBFAC9830D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179020323370.3693.13608875259704396970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4d873b5f249c3045079c41f20f2e34a3a53ce5b858edeca5ba7275567e2136
Date: Wed, 23 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790203233
