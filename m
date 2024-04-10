Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054C31E877
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712785697; cv=none; b=sSVDm9GXazJu2zha7c6W3VVySldHEYzzURGQuGTqUG8a7VLzxOZiAgOYu9zhLdQcT3jOIdxwAIQTorxqN7eJK1GGo6uhtP3SaDDt1NK+wsrJXLWW2YLH6jqQLbAe8SkMffyCYq7lzzQ3sPslTtiQjYkl/ccn5cdv8qKs+yE8eUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712785697; c=relaxed/simple;
	bh=gf6wUAelapnMIfywixeoQTuMNnvb3rlNJOl/dFumuxo=;
	h=To:Subject:From:Message-Id:Date; b=KKpz6UbmZNQJkdYVdJ/Hnl9s4vCq9fFpfm8wGnWJbP7bAzDYIxDLR3D9vj5Y5MGJhQUBOejjNy6N9bww4NeHJMJzxt00EDhN+mteDdndSUboTQo8rxb3Mb6okt8LqBBPxoMlpV2j9YJATEV0OxSZXlweco2LTj90sy9Bb/o+sls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX1uNW/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX1uNW/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD12C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712785696;
	bh=gf6wUAelapnMIfywixeoQTuMNnvb3rlNJOl/dFumuxo=;
	h=To:Subject:From:Date:From;
	b=cX1uNW/MLrtIH/xYdWpP6rDh8BoSjmvACIvgNIvI5rEu8nYHD+EEKOT3kO0I8L5eU
	 MbHr6eLUefATNft/SqeYrAA65TZNKcbp19dUg0s3JT1Aky38lvWXCkMUi+FgLGluHr
	 ggstuF5sgL46Nc/Fr6zGj0PUQGUoz3Sv1dELBjFXtZTyQ/+Eobxu+CxnBYcr3TQ9MH
	 MwoN2D4Xr/BZwmbYqSHV+w8xZBYzN3sywL25Q4nmia8DLrFtFw29gaXzaCdGbe35uJ
	 D5twKSBcSz0ivxs3yE0WKPBe+6iafmSHC0+vKQ+r/r/U3PipOPobuTJvvsntrMBeG9
	 h3YqWwLia5ThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B6BCD1284
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278569640.28037.14861182516846934833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb549b62cded720d214bafd3b04cb580708a2051e3c86f2637aa63fce17ed0a
Date: Wed, 10 Apr 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712785696
