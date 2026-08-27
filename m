Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974FC137923
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787857234; cv=none; b=L1fMTh6R2pCJDqDZyIE4qXioYZYP/3jyCfreqP8HwwRgPjbLM2e8vbYtx5SP8vZiaXCOcEb+UHQn94uSVsYD0BY/F69LyYQxnrZ0cYLT8vyAd2wEWW7vIKdLU2vGhIwZY5BVCjqheNJiV63dTUAVKX7G7KAliF46e2kvbi+YriU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787857234; c=relaxed/simple;
	bh=A/l0bYInpWCYqqb+G7pLrMUO6hqEzK4Co+ThATwIBsQ=;
	h=To:Subject:From:Message-Id:Date; b=UJfHyo4t0i3hNExQPG6rT4ofFVnrab4M1lUflpGHrDpXsw/ud5QdPB+LngLnQL3PucfSvwocy0EmdqweFnHVHGWIoH3++5ARI1AzYyCzPE0a65uEyh5wZIOlIoUcCo8jIptaSojXWFZmopbJDW888QH8grlAhPNkXojj/L45LQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vqkrkha7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vqkrkha7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC83CC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787857233;
	bh=A/l0bYInpWCYqqb+G7pLrMUO6hqEzK4Co+ThATwIBsQ=;
	h=To:Subject:From:Date:From;
	b=Vqkrkha7dIpFqVZBqFoZZ53LF+l9kVXAox3oDVbXi86apWouggvGYrkuH9XWXTcS5
	 vswnYqPEaNoasiCf5jUr0gwxBgPAITQkkPPq/u71ThHdggUXCqA7FyhWXs4l19Ar9j
	 lN6a5fPePqSb0TQap07eur+wZUiIc/hmLSuogQ0u7xTIaz1usyuYQO0ItjjpmUIyfQ
	 6hOCPx9YEI1jqB8X36rlNWlhQvPJSoHgHDxskJguE/Ldy6qxMpNzNh0/LO08TLooLt
	 o/EF0bsbECYu7khHE6vLEq121o4hlYWU7hyHVNX1ggCKGdoaMX33zzWzUVKf8eHItO
	 RhcJ/MCSC9kyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA34DC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785723368.23033.12759870212855315574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac554a8c2b47d4044f504096b965f97728374b77e9cd4c67fa1738d1709246c1
Date: Thu, 27 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787857233
