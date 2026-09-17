Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419C74DA9B0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789665634; cv=none; b=AoFT0j8Pf7UWg86s4p1t3jcEu7Lxwl8GoMz6Tuf+ywRXyH04ITSEpJFl85v9kgWfTxxlAQ6sIywcQXYFjF8H/cqD6kCwtHx09raYpvTAWZfUMeFK307RZQSJ7ztK+BjAeCGzFSJe0FscU6MFVg+jJidEAsyQ+JOmYyDR988sM54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789665634; c=relaxed/simple;
	bh=roZ1/gIj5sW+/VUsyZc7JF6WdrLBL+jAQ6wjy3Fxrpc=;
	h=To:Subject:From:Message-Id:Date; b=BncqBaJyH3joiIKObpN1zbYYW28qa9PMJoB02i5On4w6RO1hlXj0T/OFIvN5PB/TX0GTTgk+Q+0N1tnDIpgkDzHAKCO/7mxwFtrx46ZGuXqoqDYnUWEovwkY15HaS/hpR9NR7GWqnDfno8Rp4dfhQ5pQprzmjFijCmO9dd/k7sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWEBGGoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWEBGGoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09A8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789665633;
	bh=roZ1/gIj5sW+/VUsyZc7JF6WdrLBL+jAQ6wjy3Fxrpc=;
	h=To:Subject:From:Date:From;
	b=GWEBGGoQgEHtv3QJRRpz+Pcqh2tFoSf0P1glJYkZsTYNgQ8IdzSr9R5DZGWVWOQPY
	 pd7+DNKLOjKyLt1SdQB8zYaIK5dkNSRRXFd/3zwJqa1AZn4FKZcDKFz4CyOeU9jZen
	 9UoR0QZpDbEU2Z8DfC6qMSEJivJHeIWq+CMM3chuBLX2MrmI/P7E6/ap7g1e1Pn1xk
	 AvcKLydCHj89h8xZWH6Lk2WbT8aGf3SVr8mRUiJE3LN/tSK9eXHgrG/uPfK4PjGoZn
	 cxx6nirGTyPNewcEkhev82o+NI9ZL7+7EohhZ2lim2LxsQuSLoE1q5Vs5+rnFq6Ngi
	 Y9WAr1RVac/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7D6C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966563369.21505.18127618538807520275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9921c97649588f2063bf8ca22d8f586510b6ddfc5a8d30d79fd6b10bddba9bfd
Date: Thu, 17 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789665633
