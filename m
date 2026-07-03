Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB70373BEE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783058314; cv=none; b=ZD/94VE4W1mrbkA1Nzd6sjRGUB3yMN9uV4neX5AZVJEM/A1/pRQXxpsBcpzqFv05c6IqEXAwnP+RwuKt5pavTx103PKga3pQ4jL6KNOW2k2aSdGHNTb2dzmKcwdyuwPK/wZTf3cWRutkh7Rfw7BI+4jiQ5k4++wVH0/eezjuWao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783058314; c=relaxed/simple;
	bh=DWHzpQKN3ML4p/XQjYGs8zwt0dR5fFpBYe86mJrmp5Q=;
	h=To:Subject:From:Message-Id:Date; b=Qf8Vt2eDz6S4AqCPFfY2H+6eLI16XJUXbxJns3IS3LMb1/zVe8KEAQnVLebxbsvPZc9Seiqg5rETi+QlGHZFvEn4iAWWITgCg093h7w3x8eXCAF2Y1N6wUKWMML8qWj3cyRIFrjuFMDNGEuIKv6L6im39ZAUP374xuqNyMq/doY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdGoE4uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdGoE4uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFBBC2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783058313;
	bh=DWHzpQKN3ML4p/XQjYGs8zwt0dR5fFpBYe86mJrmp5Q=;
	h=To:Subject:From:Date:From;
	b=IdGoE4uEkdZ4ehtdKmfl0gQ5G62EmQ61F7lcUU+vl/ZDlxKk2rni63cMd7GB7JFDP
	 aFjg2CijMT8QOd0mhHuhW3P9dJ60DYf7y5jTdbRL4j3xeWXitve+UNY2fl1jOjGP9V
	 FehJPr4M06DqpRrHzfw8nwwEIEJ/j4JAFWReJEwr7KU0Ay01fdQ/lPplfggE3EC3Ol
	 LQPUgGqvRW3wHY9Ivmrg2V1Qt2JSkLtxlna+NkzL6jj+luDvooT98kCWhJUO2QHkph
	 vXnmf3o2XfPcd0N4cIzshYvKkGP+X2BMAy402+LhxA6XIR2RS1a/6047XqltKeWlXv
	 yZdSvACh82lRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAACBC43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305831369.9955.6615017057345640447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c0a73a233fffef8e576b08d99de7913cbc2371457472e42486df5f395596ae
Date: Fri, 03 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783058313
