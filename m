Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43334224239
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742464795; cv=none; b=ngA++Mfu7NlccmIwbQZ4jg6vWVSJxAInMCylJ4ii7bGDb3Pmy1LZQWBqYNVl/zEk/qfmaDuad6YGSMdZ01Yi2tamAAdEYfTS5DYusTcyTj+9tg1BktCW6lXHwjpIcFQb+p298mCNIX05wrN8APjzvIrL3R1AiRUGARO7xO5bzA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742464795; c=relaxed/simple;
	bh=6GhBM1CmCJSNl8eWFGClBIXa1Y2pqPB19w34VD//YcE=;
	h=To:Subject:From:Message-Id:Date; b=OeFC3osq5j2CZBMLwSIF9nrnYJGE3chPe1bO4QqyTzbuIybE8rjZxBpDMDcOr62g1boJ+3PNHcz5HOCBEeOY3FB3gBIBRd6IYyFi7C9yrD67wigYk7XaDLWcTyheWWaG4FP5zPml8QphMiVKttrCShyG0okOj5Dpag+NIQ33xjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLdfR+ML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLdfR+ML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B901EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742464793;
	bh=6GhBM1CmCJSNl8eWFGClBIXa1Y2pqPB19w34VD//YcE=;
	h=To:Subject:From:Date:From;
	b=TLdfR+MLsgsPTz+clEhPxgeCh0RXEq7Nud9QE7NVCXOJ1vmQ3uDFMO3amG9KtzFlg
	 QWpvaWVfRY3RVGVp88G8DToJEqppk5WfZqzRkz56hOMmEjCNDux4en8cMRRyDjtjJQ
	 K4kP4zueResP1VFMKbd2bTsdG6GgpqS8trzj81JObB7pci8XArr4mSbG95ErlgABiO
	 3NDnFjIgHYQY2VpPWDXCS69OMVVEzn7DFGkzuZ9bnli3YCyjBR8D9snZ7m4NkFR9MW
	 E5pOxh26nsreyCk6pp6jvNJAZSSxLxbYjsAg8OChBFGwM9ld2gtlm4h/bmLbE4f4zl
	 Wruh8jGXaGCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25C3C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246479364.15743.773615702575681459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c86a38f43de186a672f2f658da8d73a820022b96e56d714764370ef8db36ed9
Date: Thu, 20 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742464793
