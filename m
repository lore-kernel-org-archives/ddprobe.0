Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66662DDA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718546303; cv=none; b=Jd2ImxDCBwyMPOkNxEpUX1kZC/WOJYzowjHOLT82AprTeGGwYk+Nk1wvEF+xJJ62E0PlWohQaYItc21zMk8wmPq6+RecSjs7kLbE9upUO64XkCcYqZpSYYUZ8StmlwxwXRI9RRSQ65iPr/O1KpNFcn6yFGVkkTwg+mKuzAlOajQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718546303; c=relaxed/simple;
	bh=xrm4qQ8jF03R2Lxk1yoaFTglO9weQXev2606waWM9Yw=;
	h=To:Subject:From:Message-Id:Date; b=ml+8k8xlXmXExg4cgE3thzd9vgWoVzXlGDnllHU34NsAhmZswsf7uwQiPQQDUEy4MzjG5rP2Y4WAFTE720KO7CjhgSAvS4YhFFaIyh84WzfKcAFQ2D9poDc0uV4xTnWnKkIIs/k1HExFDW4US+gO+zoSa+lOUBXGPy17HHZy3JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clXQAoqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clXQAoqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BEDC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718546302;
	bh=xrm4qQ8jF03R2Lxk1yoaFTglO9weQXev2606waWM9Yw=;
	h=To:Subject:From:Date:From;
	b=clXQAoqorU+kZ0l8s8bkBQShR3jDqxSq1SZo4+/c4g9yqCvz4TmRsBULLw9R7IqgK
	 8o0l6yAaSSLcbqpZPAuxUWRL3OUQJtdwl2E+WBZxD1yY3iD/461QehgWx5b4Q+292s
	 5T1KqoTZbDcKX1y0kVHa0UZoypgNiC8B7tMDsdWPtKCbKPLdVFJfgKHepwcJgK4duZ
	 ti/ISDpJLicTdhjfOqxmLH7tRJqHZyRSxjZHLZQ9O+dhGg/iV4pV3Pj/dbGb4IDORd
	 dZGfyKb3zR/Glo3DjfXDOj8octtrqln+TaDo09g2yo9r427xoi5r7QOLc+nK4WbCZU
	 i/oX78eVJ3WPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E91C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 13:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171854630276.3679.3908577768801495495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daecdfe32640840369518d3acd3d87d87657d4d8ac775a5b809271b3fc5ab9a7
Date: Sun, 16 Jun 2024 13:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718546302
