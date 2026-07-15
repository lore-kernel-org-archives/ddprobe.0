Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EAA352002
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116114; cv=none; b=F4J7GpWn1fwG6+lafa9dVyUQuYEXO43hKu8LNmtzf2uHg328SAri8HdN2LyAXIkf9I7wTxhvYeXSBOBH0T6lGjadxdlzuaJRys9oi/GtxSN2n12Sf/ogFccuINQE6cnnm2XUn5ReMUotza+bETghK+zoCS5/31OpQ1y1KZ8p8b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116114; c=relaxed/simple;
	bh=wnIkwUutGrQPSGD6eM7FkLYvEANXwRh0Xzi8QGtKGvo=;
	h=To:Subject:From:Message-Id:Date; b=jmoPyUzjo5dpUrf5UEJwWwlYuGXBRT6C+qC4lAstHm8fwY8auPfJk2E/eanLBRg03+XuxgXPYLwAaP7NY85/OcdN4YssnOIG3U+vIW1dKS3fDKhb1yo2XwkEbPrVAo1oE9gfh7EfzhkKAB5bAqe//DCtSdoYEM8GwuymFGuUrJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwctQ2T/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwctQ2T/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC9FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784116113;
	bh=wnIkwUutGrQPSGD6eM7FkLYvEANXwRh0Xzi8QGtKGvo=;
	h=To:Subject:From:Date:From;
	b=SwctQ2T/Rx8mDFh2HH0FCnLZwU5ns8AmblJhme+0C3B3d8WEydmdGMzkW1y1uS6f2
	 rAv0LEMj2Cl6p6+HijUNufFEWITeXDOfT0UBA2RdKxYlSmI3NCAfT97o/RZZqySL2L
	 aYdJbyjqlahMCKOO5Fzd3AwlDA/ptTzjak09En1u/OPazT2q1aVJZ898QWHNghyHJI
	 D3fYT0nJUQrri19D1f7nK0xjwU4AjVxSDl3738HYxDOvQcLYu7aPG61vPMTdqgZBSt
	 xAMRlEH7cn2LR+VYiMbC0BsZ9zbVgLs5VlBWIFjTsB9A21xYA79x16duxbIWmdIGzu
	 Fo9a9vuNRHC5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9820C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411611368.22264.211428210396083531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671dfcbd7674478c16f392503f31781d79b84cbeb3d0cf17f705d398adf2a24e
Date: Wed, 15 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784116113
