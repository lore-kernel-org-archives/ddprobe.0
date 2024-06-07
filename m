Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC0361FF6
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717787243; cv=none; b=nxcDpkFmK/eLysjC+gJMd8M2rm0Mpp3e4Fwj41s8yImO3s0D+7Bhej58lDRkxFF4wCgdw2kHuiBhGYcrDbz1cVmP6fUU7F9tWPvJrhKKBY0GWW4PXML12W+oYQe7/tGKfHC1dJHgKfutQiluZMEeQj+vu9Rr2b/WBJmxi7uhKb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717787243; c=relaxed/simple;
	bh=K0gWywVhcjHOjQAJe9QAa+pBFJF6lRXFYgk+zNOkOpA=;
	h=To:Subject:From:Message-Id:Date; b=lWu6WrJ6FPES0ZDN+O6rNku4nPOT8WfZ7N8xo4cBS9bF+VN1elUmCdad8NSlx7jBlQN1ueV7lhdGNHtFySmMJJf84lFQfFaNUbO9KAYpCswWdVfS/qwqSsN08KyH76nTfPY+Pkf66j91eExTxONxIJp/ocmrwuTtP65D3U9jpaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucOAjkcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucOAjkcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC572C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717787242;
	bh=K0gWywVhcjHOjQAJe9QAa+pBFJF6lRXFYgk+zNOkOpA=;
	h=To:Subject:From:Date:From;
	b=ucOAjkcp5QVq4QsP4ufZbkIXHgLVg75wlu7Fq4VoPN/zqkBSpDdoTaKvDZny88VcD
	 awcYGPxzbJf7uSE/FoDKdLmEbdh/Oop5iG/Xpds9PRRDQdTKGh0pQeO5tXUE4rXP1J
	 tGF3zPA5/+Rp/xIIgY8Ojeon9Klu1hdSK+kciwwS3ZUORjgUY0xnxXZ0AyGFF+1gJE
	 JguLNrtfzNCEPygW7DUuhcUnVlcG2T1oxqp/2La9/96LpEZb1M3tB/ZDMMWPKisBwQ
	 NXyMxJjTUeOtUnLQwFT6/u36CjsCktsjfe/7wCpq+os/zVCcr5w+K5ayFr8MwHeBto
	 atfFKYOWW/XPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27B6C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778724278.413.11650632995579081525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f387c917dbd2700d3d113b9437e554ef6fe93887d31105c8da31e43897a5710
Date: Fri, 07 Jun 2024 19:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717787242
