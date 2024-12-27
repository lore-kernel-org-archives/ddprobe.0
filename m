Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1BAF9D6
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735343754; cv=none; b=hdZWql6AIMbSX8yvV7wFSAt8qgUS9VBwW0m6CzzFiH+Awk0h9l4IB1M/+snc9WQGa5WLyAins3oTf3JDOUZxuO8OGMhzBpebTQYAVYEy2ILNAw3iNwyjmRJMezzCQsDWorkg9NUHRSddnrC28phCDsH+dfU6LuLFzu/gVfaonEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735343754; c=relaxed/simple;
	bh=z1N2E5lRGf/3W4mUWSVlbkKBFsvzGvcs3hxYxWOxgC8=;
	h=To:Subject:From:Message-Id:Date; b=FGZE9e2n3XLi3jzfTmgp6v08ywrp1wgmVdKBdrAnKbD5mW37C6Ar9kX5NfdYFhkb75xTtGNvR89ZtjJe3ZRkcF1sPvr+fYvkRgww7fODC9j/tCBBr561HpDyIhu5YgveFU/+aUHtIj+GmA0zEk+gslfccjV8dejfHHaA2qho7no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mnr6Plga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mnr6Plga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B403CC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735343753;
	bh=z1N2E5lRGf/3W4mUWSVlbkKBFsvzGvcs3hxYxWOxgC8=;
	h=To:Subject:From:Date:From;
	b=Mnr6PlgaArz/mILMnOu177jgOIiZB1XaYzU6mw4nvEAqu7pJzizFNox3lGMjarjjJ
	 L1726yCoAyE/VJyDwrl2zt2DEQjFTJHiSXAPHMMcqD1o5SHaHvZLq40I88pAZ55sVt
	 8dzL/8oqeQTNgNkXjDomY65bXmELxgnvD/6eaMOMgapHpvU0SsQuVOI5pOUTiXMTpk
	 JmHsiS6mxpOXgfO9TnBBTzEit06skLQFbHB+FIRsjqwKAtg7CVvA2YY5GRejuG6F0i
	 aBocZ+LGBWk582q6VA5MfYRirTDAKGpp/6dBJY4lkQVn+0ESfRSrB2YrRGFq+e5Qjm
	 6zux6BpTpE16w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A232CE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534375363.25033.15192599327101253795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a6b7568dabc019c04b137b8ac5ed75c0e0bc5b58d1390a12ab2a1c87d0027c
Date: Fri, 27 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735343753
