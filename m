Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2122E33E355
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777050454; cv=none; b=s/BveVUpfCUGA3Z/fLDpl/CrHR7T5aKXd2e6XD6+Or5vNEgTcsVz/rDeM729RsmkcEnjdRREuklorcMZWzT7zYySSlgaJvzdaI5EWvXzgN7k54SO9ChN6/TYEwmdR89P+vSa4XPF7f7K2ciLncEwjrtULK1v1iPjbly2p8oVhhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777050454; c=relaxed/simple;
	bh=KylS1KLYP6wQ7YvwGGC1NJc2NfQgfwSl3I+l+o753Vs=;
	h=To:Subject:From:Message-Id:Date; b=L8Vi1Tc9LLeQZGLzhhC12jkkTtw0CzpVt4TcfhO7Vxf6uhqUTWBsnIA73AWZU34ibUO8SMZsh1B1YkbjIoSFc2LuKPHKm+MNGQn2Kbc63LwM9YoPeem65BFa4+0Y6COnLDXS3pxlROuDDloPxd19CIObxw5KudrB2vx7+UxnALQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1gjNOid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1gjNOid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D94C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777050453;
	bh=KylS1KLYP6wQ7YvwGGC1NJc2NfQgfwSl3I+l+o753Vs=;
	h=To:Subject:From:Date:From;
	b=G1gjNOidpsYVURSVpcShSxlFLmywkQa2cm49+ITP9pUyMKRWCLsvjw8QqZ2GdV80z
	 Fzfr8W7hcuiyLE7Ty0onrv3hV2SvRTQ57CAgBGMwlFDQJx7dfPAmZ6+LR6V3aXL8d7
	 lVuFKk8PJoA12eAVKmSFShocZ3bqXFefijB8cGrmKBc8hEzsgPcgWe0y7GTMkldodz
	 dhAcZpX97cwwduH3ZAQ6j8st3ZDOKY+qjngFt7N4qo4375qA0sV4K2MaAPm030XYjA
	 cjLcSUxfXcRuoEqxlTOJ0kOBjxoJyUUxXZECtc9V9vG1P/ZqpRon2IoL0IBYDQ7qdD
	 OT8bwlvMXL8Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A901FFED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705045368.12214.14426663842782162543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe799a87092c52d6d4ff2ac95d93e8cbac5e0df9a8fd82677446dad33be97c5
Date: Fri, 24 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777050453
