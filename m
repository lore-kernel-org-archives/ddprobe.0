Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B219199238
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718663303; cv=none; b=eVvOKwqA+FnpwG6hpcg2Xe8GF5WPaLb1lojl0J7RWsx/J21qh+JL0zif0iypDqGHA9mrwBh6GjzaJ0xAoLs+FeuBNiS8VuJwa+ucfAiKzPbNV7fzej6ntcYfHS+uKSoAs102vDqpYPAijKtDA2N6/n5m3sn4NFUqcsS29NWyaC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718663303; c=relaxed/simple;
	bh=slXCEq3ODJEvsE3qCKz1wXR2oWeMlwcKtgfWjUX+8xg=;
	h=To:Subject:From:Message-Id:Date; b=lqPmNBLkPKl+CPR9cixfY0L8D3cYZKNQjGHqoE6c8x/eQMGPNaAeS/d/egyUeOkzVnUvDIJk630GwK0dJQjgVUwBg6744BQhQtYOl9iRocVnZcN9/tDxyi1vrfXgqkl9kyg2xJAKddK5SetkAWKcYkARPvSXRI3KOwTAZ1OHFRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSuM+26T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSuM+26T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8814C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718663302;
	bh=slXCEq3ODJEvsE3qCKz1wXR2oWeMlwcKtgfWjUX+8xg=;
	h=To:Subject:From:Date:From;
	b=HSuM+26Tv2HOp7zLNIZIeTMI4uEouNOdyM+9iXYdez3uHlnCp5UtTXQiCm1YtAmWJ
	 /zyXK7f3ttUnlOFDHKZAxgTbBtG9qQpPvn2XxupgbpsfLmdLnxNT0XdmB2HZ+50Kvh
	 woJNK2FuyQFYLGwcVeaPklMYGfWv2x763mdbzTZ93ozUxE811Yq06FCeXKkXIqiRBW
	 B5BUOE01wxVrWJ1eWrDqrDmxqyJ8Lnoxcwej7m3Lit1aygBvXQ+kpKMtX189O5KqTA
	 PtcbbTbT+l1DeHH54020el+gau/NvqmxvFyRzOQq9tufH0YIUjGhyCKPKdwy6Wj+5t
	 6vwlzjYIEsFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C08C2BA1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866330281.28913.5856519326898086278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5400ba51cfd55e5a6afd9181f9f1350f567dcea893aaa7e1aae24c4a67ebe4
Date: Mon, 17 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718663302
