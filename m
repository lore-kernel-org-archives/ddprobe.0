Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1975C19DF9A
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759078795; cv=none; b=cfjB1YEZQX5DJuEjtd4tZOZ2NTNFtkgqYx/fIQgjTFJSyPRLcJGJxC/XojL9I1j/SnUgp5q8Kc4sDMZSbZqMv7I0f0A0GNXQsaD8xmK823CqxAhORiQTG8yHl4tUTCIxZT/a319FdIgt/H6cdhPNtIcq4LJRIyGzgr2FHsZkNzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759078795; c=relaxed/simple;
	bh=EeRiz8KIMfv5TDj9bGy81F3YIFJQbtCNS9S8/cTqWKM=;
	h=To:Subject:From:Message-Id:Date; b=LtHO+jrPj5KL2kZRTfLDvww/h7GgeYEv/jjsVl+ir77kV7qnNnuZBAf7rstEbETjXFP0ZHik9MjC9GPv4PPNOOpt77gXppIY7i9LYATiiqL6o1J2O4BbPOJsiIS+5IpCP6JcqktcygJUQCsq08AAFTAGHuAQcJFyA0b/ImNLjEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZY4jcdfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZY4jcdfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF8EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759078793;
	bh=EeRiz8KIMfv5TDj9bGy81F3YIFJQbtCNS9S8/cTqWKM=;
	h=To:Subject:From:Date:From;
	b=ZY4jcdfzqq51LlNHCb2SO8DOXBQaGVEcKlsnH2p8WG0T0YV7A+99Ggira+g2nKtpa
	 1mWZNwE09z7nrEzXxypwyyIhJaRwD7TUg4O37nOFA/QQ5EB+ETtS4eyhoc97mX/1Tr
	 l2ybH1VkjZI8acx2l9ZRHnVX41UcPisR48B5HhcOi6NE78uZ8Dv3/DM6HpshUl9k24
	 AhV6590xonMWVGjSKJWRB+nGEHJVsUwy/ODuGouYr6yd6LfBIwzAQRiGcpbCxNTTL8
	 fvItqbxPXe3hA06/SUs8PAr6E3bc5XpdDmvwUPslGW0qW6QeYOEUwye7fNqBw9Ysln
	 aJ5cgQA+PyN4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC4CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175907879358.13800.6014327925318399188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e4f7855b215b3d953d455f09d65aa61682175a919b03056c648f4d24c2e4d5
Date: Sun, 28 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759078793
