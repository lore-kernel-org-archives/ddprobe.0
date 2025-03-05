Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC86241115
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741183136; cv=none; b=GW5OcR39dbLterSKCyhWz7i+c1ihfDXoYqQXXVrw0UP9eRZAh/qRzZzSzWxAMZUWCMQNLzhCi7Yf00VqrmAKTyi3fRPnY7UMTOxMuln6JdcoElqTDT6XAOV8pt5pt2D/2IekZ7fjmgXLe8HtdQXBOFA8agsXu0RiT6wKGglHgVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741183136; c=relaxed/simple;
	bh=aLBAQjwffu1bmXi9AJodK4Oq77jnNis5FNqbA7wBVXA=;
	h=To:Subject:From:Message-Id:Date; b=A8VM5EFagjaIR2wP026PW48oKIh6xBrLb1oZ6E902LjQpsD8dKpv+0OT00rkle5D2UOnsUSZOIsqjXXSnVfqU1NmNbSQDaGIKMD9wu+Cq2b3DyWIOXtEYtq2JdSNLteAZFIRRJd7tcXJtD6PSlTDKfsKcpjUpK1K9nE3NhafFY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq3002aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq3002aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD286C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741183133;
	bh=aLBAQjwffu1bmXi9AJodK4Oq77jnNis5FNqbA7wBVXA=;
	h=To:Subject:From:Date:From;
	b=mq3002aaAtijWngRkKCAaV4ume9UwQ8GCibqPA0bGysws2tXRPJXlqvOcnDa25wjN
	 dHP/MIO4NY3MS6RdAUB3rwTqVk/5RHkW4srZbyIXPWETgKqWeTjVZaafRo2DHX+k/t
	 opQ1+GtN9Dq9aeJpjBaL1AC8HVx0u/F7GhmdS0mqbX8rIPN6dHl8L8j4wfq6ips5Ms
	 rl5Wr0j7O2eBC+dvo3iWuFlqlYsLQUJUy3l+U6tmv2rD526rpxVosfdezXfl3BYVUd
	 Ds53V5F3lfLBL4tRraXLG3L4mrk7rHIF7MGjBzTB9Fs8Zw0p2sAvygTY/erqTFuHM3
	 A1JE2u7vpLomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC70C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174118313362.20045.15888982504512573095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b23f648bf6ad35f7e6bf54ea2360b69898dfff1defcb6ca3785a99901565cf
Date: Wed, 05 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741183133
