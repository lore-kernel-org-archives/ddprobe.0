Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B03C0A13
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783667314; cv=none; b=gmEOI427/S9xS4IY4P4Kk3IdVJd6BQh4t64gOaio3tOtGx4WPm0cTdJ9rBR64yt/LgkDl38CmpuhQ7c9ZkSQnsqZfXb/sGo1O6qALWC1qb0nbt9wHsxNE+gGNCs+cA+yoV+RKLPbGp7sF0R/rTiO5pIZ4XZpwQkyaBIwFfPnAm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783667314; c=relaxed/simple;
	bh=rEVMBKps3Y1FnSbDwlXO2TLk5pObOYkp/hDG+1dwKDg=;
	h=To:Subject:From:Message-Id:Date; b=ZKsHdyfxnTMc0k7PaYpNPiBcW4mp8UTtHZvmf4QIQrd86GBBbSGGx9QoO4jbYkjT4EFkb4+2xKp16NDafR4X3xjlihbMRY722D5HZk7okxqjcwE8krMrOOR5Fp2/AydkPif1EM5kJYIMBDdb5MNyi8fXVN7TchIyHcTarh7qyKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aL8AQZ33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aL8AQZ33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8529C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783667313;
	bh=rEVMBKps3Y1FnSbDwlXO2TLk5pObOYkp/hDG+1dwKDg=;
	h=To:Subject:From:Date:From;
	b=aL8AQZ33TR0Cp3lMH0yL5t488Si3GUfFw5wOmHZcxQBZyHeQPjnjZz1mHiOX9HBOL
	 c+e18PSjD51GjLMnX6RyA/fVpAdk97fUUN4McktNPzx+NJAfhc6lq2x9mpyaOzs2aO
	 4XoubImub7A469QBaE2K8IoDspCU8fu9D4wZ/p9aHmqaIaPENHrxbRfTTsleUsabSu
	 QW42e3F2NSUQi/yiW+9qQC5ngykB6G7NV+AZxZlxHXeEJV0bP/H6wEbW6QuJHYU0M4
	 y8rsfXpZJf1PTBKnrxWQkSL+FkejupWqwi58f8s1QAmCJ6DDY530mjE4d4e4hSYqy7
	 2fRzE+hSvvm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A98C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366731368.20639.86100937232928042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fd504a18c63997ae869c0003b05e942646c840b6019987bb24ad5df718a807
Date: Fri, 10 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783667313
