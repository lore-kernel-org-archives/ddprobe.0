Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8841EDA1E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748902794; cv=none; b=opjSk/+22NlSiTd4IihExwe5Xs5VxUGQ+tMvydBx4gO7/ahitTB8LVXOXFJcdpyqeRlJ2lE1vQLJ52I6hVFpcfaJugi4AmDhAesrX1wDEucueUIdAVyMtCqMHT7129PuT94QwBbgc1y6FgcI+3cur8ulhoikYNw5IgtPPMun1SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748902794; c=relaxed/simple;
	bh=eEXuz8FL2plAs0J53W416KSD3PmTL8a2bOjM27TxVnU=;
	h=To:Subject:From:Message-Id:Date; b=rYZxt9DnRXllc2pFu8zkd14WutxKXufdgL1yzjayqN8V6BgzjfJLLteI7sDbmjwZCT+szB6IiYttPQ1lMqRntXksaSWnQZey07HHIfxLPH+p5pT+440724UBAdEEkuuFFMOBkzMs2A37hQ7cnJ2Wf4HDemzjtl4m9Gw2aSYCGhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I99TD+/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I99TD+/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6054C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748902793;
	bh=eEXuz8FL2plAs0J53W416KSD3PmTL8a2bOjM27TxVnU=;
	h=To:Subject:From:Date:From;
	b=I99TD+/k5kGqOp8TIasemjySJDV2qf9h87I5unZIM7Es0S7DsEA1+MYWBsTyvUlR8
	 NBQC+5CBFrTwAm2d5KioT9tbjYxlMQKZ9GXJtua+cGodazjcjk7yucatbpyAKX2AS6
	 cFyn27Ru4jhjqaNd7XNOF3+tUICaGMOgpqP3YZehiASDa0RZqKfuH+yM+UmRE5dM+G
	 JVbzgSJMxNrYPLTIazZ1ZuIQXiJ8G3Slt7XE7ffBV52i7ZwvI+GRu2UXqyJ+KcmAhz
	 MHNWOVjp/XJmg1dwyo5CNqfh06caRQF/9fbI0mzukdLVTOljjatIeeguokDYDan7Uq
	 w4FiZ8Rc9KzmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033AC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890279358.17737.25732568268721692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454845e4da4a03e1bfcfb06bf251eb698daaff2c915d1685278fc880d807505d
Date: Mon, 02 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748902793
