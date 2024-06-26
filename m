Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63295139D04
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719381203; cv=none; b=o3Fh/PdEyceQKTfbJeo3VJ5URdsLeW/d4WSiacepO+DkcFRPA6KSj4TqgpPkt4EdHXuDIDzko1mZ2btS7O6mJptQY8V1JrVUFBUu9RsCg4BbQgyQ/L61aBoGtSjzFCOgAk+8V7y7R1aK8Od3uVwEANblc1X9JCB9a0dnrGqB1jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719381203; c=relaxed/simple;
	bh=2WQ8pZiIXKjgOTa5FSBJs2rWtw8e7m9AoFiCX5u98C0=;
	h=To:Subject:From:Message-Id:Date; b=sOuzbfJAm+E4yKRVV6jrrss2H5eQxT9/6SIli+igXL8jL2J/Udl7IKHOEs2PE6yx9MfQo6Z6nNKxEuucX4X4HHlfp73PbreMKniBkEQMsaaL6i/z0Sw9VTgtdRVa/ABrYqzWCC4OBdSs/eDjLGm6pG7dWLD2k2GQ/k1lS9aSgjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ0F6z73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ0F6z73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05A9C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719381202;
	bh=2WQ8pZiIXKjgOTa5FSBJs2rWtw8e7m9AoFiCX5u98C0=;
	h=To:Subject:From:Date:From;
	b=YQ0F6z73+wKX+RuM9cdQPeYNbpTh6UkMMul1J6TnJyniq12DzuxAdWTvkPyBnxFL5
	 7XFt6vA69ugN4fkPSWql9shrh9uyKkp30gfBtdaYxYOH4Z0NhGoXYp21bquFl0oiKY
	 133NoDUpZaC6GM1hjYPYz9ATbvN87ZhON8gYjKQt0O9UiVktdjOGMjw2lIUNqJ/Q5b
	 /nFsirrGcYDopTvNNcIHHjzKlctZF/hZPq9wHkfj6nqwKeDAQKCYe552wMPpJb1lJj
	 Q9HZLR2pGTRm5+Nty56WA3OuaWUCQbtOmM9axa5w9nkE4xBnhY9xNWOGiaBvL9zAj9
	 fNFXpeHDMKPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB18CC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938120281.5378.6900820694569004051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3084242b5528206c5dc3ab5d0f111ec72e8d7008ff8f43e4f56ea24d17cd46
Date: Wed, 26 Jun 2024 05:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719381202
