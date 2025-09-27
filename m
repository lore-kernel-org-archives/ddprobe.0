Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7B91FF1B5
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758997194; cv=none; b=VMQs+huZAix+8ZBzdKaoCnruW4cRj+NTOwTZgAom2VI0U3ekh33IqJRSyUVayYO8RSFPc83yGrm+M+ShzXq9OZHz9y3mWwy7dwYnVCm40ScCThHcbu06h+4X06VCgXOABjW0hLRXixidnuGIAvHZWSQUOy/GZyzgMcWN3Ztyrks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758997194; c=relaxed/simple;
	bh=2buvjY2HFndA/KUlMAAYVz+A0Ldy9etY6QoyQvgv38E=;
	h=To:Subject:From:Message-Id:Date; b=i8sJPAsvN4ZsIkL8+fgEowqkoNSKh3KtpdT+BBpRfB6ZnUix6t04N19rVD1n5rADtdn2A/TgLpbPPi9PSVu8olit30NRN1Rdw1EUqo3HkQoZiY+O7ML1r7egtZuIy3R+YkXQud3mlIc55NyBGY/duOMqVfR/JO5+itVKrTEElo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyCxyY/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyCxyY/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA38CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758997193;
	bh=2buvjY2HFndA/KUlMAAYVz+A0Ldy9etY6QoyQvgv38E=;
	h=To:Subject:From:Date:From;
	b=GyCxyY/xZwRchNr6iTY3ur2jb+h2L7myqvCCrwiSJ6/wp2c/gBh8wJ1vyK3TLzLwM
	 qYWha2LPu6w+9Zp9ZQMzqAkhkM1xfH8jTJV4UCwDEsUa7bVzRBxe/UCMvR5uDpaIcW
	 WwM2Q1AWAVaMSMIGa4gvtbp8bhenI3wJC4H61mUGOig+gQzSNc0Ns4/4LbbahBtprs
	 HklfmkXR3sDfn2jWxVWCdk63jKdpiMVpRHNG2OHb3IdHAgAavnnVJjdY2/9P9SN3U8
	 xsu2zsglWuOipFpFh7SSoSUD4y24yyQeVqdO5hy54ra0hny50GKnNvmT/0q7/v5QNm
	 ewhFptPlSfPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FF0CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899719359.1624.14894967309554633053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd4fc36b51ae47964c73205d7e00a92206ff140e402039e39f2306346212a5a
Date: Sat, 27 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758997193
