Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA841F37C5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746742794; cv=none; b=tKDhhvKs11rRR+XohGhHl0pxfVoiAs7FrLPzyk27exLN94TMTVeOUFy1XZhtOJemn+a0LawNV4bvxn0UeUhJblyPE6nImYBpSxZhZiTVQYCGUoDd2z0PzRfAbX1VBJ36nX6UqHCxfGRDGipLTxYxqs6QWVHVnCNyUeD7cPqPpmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746742794; c=relaxed/simple;
	bh=geuLGL00yIgeAFXhzwTwMlaP1uXE3u9TquJaBOiZ+ng=;
	h=To:Subject:From:Message-Id:Date; b=AdbvgS482XY/GT9OGmPGx80q+RCH3Cyoicv+WpWSXVBEzYEHhydfoPA4BtOq96z9N4Tstg/V2B8i655q1V+IGUiw2zllEZ/yUyj+xwc96HbUaRA1AxnMo1iFRTALeYCmsszRbrrbxwWEVFR8x+03CIXqzRVSeIlQUvuz0+h4zho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFM1MHDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFM1MHDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7326C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746742793;
	bh=geuLGL00yIgeAFXhzwTwMlaP1uXE3u9TquJaBOiZ+ng=;
	h=To:Subject:From:Date:From;
	b=KFM1MHDWCX3G//vp26LS534u+KL45BrJU4f7MqDkvDpdaALfS16Nix4acYiw7Rf87
	 17Y3Ng8NLvPQpYWu7MDhrnG0LeVImmPOE4zHTnHWYorFx0No90xdLaQkRFgohnq5/T
	 RWS/5VCWqymmFHb0V2eZcHWliGQ5miE4jS9WmnB443n3FzyfP9h8ugGKCDW+XqxKtL
	 rV5PvSL17Sq6Pvax7Bty2OaKqbM/QUrfKc8OeC8yIcg5EW5YERCL+6z0W/AhoGbzVP
	 PSj2Z7e1b/tmAPsMwaUIrCBZRjoFRXxC7dF7tqArNIyu61UfaY8Bjsa8MlyzSnrwrI
	 W8igcXJgWSb4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94743C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674279357.8132.577768005344175271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5d6a3c85d8aac1166593e4f5da4379d12a78ef4a992cbc017eb7018f67a0f3
Date: Thu, 08 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746742793
