Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C4239E7F
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776140854; cv=none; b=o8skT7bPZL6L3tr2cGWfOLD8vf1wLvGmGjhs5XcTDbXT7EfJntHwOQWMhTZWwW59yTZu7ztAIup2zotVfV+iPXWPggOmeapVaNq72SJLSnbUTdXuecv8XwdcnIMzEMcJ1wSIPPJXvQ53sVCkBb95Z4JaLa6zOmWTVJDbP7Zv7ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776140854; c=relaxed/simple;
	bh=j3SEI6x/TmaeAW3HAYpCQZmfTc7S0NLQ+Dh93mZ0Cuc=;
	h=To:Subject:From:Message-Id:Date; b=pucpYXT51tzUK1fB1IzOe6KAI6VrCKMHdNKuGbYqOWwnD6ImdJa4akM75cjsoHCCrnrY5v8bxc05pBUH1OEZ1AN3jGo+l/PQvLRGLHtHuupFcnW3Ak66QC3F02JCjcf0NRycTDoGUyAJhJtNiLZ+Xgc3cYbPPkbMuiTdakalp0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP2x8Is9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP2x8Is9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22B5C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776140853;
	bh=j3SEI6x/TmaeAW3HAYpCQZmfTc7S0NLQ+Dh93mZ0Cuc=;
	h=To:Subject:From:Date:From;
	b=QP2x8Is9bdpYwfqu7nD1/9J3q8A5A9l3zdxENcUyXYCHakUGxvClJJt8ZaYSJjd2t
	 Bwtg3FsshloxxE9BUnyjOyJXVSj9sIFk5wjQ75k2yaPW6qA+70ZxdojuJ4jEEy0kvv
	 B7Vc38loh/XsS2JUdRCKcOBgYMgXmdgrFs/B1yWD1/wPWgSmOWgpIz0imaE/821HIa
	 rVMNFnc2v6im29Z4gcXLjhwAIgIYmz4NKL22hicr5wTSPjcCHELNQ42hhqTa2e+TRJ
	 hBy7iy92M/Y1a+Om7PZ4o8ejm/AfXiTocHPOurE0jUbWZrTyt96DHW2XPgtrA1f+iF
	 cxys/l/t4R40w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4342EBFD29
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614085372.26214.7211166708888416740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b63ac6cf164c34b916e1f68dd54a207251bf603c075400d299f3b3358bfa2c
Date: Tue, 14 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776140853
