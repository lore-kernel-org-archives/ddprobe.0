Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8E33EB0E7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785193834; cv=none; b=M6cyZ5tC6Fcx/Bz9accpaPck9MRhV6aHA8iXoK225Ed8IkRGUw8z0eBsFmlkZB3vLbPE6i9ZFmkQQ155Q45dLeZopSvQGrmqDxEBY68FTCKSy7tmgjxRHrP79UW1anaF9ZELMYKvDZozj2uTbT/aLLk+QguDqsaDREK0dmVtLAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785193834; c=relaxed/simple;
	bh=heWQKIrKv2e/OGbcXzCQx+BW2G4Dg7ir/NngXRfvb5M=;
	h=To:Subject:From:Message-Id:Date; b=Ss39hcOr3zfYnAG2Ae0FFqtPlseWRG00npGaNzLHa244fDyNKrXDqZJGu9+T6pGSwO+Eu4XF/qxX15YPdoP01OECL7PhKQhmIumwgIte2o14X4k0U5WeH2U9KpB+rJZc47lWDYoLH5uaD3LwkAqLgZRgGVCUrX44YNmDcqReRzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmNJy8wq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmNJy8wq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D448DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785193833;
	bh=heWQKIrKv2e/OGbcXzCQx+BW2G4Dg7ir/NngXRfvb5M=;
	h=To:Subject:From:Date:From;
	b=PmNJy8wqjaUfzkAuBPNCXFOsXX3YoT+a1+hZDGw0waeNBgMbcg8lwTZhxQJgxbroI
	 C0HqAoNKv0lQQZgBxV8kadi1KuON+ZBzLP5pObyfQJROa3QtI4xzAaQGD8CoS9KIU8
	 ijTtjpB6PtxkT0gavaEwNbbaOXYHeBFQvrCJeiHjVwDtMqxQDcj+FXb/lu+Zz+j+Uo
	 GhYiZWgcNac288kqUkFqg9kUj8rdgtB6wG6LUQLhLfPW7RQI3bWmxur5EcBxU/g9kM
	 Ygcefw6HOK42WA+UqH55bby3jyUIdPCNuGzFExuOVgjPE2MjgMdYrZTQSPq7e5VPjZ
	 o6n9huLQ0hIPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA90C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519383368.12234.6520325261450059590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f12ceadbb02545f7be2998cd36483f7bc41ceb2c8ca0746faa600599a8f964
Date: Mon, 27 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785193833
