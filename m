Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF0430F548
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755576594; cv=none; b=pS9UPDPVlxPOSMRnhSHVkxpKCToJIdlNBB540+N9sGbdMwxvAaIiJw5HafXrSnP7XeRq6XryekL7YWDDB9s9aiMqqtMyOpM2H0Ksiz8Kiut1ltGmgR9pTrwQYDJrJHOkX44PBYl9hsJ2bNq6AVLAsYDE2MZCmNsFG4uLH6brhP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755576594; c=relaxed/simple;
	bh=VwVckTaeLK7dIDNUIx8PAA+o8PE5H1EybLOhKj6r5rg=;
	h=To:Subject:From:Message-Id:Date; b=P1QLQRJYkQAbqANjEfk1po3nlIRvNtvXrLIC0RVnImMCH7lubE4TpYW0dp25Q7eCsrfW3Q1C/lyED9EWdkxTj0wW4OA+aBI26XJ+FM0K+y2Hp2T3NiHOsTKc9eK+WXo0TbpkFghqHJeHsxY83goAId8DLNx601shzhA/akQiYZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGCRuMMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGCRuMMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7282C113CF
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755576593;
	bh=VwVckTaeLK7dIDNUIx8PAA+o8PE5H1EybLOhKj6r5rg=;
	h=To:Subject:From:Date:From;
	b=cGCRuMMebyQSd0f0hO2ukIevD/i/fHqvy4Q/G7ntnZT8wztto640xiuWKcIUuKSQI
	 8hvm2XlH2JGhozhuTr6k0tcmXO9RZoVJsYCyxLWF2Vvy77at5XHFdMcyxqtyuMrluE
	 LByqdwwU+3r3bYFjkWCVs81aTQUUI7w/XkiDgWB+mBjtHejH77VGUQHX+1lfPGOthq
	 b9FXIV+smXRKHtP9jJkDj/DaeQKFAIAOnG5mXvuFl/P1zYXs/Y1HtTdnYsM9gAMMXv
	 MORxHNhpNbo0EEio3+wJUqcxxAODWw6WPnL8vOJwfd5RHS5M9S9fV4y1Cejy/BGlVT
	 ZoOO5//gs5nyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93529CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557659359.21646.8447307046237164145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e9d930ab5ff7159653cff03430caae47ea6b308798d6b8001b0efb81eec296
Date: Tue, 19 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755576593
