Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25115426EC9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780574674; cv=none; b=Ygw/LnVmPKfYeo3EEBPF/lkl+AqD13W6mBiC+s0i33OtoKvYuQrG4dqfFQkqWuNlrukDK7B0jZzHd0KtbaqjQ+2UY3Z+OGmRrqrLXxfnhXBrR2LRGHYzk6ZzxU5OqwNFMt3xRXCOYMo87+3TxLnvmGIWIeH1R8HxzV5mcLsoW+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780574674; c=relaxed/simple;
	bh=4Fmj0RWIkHIBRwJWRnmiU70Hxq/7+yvxAUiuAsPTDSM=;
	h=To:Subject:From:Message-Id:Date; b=k2jHtO5hts+NMFbdbET7g52ikD9JKckakUsb6Mv9iTzufhJ4DjOoKhHweaHdVlMkZtLanZ6fvZeh/noIC3DvuAA4qxcrgiU7Ait1e0UHzAgcauBi3K/ZYsu+cJksnQJk1Jg70khEFBJ12s+DR/9zAmYwnyy/CEdcTgXn9gIGd84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhJAEwVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhJAEwVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A82C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780574673;
	bh=4Fmj0RWIkHIBRwJWRnmiU70Hxq/7+yvxAUiuAsPTDSM=;
	h=To:Subject:From:Date:From;
	b=ZhJAEwVJMUTUXqOY1550DSclOSu/WRViikSMCHBZXpy/eC5WjNSDeN1eXrP/aMHgL
	 pee722p4+0sZwdOvrxZOj7sky1FMy4obUY0tW376OHaPKvNQIqXN7OqEIb1JgldeFn
	 KCPn2Eclu+eKpgXPaRrz68qNXDM8a1RoTUkCzh15f2kLffLkKH1k1qmMxAJ/Yp++E4
	 s6CJrWSJrBmCXN89amoEQE5p+9r3rDOjTtexjs9JkFdXE/tc8RNpEy+23UJtgUAI2W
	 hv8QkTc/L12Q3Wi1W78AYIjAqRjRZn+rzRSwxJIHJXdeYaRDnlIwf2XOifMZKMG7jL
	 PNCmOxX/mF2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC984CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057467369.19325.9169088271672014986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c497936e2b59368b6a737e293f0c2db9916ee181f58eb5c668b322801840b73
Date: Thu, 04 Jun 2026 12:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780574673
