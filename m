Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5785526AFA
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716803063; cv=none; b=POemfFrDGqiKgVjK0kTXMIP7fffxgEdNytOioXFHUJq5L04QqgC/bUy2P/DaUSAgOqnK/B0f0GS7Fo0HdEYFtNRnAuGoxu9dyp6JufNuIObKKeZF386YWGwjYNJGtPg4nHkmGQpjIrgqQL/UjC5+8JgwvzKxfPR6TJOOv3BNaB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716803063; c=relaxed/simple;
	bh=ggWWTcRYGVXNFnZMZ9YvDB7pLBX7JpljA8K65Foriuw=;
	h=To:Subject:From:Message-Id:Date; b=gGVUllJCUFbUuYmugQLdLyzNvrP2u3rzMp8gnxvXFgp9e7VoFTWCluHMwb1RyGrzryCYdFfpDtRj6RtHTHeaOu6xJL1J23ftCWw1Qz2Z1uOuNQO6+oD77U0VbsTj209ew3Sp7fBCFsfHk+Q19F6cnf4+eZn41FQ3OBPeQ64TDEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bch0YdVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bch0YdVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D742CC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716803062;
	bh=ggWWTcRYGVXNFnZMZ9YvDB7pLBX7JpljA8K65Foriuw=;
	h=To:Subject:From:Date:From;
	b=Bch0YdVk7mOdqMmxPLlGo1Sy5Ahbx+01IKQ9ugieg3rvEHWzTxfLwUo8MY3QZveSX
	 qArVoakHhRTPAEUQuNozD8M7TdZ8hS+o95j5179Da9Ko3TBO0gP5dFLYZ7W2gazUPI
	 rGRSrjG299Dt19RRyK5u+yCZ5Pev/za2TvjCcSq+gY8R82peZeZTqpdboO6zNXL7dX
	 bFxNEi/QRAhMtjINnKCbbu3p4N8y1VSiXhf8ANmRoeeUOsid4AbyTn26BfOw6gTE7A
	 PCz/tVGTCSi4RBvSZlSIyUQqSN6Wfh87P1fIO/MyT1+qY4C+IgV8Bksfpp4m94xXQv
	 6QwZFiFbXPFLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7885C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680306280.29373.5104459240919263048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc77c22f2c2705a4f6df96363aea7638851d6a08217ae85af707e162dc76c1b6
Date: Mon, 27 May 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716803062
