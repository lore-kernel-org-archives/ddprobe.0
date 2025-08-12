Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2218E1ADC69
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755040194; cv=none; b=SyGSWoA7h1R0aaQ86ciSG7xFh5Hl6DxfkX0FfQgyGvsxXV9ttssfYgM4FbU/KztJumz2pJPjWsmMI1uyfHknAbu7wwWThGmVrd5JuFj4LlCCoL5EGT3fBRSKbs9jnZf9cXszX/bvlozmQZiplQMBviExVUgRFVLAh4cWTOYxZTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755040194; c=relaxed/simple;
	bh=WKTuBn0VobUHbJ/XCRhjeRa/LlbKs7bdd1d+qI+2Xh4=;
	h=To:Subject:From:Message-Id:Date; b=hfE0WOYWTB38SbtlJdBUdFEsy4bwo7dP891iAX+KcFatRpbG4hTGZj7IojULkY/WJBydfT8u+FolGu2Lmk82UzOPeK1hgPCR9OfC+kXyWqNic0q6bY7+TvfCc97V6dL4r8yYDOfoS7T6Lcp8oelIO0VzK7cROsRMKveE8wsNbf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dbp6romi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dbp6romi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755040193;
	bh=WKTuBn0VobUHbJ/XCRhjeRa/LlbKs7bdd1d+qI+2Xh4=;
	h=To:Subject:From:Date:From;
	b=Dbp6romiFwO24h6uEMVsoxFEErGHnJymhi+5F6tAI0zimRozUC3/h3bNOlCfGtQFF
	 9fjAOVbH0kN8qjHxD3WrsJguP6ZODdZaF1/bCPd5fvvrJ1j9bG9ZBmRCaTMaAjuVlb
	 kvRwVVijJqIN5m742Day9f/h+QY4BIYkQqrKWOHK8acLHvn6ppUUWf7bVr3SzPvZ0e
	 GjN5kSN0wRCrqCEgI0GRxHkua1J59dalqlnwvY24VpakVU3YcxY1p2qR5JlPJ4ORhJ
	 qLvqXOxMbHOUlRG9B46VchaiKhNSWr1xUka+onv5pvmm7URrV4twzACOIVzRbMKH+S
	 Ul4tD0oVgT1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92734CA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504019358.25542.7978118397793679366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b55bbc3bbf159697dd670659f11350996c81305f382ce7393910fe148c15dfc
Date: Tue, 12 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755040193
