Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227B822B5A5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771643094; cv=none; b=opWl5KWiDV2xpt7qJEKfkoSxE+i2ju+Qt4dxXlb+kZ5MK7Z9ZGDYH3bNT9/J4kMC8E1VcK2PiiWW2BUSud0h35yC/El0o1Bblq6yqFiYsYzvGsFaBVkBIhgBOC7HgE5KfXLoDo6XQTDJ9tl2ajKyR9TPXJw5IPHGEl51vQML64o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771643094; c=relaxed/simple;
	bh=duE0EjD/HK4Y9mhpWRvNyfhGz4S/gIkzVZE7/uNbdOQ=;
	h=To:Subject:From:Message-Id:Date; b=bcLs+hh1R1YiDOw8+eW2uiiGin8oNCcYFQPoXc8y/AyFxxN2WW+GoxCM2ic+PetxOAkicDQ1mxkZkIZVc5aFBrntH6+8PVJD+Pc3BzJ1B/4cViZcf5srn+ueP34UNw5I4N2plIvBIKD/b6yif4YK4TOMZq3WkmM1m+s+i3JBivA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siyFmiVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siyFmiVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7328C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771643093;
	bh=duE0EjD/HK4Y9mhpWRvNyfhGz4S/gIkzVZE7/uNbdOQ=;
	h=To:Subject:From:Date:From;
	b=siyFmiVQyONoUPRe7QkZ2Uc+IaKGlbLlWnlvKOHICWgS/bgKs55RD4XojdFd/DrFE
	 WcNxs4B0j+JgXaLbWrRMLaxPYXYRUCObn7IOU/tqhaT04oseuV7WipXduwD8OPqX5+
	 gKSQ+v40ACLxgfAuvp7X/wS3kaW+SxmfogNIda11Qu+8acbZ1fnTYEQ//q8GqeQ4Qe
	 QE+8ddHWoecvRUh5HM0evbV3A1K6Zd7fXH28h41U/VHpki6G3AwUYsJvZWwJAG8wQ7
	 MupvydaRq1O89v7itQLQEFp0xjbl6wnvaNskCw5QEMQTU26FmQOl8fDdbQSZa0xGHC
	 d+SMyxfmj16MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D17C5DF6B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164309358.15238.13383680206170552498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2038ae2e6e28e6da282e7740bb41d91089683826e5c24d1da66ddbdce9b7d2
Date: Sat, 21 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771643093
