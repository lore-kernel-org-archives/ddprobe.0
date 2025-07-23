Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B92279DDF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270194; cv=none; b=gNmizCIbsl88ZrH1lAd4l+5BZHQMEkPKWvw5KIOu0ldpsMR4cpOurfpE7SezqKe4j3Q/oCH+ZaApUChjALUxRHkn3qWvNFN/njOyAjy6nONHQO61QqVL5nWtoFdNXX//xuweRaa1U5ZAwjpU898/5hDV7nycY4SWSWBrzHqvWYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270194; c=relaxed/simple;
	bh=qQHJVXPkATtAlmblBPCQqd+I/k9cvIJShuvpPBxKi38=;
	h=To:Subject:From:Message-Id:Date; b=X9zZMQdIZ0KVLMMXCKlQU4FpVc+dEm0FAzrO6WZu92EeUk3C4Vi5vSrDLv5bhtQaQU2tIBqCuhcLVm4ij9acdgGHAXleSebuD0HXluUu/1pJeVT21kIgbudKqbDSg8NL6e6MXdFVCdHvyIyBGFsuEUDUlQFWOtVKDxDw0DOtfCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsJKb8xL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsJKb8xL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD82C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753270193;
	bh=qQHJVXPkATtAlmblBPCQqd+I/k9cvIJShuvpPBxKi38=;
	h=To:Subject:From:Date:From;
	b=JsJKb8xLl67gzd8qUOo/j0xH0/bHP9EPrAKWcVLlt/UdyacxPG2Vx6j5UM14qp2as
	 nacR1WdY5B2KpYW3Vz5gE+bLWkIDB9q7XBFIgwFCnFmHGSkUdJ3dRke12iWQGDkCQo
	 yYlfduocXsSCPN9Ks1hfFG6y8EdDLBTn+2IYqVBwHOEEe9utxN0QMte8pAYKSK4Io/
	 vhFBkxcN9SwL6ypqCPVIz2BhZIp6hwHCATCP3d6BxuIU6ZirS0wXvVxaReNaTxXruF
	 TVMVa+bFU78/VD/6uT8AjaydpI24mo9ICqHJk4GKNDXgOYPtaxzNFSLfyLvapILeuL
	 f5msp/zWW5DkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105CC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327019358.28552.13317304915160060152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2d10fe6ed86b0a498c9e35101d7e56579e62a0373ffc1960e450e563d403f1
Date: Wed, 23 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753270193
