Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446917A2EA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749707994; cv=none; b=bhfWsExclTR1QtHmgHJZMxzrPGzzSMgXYXklwuYU6Me0W411wk8MENnB61KyREd29gPZRt/n2gFNhSv71wlwXy2vMh7NSAPzW6VcpD9qSf6g6966MZ+ojAjdVy+yMXPzeGWQTKfy7Nkn0Y2H+NDz4NpGvL6qEzOOZxG1A6MB/QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749707994; c=relaxed/simple;
	bh=ZiLWEOLeTpF6BeNkWgaB1+WbCe/rhwwlq4dUSfXT50c=;
	h=To:Subject:From:Message-Id:Date; b=tYiv7bxsxsPZsgHsJbLXcJX8kWp2n5eiNeaa4qb80/5saZYDDmLb7VOrfxIxZ2Kczb79qSt/bciX98zuXwRNcJ4gD4zlcvG1CzkM2tJZwsY7LbfuxOw9JK5ZdczcqcPRq/BBV5jfyFd0Pk2SI/vESs3ZgURyULZn4u05ErAZxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUK8AgMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUK8AgMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7651C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749707993;
	bh=ZiLWEOLeTpF6BeNkWgaB1+WbCe/rhwwlq4dUSfXT50c=;
	h=To:Subject:From:Date:From;
	b=OUK8AgMqriBWSoCfAH15PaKojOAMHq1H+YdX8j2LBNFyV89+73aUkmiA/Gk0P6V8X
	 pcJtAEste7bpbO80BYiYbkNKVLHG0R161OoizTzw4T1My4zeGRUBBpDFALruUhfWF3
	 9laRs+v+VHZcdrnFE1kxMEhtTx7YlllZKv7CEyEp6GlqFZI1G4RavhnsNuxA0CtZnx
	 VLhoF8Kwl8hk8urc8v+sxzHCKIOaUaw3woq+A2dPLwVM7rev4Iv09PsNlZFUpgMvBZ
	 4L6Yyxpce76QWuwbacJjUJBPN8+u3sn4oLyA9bobAtaL/Dr8ixWkTPsQ0qdcdbyegu
	 +W/o/qWvW2u5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CEC7113E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970799358.6837.15200069349474770307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bce34b294dc8315d0e9820f3dbbf5f2b64de1468632b1b2bc52486f87493027
Date: Thu, 12 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749707993
