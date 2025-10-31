Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7BF2D3A7C
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761918594; cv=none; b=B2nk3uh1rWkiklVqu1pnTohkS+kJaV9JFYFN7BcU6xOh/W4X1KYcHWpLcIai3YelaDb9k47W0eFi6EZVqu4xhpy27fkfJG9qN2GkpH64YfSXwvaX0aEdyPYAmIcvuxnB4jq//Fjsv1O6NdjGpdsgqcwbYknxUGkJPSBVpkr8Jk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761918594; c=relaxed/simple;
	bh=bjva/u6fPJNq6Hrl8teejUWTNQDoeCLGLwy7KtVNrUY=;
	h=To:Subject:From:Message-Id:Date; b=t+iTDgOn7cFx7f4P7xOrInofoVt1hBJa2VYYzYvhzfxVppmqGgJLVPnYz4KjvpRu0EFb74zZksF8JY5vYusYbTLzv0JijYiurGygUKn/TVbIPME+35iMPOnPdv1ukdw37TQiIWY8Ozk/I//BDvV0fODbC8pYtIQjj8khXVZJ/B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qff+AfIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qff+AfIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C59C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761918593;
	bh=bjva/u6fPJNq6Hrl8teejUWTNQDoeCLGLwy7KtVNrUY=;
	h=To:Subject:From:Date:From;
	b=Qff+AfIMQ33Q/MEWf8eo0/cr7UCy71zTJuz915dZHjfI3I12b4dic9+ZnpkDjRi3d
	 nCX6D8Wl+YGtTtymcuLYbQyYZz/dDQLi7xWqF0UNRURY/Z7Goy4juR1mufmWv44Vau
	 2MsHkC4k+OM8dGj37h0D+QKJ8suc4G09sc9Rwoz3cqi1VkJAWYQJL0nvjLd1qcnS3U
	 REHem1EpcDQFDpYOgsec+cquTEJaTqd+bp7CqesROkiJbrVjOj+fctAuyg3plURtip
	 4Fpsh8UZ1KSyEKBvfGQheiWQsQ3xIliO/HlQABbVK/qpiZB8smO7dJQOV3i66C0EJJ
	 ZfwCVbXLtow5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91808CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191859358.24061.1962626338496441278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3211be215ccde5461a5de26e5fcff249d45e34528695c90d734b1e5558b0011
Date: Fri, 31 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761918593
