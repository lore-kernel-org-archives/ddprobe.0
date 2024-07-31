Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5D949625
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722467154; cv=none; b=F0Poe2g1iH0PxQlYNgSagBPgYuPHZ3M7n+QXdNJuUp3n1Fk/PaQ1oV783pjqKzD26VGyDHek4ghXdoHTfIr/bHK37eB3zh4MbVZ96QL4SE93YGOQUZWZJFkwh5kGt/RwXTZvoNgCWE0MGd9vbrU+YxJ73hZ0V/qWZc2QGcZ6kuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722467154; c=relaxed/simple;
	bh=vVmL37fe1EBz8Y4+XPxTfg2Jpzv+XA8DRVp6OyjirN8=;
	h=To:Subject:From:Message-Id:Date; b=nnwHX4Odh6hJu7liqgYLxrAuPI9i77XjYEFMGfuBV4GmOlTMTODZQmyVkz5AI5CMUTz7tpx/Ii3zRGrs64tYTur73U7WP8JPWq9+sUU5hb7uoXaKhwr9YklazmHwZkFQtRlBfZ6BdQ1tNCCPyzlP0EF1LyP4DtPXhFdYtkH1NP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5m4s1Cw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5m4s1Cw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59E9C32786
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722467153;
	bh=vVmL37fe1EBz8Y4+XPxTfg2Jpzv+XA8DRVp6OyjirN8=;
	h=To:Subject:From:Date:From;
	b=D5m4s1Cw5vvsenwNrXb9PjUqRRu/4GlmzFIuXydM4L9ofFOL9/obvZAxtXRH1yPFc
	 R4SZZ4soO1MX6JGGayyejrGpnCkqVpz0slHJJm1xU36ZzrmU7jdC6NhTcoavzfbfMy
	 hT/YYkerT1t9C6zQ1Ft2zwtGqL5QJF8Fdi8S8uOQBWOZOZgw0W5CYlv1b9vyn3ReTX
	 +USApYBAntGAckdth/Y+lJJQLzyJeF6xv5nMMsg8P1iYN5R5KJsmBEx3lViHm3FEUT
	 QgDJTeZz1NoKNfGE/nq6dNa6h2C9DvPv9RbAJfyGzeG6wRoBXkbIyOWutxvKK4bcBH
	 +maYMIOFcxS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F935C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246715364.6536.12770414005202064511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19fd85a69d6320f88275f9f7d7825ae4a5cf7a8eaeda8fec891c9a7f2942b8dd
Date: Wed, 31 Jul 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722467153
