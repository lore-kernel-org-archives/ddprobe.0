Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CF924A043
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747750194; cv=none; b=riclWZEhR/KpFzXA3lxikekKGKxrrfdPbvJLx8EqbooseCi5nNNfaGoLJwITOAOV4qoYIoBAf1NewdNunOQeZ5yBiy/oKP8V2Lcgf6//lGzIXkR4xkHYiwIDb3hlmmZkqYQZ1K1ucNrEP2jqXZ2udj5p6ea+5kafgUZ8dY1rkfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747750194; c=relaxed/simple;
	bh=U0U22WJ9dgnZt1sxdo5ABfTyWztupmOTJFlqE++tEuw=;
	h=To:Subject:From:Message-Id:Date; b=HcLyML277ko/J3E6Iz3fK65BjX50iu+gFGmA3NuoNgFT8IHf+rDqgNbgldR7FZxq+XQSOupiSeFtD1qz+LUYHC3tPN1Cz7JbKIOAa1+tg60sfmiishni5LVZ0TX75z/KBB9HcDgDbCctHs/3B49hBrjZp7Au2Q8gZBRKkETpCpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaF58CXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaF58CXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 959CBC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747750193;
	bh=U0U22WJ9dgnZt1sxdo5ABfTyWztupmOTJFlqE++tEuw=;
	h=To:Subject:From:Date:From;
	b=NaF58CXFFZoxLQDC3I0gN1DMn47YrXkJz/TLrY2FV+SZBFBM5jvXQ+s+QuqVH3CIs
	 lg2Qra8u7QPwqDy/hwZFwUwmmwpyRTBilG443SMKfCkd0HEiH9FVMc4cjdSVrLYAtM
	 TBRDCUB/WSEK1M8NYURgQqFmzYIWuDlHO7a/H8zif1SilAcA+VhKVEJrmY5e/WMPEC
	 SzhFH5CIYzfR7FJLX9ogPN29+fM/k4XoNZRxK3vdAGZL/B1jyoE2466A4Z4gMJO6CF
	 vUAytPIssNbCLCdGGShHwYr1SA8df2pn652aQqygI1y9kRcGTgDm9OPl+L0uEvhKRo
	 ebEF0/DMBD00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC6EC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775019357.6356.17793211170871327039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4810d95dc55b25501a1cfdfdc41dd7ca7681cdc4452ff7feae49150d78d68a9a
Date: Tue, 20 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747750193
