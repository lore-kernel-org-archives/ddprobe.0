Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A241E0083
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761716394; cv=none; b=NJwtYBPdxFrAI0oChq+HYU92LHRqSQloTaNX+hV58eAhBBmZTLMNb7UP+dbcsa+GEXJrjP/mDRWvNMbXSFP8vZz9WDr798kU4NXd/q+HolxJ5q8Dbi38MBG16mt89u2vJfIN9RXhmmbxkGJ4zkfeyUwKUErmxssgXNQNvSlH8m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761716394; c=relaxed/simple;
	bh=/qfQHs8RVAAZo5arEfooP+KCM+FifVIUeEi5Hb8ud+M=;
	h=To:Subject:From:Message-Id:Date; b=UGZK6QJt310AmkOu2FJikDGsIbjcsWdwR5Um+0PqMvjvX9E/RZdJJ1WYl3C2xcJRV2AJsS+5B/ArJm2yWy3BCuaxz++puqA1wDEu1HkTe7lnY2Uy1851oq0OhjgMmdDZgJqef0y2ZDl01L/mog3/4UITRhAaHbKt6VMsS4POORA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0pFf1xC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0pFf1xC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA620C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761716393;
	bh=/qfQHs8RVAAZo5arEfooP+KCM+FifVIUeEi5Hb8ud+M=;
	h=To:Subject:From:Date:From;
	b=e0pFf1xCbRnAF+gfw1RdBfAuYeYno0a/0qRoEdao6UCxvENZrA9KN9aZhWs/bF53q
	 Y9bI3fUCIk6DXXVhKhlHGOud3KYaNq9r/xdIJqQsnPMF5lstHWUKaEUTtmB6LEVpTd
	 6NPQ76j0lkgaWgpbT9Z4JG2O05K6/MEsvhvcx3Z6JzbrdHbcDV/Y+xU6cIIYZTSdBs
	 mO8zZ5kj2e0BVUHf2q9HtvvaBeO2wsOLIZPjYruFODsJpBBVf0c+AAgIjP2adjDMoX
	 H2WpiSqeObGVC75h0rtke3P/9L+gkNnIGMvK4e/gVatQckpWGc5mqhxre2Z8CYfC6k
	 SmotH3uSl+agQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B2DCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171639358.8655.16150498103651315613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b834c9d2ca3b668bf626e20c44f76cae322b26dc93d19c735ae53f2072a6d6
Date: Wed, 29 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761716393
