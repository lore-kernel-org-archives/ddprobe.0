Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A95EAE4
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720669643; cv=none; b=KGdsCLiSvRyV/f8QXM4/FfhoFTnABU6JptXmpuJXCVL1g7XlwwweDrQCccj+WLXozMf4FVhU2l/72MvWuPgfm/wDV14mavxFqvL51eeJ5WdKC1CtfaPJZYhRHJh3BP9Tj0GOxv/W8IKJ6ruFW3QLP4cDcWxMRU2VvlFJS0RLgD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720669643; c=relaxed/simple;
	bh=6hGCmTVw5hYKUfP0YV7qyE7yObMyTaNIDRbdqMe94aA=;
	h=To:Subject:From:Message-Id:Date; b=fJlIZg6xQbXK7z/yV7SXWyINFnRC4P1uzbpZNzgBj8JQPTZYYa1nYiZI/nj5UeRfgwTsu3LjF2YXGFLgaNVzujHAM6Zzq1XMcnFp47jV98TyAEON8MygMZpn+VFgGmhNX9qwQnDsSV0DuHvfYcNjuDC9aeqLHZOVObk3WjVwBQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMdrbn/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMdrbn/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0482C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720669642;
	bh=6hGCmTVw5hYKUfP0YV7qyE7yObMyTaNIDRbdqMe94aA=;
	h=To:Subject:From:Date:From;
	b=nMdrbn/ovB9A+CSvzrAO8Qkh4nymjEQpdLz4fc3HLD00zdoy3NzpFWGEfPnIoQb/I
	 24lYmlV8jEji8x5bUTVt4qf8shzNEVWx/BHt6fDDwZRRuiXPbYrWij8ltnTMjuEAfm
	 yGnDsVqoCe+CDEKPFHEVnWL+Dp8a8UnQULnVm1xJvzDywWmDiLcnYIty1WPfv1XSgI
	 ZpJqQ5y4CyIynzoxC9p7srdKM6q4eS9yO313GX60acvl8lK1ifBPDLwivt0Q2zLuh1
	 u9XPdp3cqamb8UwGknVtArDpUUs56wGThxLGqlnTadTigqTRAwSzKV/yyKCAvFxieW
	 N5rvUavG4Y9PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C5AC3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066964279.29184.16150097239745273834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168e80accfd9f12bcac4b6fdc50af5b1d285f657a5d080adacb81b7411d17f90
Date: Thu, 11 Jul 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720669642
