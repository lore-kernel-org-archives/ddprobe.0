Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634FB1DDC9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717645043; cv=none; b=Py/Ade1Y6mHrXYHOVux3A3hmNCl4qwd6tt+ET/gwu2gBKDqnlUuOXr618TgHds8vNjT6N61zH7BmQ7JIL6VLFZ0fvoI+aNGFxl7sXLvo8TypRXb2dKoG4+xidZIPp+dy3UcbINnHevmKxpX7O/mElVXjOP2Rq2YGF7P4H58lN4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717645043; c=relaxed/simple;
	bh=Y4W6iDH3QCQCScrjPGYlq7vql1KFQYPnQopP5Y6k23Q=;
	h=To:Subject:From:Message-Id:Date; b=cnkikD8rFEJqvYNU4K7esbWnYd4SRI+oCoIg2Rmv7VyWHjXAlyhE7FyZpyXIEflB3J+9hn6XIXm3mAJbFWqmoRv5j0xfLLkCfMVYGI5vC7IQyZ+lTt6LaUzs8X6XhgBB5fvlTwUAhIRxUdYKVgnqlCADu2MD17Sid+I5b1hD6zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAZ8vq5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAZ8vq5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7868C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717645042;
	bh=Y4W6iDH3QCQCScrjPGYlq7vql1KFQYPnQopP5Y6k23Q=;
	h=To:Subject:From:Date:From;
	b=nAZ8vq5q7nHIqb25T8JC4NstIVaTFMGut3EBOuCmF4XhufKMRR9FclRw//Z7wDerv
	 nqmZvRCneoiifXgrPiUwbmt9sDHyMG17N2hOFxUn7jiSAr5uzulla96FvnLiJxossk
	 qpdVMFkaecIF1cB8modelMB7XjgQ4aGEKZQnH8MNsyfGQZM+skKTmInU+tRLKx56LZ
	 cCbrwF8sdEg5M57InudTGT3gCax4242uy0HXriLXhStEp5HpMUqNkKqrQDeWxxNTOh
	 H6X5hSobGpxhJLyAs9F4/1PPxHlj29yWr/5iP6hLqMmlR883xQ1M1Vx6rXtK4WyPBH
	 pjIl89pTeykJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAE1C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764504276.1556.12250193269713391081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6463c4651306ec70f30c4a2c6741d24cc689836cf58c49fc1118321c6bea79d
Date: Thu, 06 Jun 2024 03:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717645042
