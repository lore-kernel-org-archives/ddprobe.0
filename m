Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3CE3233
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713789023; cv=none; b=fpV9IvawnA5xSIRc8VGWPnQKoZvVc6TsT365v6c/FrbOWiqT92WuDTaWJQ9j3ukfU4/NW0lC85M7T5ns9YYEbCBgHSDt9XvyxbLjuBPtxDREIQDGptCDtxw/MfAuljJT3pTr3q+IHlybwmaVXVjoMxbo+rNz0VEXlGKfChITd5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713789023; c=relaxed/simple;
	bh=BtmkC0n+iJKXoSv1Oa8AdWVLEQkbVL9Ihs0Go8T47ts=;
	h=To:Subject:From:Message-Id:Date; b=JkRzev/pJmAZX/cCk2ue6KqrtT8iS4mTcVuPRzGMazvHkOl2dvTuWr5FUqUnPRMw0o2PN0m4zTiRj5kaAOrpjeAS3NBUMq/EVkNb9Fnd1nNGIPLQHc70eG7sHZaKxLqI0i+ZGphmwbqv7ABCwZXMLm1YiU6jX/6DqHCJsfVW6G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZI1ea4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZI1ea4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BFCC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713789022;
	bh=BtmkC0n+iJKXoSv1Oa8AdWVLEQkbVL9Ihs0Go8T47ts=;
	h=To:Subject:From:Date:From;
	b=oZI1ea4PD7kaNzpdmr0kDOFAx8FWuRPaSrCmji95anNgJGhm4a6+sS5pOCnA7J78h
	 aBZel0Ua+K8WaPshtA/yMgYtSwOzCuzVHAHs0HojaREGryXZhC4pVogz9hjDXu7fgz
	 bxunbXKFuKPd6azMFPBlXg3YKZHiSWwjk3CKjbtV529hz8UbrTdp0DnTikeM6BI5vv
	 L4K3hQlfoMOG/BeiEgxMFB7TR5en50qDjx02pcvfNLNjFKeedl1ljVUuYefShCSWA0
	 p+bbaR5G5FfnHeJcquxt0MxgIq/CDUADajPVXaQYAFF1V+P990dNBPTBa1QBmR0Z7D
	 rXj/bwepspKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CEBC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 12:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171378902277.12895.16446848178195431356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70f6fce5d6ccba39fd3575d9d647d253ababc225610803f05f762ea19ce7a0f
Date: Mon, 22 Apr 2024 12:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713789022
