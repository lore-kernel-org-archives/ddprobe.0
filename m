Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57990188CC1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721040263; cv=none; b=kPtQzisn32NJTS5t+PdLIaVTqwTcwaWisJi9E3k+0LZ1wXRkLWya1y2ZdYZf6LPECudlUvjffqnOPgQzjuweqMt9SNO+gdZ6ZgIL1dUOQnoei4gd9Zk5Yy48W4ufK8dSy0WQ+uZocRv3w8BwvfEjgjpAS/F7S/lRvRK5A0nQaLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721040263; c=relaxed/simple;
	bh=hAVU85Gkain8oGAaJfqZ2iXQHSZQS3X0BZcLkV8HxO4=;
	h=To:Subject:From:Message-Id:Date; b=juzT6EVnfrVoEmKXtz31TGl/IG7vQ63dhUMX/gzlqSgo3yKjpjS1y/8G6MECJe0UPuoJSejUpxA0NkvfOyQVqNLxKgx3+hT55syykaVq182yGqb+HAXhTyLm8to/SdKHxJpz1mkX6TuewS/65xdPRUu+omAoQaU1wrewY9gqkhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3V85lPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3V85lPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E337BC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721040262;
	bh=hAVU85Gkain8oGAaJfqZ2iXQHSZQS3X0BZcLkV8HxO4=;
	h=To:Subject:From:Date:From;
	b=K3V85lPJFjZSyVixAP16j+zQrwMyT4HfAFKsMxRvXHJWtn3THA/QDDcCGKeNfirqC
	 4M33DefgIgoF+uK9eXsAa/o3XnmHuwhERAtMbbdVFDDYz10KcD1iMI4qfB9+YOFr2x
	 OpFD6S6qFxy7YTUNZKCwCBnDn4PScpsY2Y6pBcSTOzOWv1onZkTTMI7nK8WlkD2M6H
	 +j91jL/5ao7nUoP/7b5AkVIm1qWqkKdPqFheHZC/Id8mhLE6T/6N2S7GpShDzBWmur
	 Ya9RLKkeAo1oLzM6/czz+vElQWgzwrPTH09WSkZKqH59Sn2Wy7nWg7fEo8pVM1QlBY
	 u7uC3Dfmz1s1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BDEC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104026276.14656.12350822704232610510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52aa0b5932c0481103bf4a806a81df9c69941b7a7528eed8703db93bb2547ea5
Date: Mon, 15 Jul 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721040262
