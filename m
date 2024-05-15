Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0E05BAFC
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715771543; cv=none; b=rZ57DhodM2f/6a1F3osRIb7dyFAAwlPmi2+D4XpfT9lE5LP1U50txR1Al9fQTYTqNNJd6SyssxnB7rs2iwAKqZc9kthzLR5zRdILhL6Vlm0hGMcE3tvQqKLfoB+9HIghkgOU9SU80nbXKlH7G6PlRrDv+OJuDgP28bsRsUVwq2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715771543; c=relaxed/simple;
	bh=lY0RaqqVaV203QqrGNCoXk+39tnIFrY0h/pf+my4PyU=;
	h=To:Subject:From:Message-Id:Date; b=r/ahyZkUGWaNfmfrST4iRVA+TwyeL2oGwn/OfQGmZCsUBTMoyJmIx/c9IfB3GSabT8zB4jwyK+F4k1WsyHyi/zJnN2P+wYVGinGZzxDovr12N4urVQXwXTbVgLigtJDsGQngCkOst3t1vbCVTRJfkevIDlbr/mYTVuckAMGA4ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV6isLin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV6isLin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D005DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715771542;
	bh=lY0RaqqVaV203QqrGNCoXk+39tnIFrY0h/pf+my4PyU=;
	h=To:Subject:From:Date:From;
	b=uV6isLinwRBAzrNCe9pRx4fMId6BjN/ajT2jU8tJOuDcSNufBVBZzXPb4ZBFwo8z2
	 rI+RzKgafpVZuT2UiGFmf9VlbjJPpWJMHCNinkvnRXMWHkB40ZlChZJeV8Z+vQvI4a
	 vHSpxMarfmap0Cr7TByi7fBcuPRJZ/7TM2qvA+dMC9kDSRe6IGHj5La/EMVO4ceC0U
	 3yGczMCEA6ousaJWF/I4XEEPEpk6e85ZcxAW4qZJVyVbx+bGR5udEhTqPuLcOc5/oJ
	 B3UWpaDGpDDYaXfxhxU0MaWwf0jcJKwYVi2pFMnDAvtPh0OZQuhXWale7u2xyPg/Dz
	 jinVX3csUWo3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF359C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171577154277.22266.13335536383476318107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b9209e6fa9158b6c5ea6c09250992f7aa81c133cea71e2d7457ab07b179f76
Date: Wed, 15 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715771542
