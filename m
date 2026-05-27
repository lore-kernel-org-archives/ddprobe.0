Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5C327A10F
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779849154; cv=none; b=WEhWTx5aeSjR2jPxSellJwR51pTzuU0G6B+wZ2p4NRUsLSlHw+3q9gzTbG5Oebx0TfPS0Gc5uwuG1LhtJN75Mvlq1j83Ru4Q8gzOgqqihwRgYJoXRDYBtglPp/A27dRT7J89qRPD02GyzNGOvd2yCt4+MUZ0cvt38WDDbzG8CXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779849154; c=relaxed/simple;
	bh=nTxoTBbWp8WAxos7mErZO7hhxQnrzjMz20kfNjSAD/k=;
	h=To:Subject:From:Message-Id:Date; b=M7Bj7fN7aQqN6E7DMCjQzLtIVBtp2LdP64Es+Eg3n+H6BeMo5t3jnS1NIH//PMeZ3eeaNqfHCLemoi7O0baxnwP1H53FsUr/oVuE5x2Mygz/LnG9VLIZb1TF30/VjzL6ZDmMAsSpjmIb3IY/+3/58G7IzyNCtKTV7n6LFkc71Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3E45l4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3E45l4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1DCC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779849153;
	bh=nTxoTBbWp8WAxos7mErZO7hhxQnrzjMz20kfNjSAD/k=;
	h=To:Subject:From:Date:From;
	b=K3E45l4Z2RhkNzEX3Z/dyFydLo8TZNmxJ8ktjl0U7r7XLb9Go5mNA+SxP0Qnp/b+i
	 VAR7aBUPcrU7XrlMNDJyFzi2hG4M4AI5jYtnnMndPCFeUanATah/GWkt86/KsvSZK0
	 oBUdUmPuP2wV4PAZe0pwqOcyf63nprsluA+mbYorrYhXkQS18Pp5sqXkxxjRfn+Duc
	 rYqsU5Ek73YsJzTEmRdgIqspN40tJIquWZH3MX6sA7sMrLrkL7WfppylxEjNzJBUK7
	 HZ1ElhuZxOphhcw9q7V4IXf1hZ38FiDaNIzQryiXd50VCb1kJSqtG9a0EY5t00tx73
	 bQg/Z2X8HR8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B147BCD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984915371.12841.14825702812816999270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56db598e7d838a4321a1c46cde1ce4fb467e701f0e5f84e67dd059bc1735e7e6
Date: Wed, 27 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779849153
