Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D2B25228C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787510434; cv=none; b=E05WX8YdnSoS9dlDQFCWS9erpBzaN9+4BzhQYZcyysOZkcw1yfrtjkK2cfVC1ETE/LpotHq0AeZBXn9CNId3kk/SppU1iSO/d2E1f+aORa4U55AdZUxnAsP2hSXDJdXWsMd58+49Je0yA0u6fkkg81hPTXv6aGLNPgpbvXpxLHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787510434; c=relaxed/simple;
	bh=0U4iqPVVXCfU/pgv1pcsm5FBt3raoAhfH86ZfqVyI14=;
	h=To:Subject:From:Message-Id:Date; b=Per7zeEu/LVJKZtEq0mZQIVAde+/WXR433t/b53TmZCMWK1fcH4rBXuEKBV4bC7IWbZHfJEADXAH7t8p0t8K6yyOJobup5vPQqDDhQdGsjrILsw53wzjulCY0JPr0gr88q1YXu2y80RntB7Sao2ILw9UerrlNEfxs7km3V8mSGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+lggBtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+lggBtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF84C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787510433;
	bh=0U4iqPVVXCfU/pgv1pcsm5FBt3raoAhfH86ZfqVyI14=;
	h=To:Subject:From:Date:From;
	b=s+lggBtChKQ/jckGm5zM9UzoBzLhYmCrG55DIFRS79+N05o3H27fWjJbExxPtefBP
	 LkypY+DTp5ppHah/z1nlUGDpxqTk5DkhFLixQvz3KU7kotn/9HGfVpEXBtCwBB3bqQ
	 CO5T4pVmQJdmjByBtbfaxD6GKbsMCiEggUcuDUUk21/dl6dBdk7F4SLIUTFbBcO01Z
	 +Vhugm/Rku2KqUbu9IdVW4edkNiDC9Th1V9WCPFDc2NGR/yPDk/jTgmfBXvQRuu+X+
	 tut0Xqme1qimSKCCt5/f+q1/m2f7r/sObPjbN9vNSimcyRtu/A/VjCWg4tC1+llRz3
	 bs+cLuFc5LwrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EAFC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751043370.8069.1512626150516333912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8107616dcb0673b3511f7fc8ec5e51ecf8f29c697912359b43787c7c5de562
Date: Sun, 23 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787510433
