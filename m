Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C284A35
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749374994; cv=none; b=ABaB3FjlSMouy20xRHbZA4upkd6fr8goZ136IMfehbTWASueBDdjd4Y0cd5z0DBAI7DDGEDJaGUYKxuLWQpiktqOhcUQpGciRthdKBWmwHC2IJm4TeyRWAKyEu/3+6m7WKDQ/0S904WIOrehebsfORo/DCuPuedNqs86L9fyQsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749374994; c=relaxed/simple;
	bh=MQr+co4kgEeanQ/0RX7x1bUpAst1otryKMbHQ/cA9I0=;
	h=To:Subject:From:Message-Id:Date; b=RxgOafDZf6lFBD7EQ4+D9/Zeaq8fK/b1VdxUzyv9f8q7OIk2SGJ+OCGrQaYPlNdxLsT5cPk/gayhxD8yv3dQJnUsQp9cTMRQFr+7sKVav0fc3cq9kgxbtXRp8bBaze3mwYPVtJSikfwGFEjgPJOvEYULi8FPSZjbHYQMdQhMcx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjfPhn26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjfPhn26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF6C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749374993;
	bh=MQr+co4kgEeanQ/0RX7x1bUpAst1otryKMbHQ/cA9I0=;
	h=To:Subject:From:Date:From;
	b=rjfPhn26E8pq0oxx18qo6ym6zOxGLugObQ+MVRNcAIYi+OtaZKFjDr4X2zJbEd/6U
	 zoLLEmsWgDfas+foCk9xT38UB/fWzpF+zNRB+8oUsAxaCRQojl3NAf3tEavt9BM9j4
	 baTwBeuSdsa6S4Pf1BYiTU3ofkI0dOsAM3oqAncCmSGLf0ryrwDzaCB7kKLSzzyG2O
	 MslMUCBnF2H3NRz/uM6+aw7FHUoIXrwNecldjNweSLAqKz0IhZMzmD2+vhs/9p0EvV
	 pyTM6v6UZAAt6oTa+krU6lb2zMYqNQtw02E/R1UQy9e2r+ufwnoHyQLc/JSLTxmipk
	 85ukFcpAKaWfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9545EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937499357.22039.3255649399518612594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d8ca9f492cbda5e127acbf52a743e17b792a0b4c2bfb2db953dfc1ecdc2288
Date: Sun, 08 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749374993
