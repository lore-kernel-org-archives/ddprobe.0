Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A83FFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767587034; cv=none; b=nQ+sBE+McMUrlmsAccK98yPLYS/ZC4TG1ZkjCUc++Lkohh6nvivsyDQIpYDm9XNrTJBUkNqEHfmjHfJEMMDk/S+VYo9dwe6+QwS3fPiZRjaibZIg0Yd3WJjGGBnJmBM8C2+lVQsfl5LqtyKmZ1SzfvrLwjDckVUN26uEiIkZR2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767587034; c=relaxed/simple;
	bh=5Le/0Mk0iOJxxsvbuXTOX0utHBW2a0AptZ0eosfdp+c=;
	h=To:Subject:From:Message-Id:Date; b=p/KEuRzFr36jRgg+FR8LQqEqW2ose6OwDF9twkRjrbEXnppuTp6lVlbGLpGWIes+uor3w0M6TFwoT0Zf9wxqQ+DWblr9UKXBpaVRnAqYyjdN+s/hL8vcHgqk/6HyIYm7NhZDMlznen3UjcjNBujOZi8R+wKxGLdGoEbQz0dqZo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sffUm8kZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sffUm8kZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82C2C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767587033;
	bh=5Le/0Mk0iOJxxsvbuXTOX0utHBW2a0AptZ0eosfdp+c=;
	h=To:Subject:From:Date:From;
	b=sffUm8kZWLNTbwpQQgEvU484bFqPvI9i0txeIPji2VW2mraTIC8iVMs0MrM+gI0C8
	 JtctDtLqrSNdnj8F2sLw4DXM8+KPcS0nnlHXof+KFvz5oP0df0YRXsErNAiVVdVCq0
	 N3v29yADrIfQj5wT8twKT3wC6WbfDajfUecV8a6/JhXEhRh5jH1NYD3mj4Q69lh4nR
	 HwFyPjeQHy5xtQnXMcI58nFxyrWUbN0VlkbZgtdXQkv1DYushAt/By7Hz/YsNZvpmA
	 f69n1yl8oyhB5dZNzwM9KFJGCiXicTY6f6g6Iz5ikEOk/iM/i7zdOoOErn/6Pe8wyP
	 7CTdjroGlKaBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91576C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758703357.18289.17233953226416337693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2876b6559e74c0587f2c63b1c9e049d48eea1586014ae83e511cbc631a098b81
Date: Mon, 05 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767587033
