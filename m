Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09199362136
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770994494; cv=none; b=GxpCBFS/ct0dVf/nwyTHxNBhoK/+iEG/cc2WSW+J+vDNfoIAYw0aJ4PMMOyKqjy5uTbSubl2vm2xqfRhMyoqksBlkiMEsHDxImNdxX5cyR0XcwBk9C/jZ1rFZMb5DT6naFoTB+KyORwPnPIjIscuYeXZkMdoSRoWe7+ZB/fqFwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770994494; c=relaxed/simple;
	bh=i9y+GTxep8cSFF7Us1Lieds6c01YGece8hHl4Q9Obyg=;
	h=To:Subject:From:Message-Id:Date; b=jh05Nbf7c0lAvfR0eL+0mCYslw7up43CmczLjXPHeszHPVKEVtI2AMLc6fBvo01L/G/May/qnDm4SYXWLJMiHIIi9n4MZgbpMFfnc23S3wOzE9BODPptFGjyvWtZ2Yi1kv8jSjpiR36DQkrisYR1VIyJ/6EcA9QaKkvV4Z1Jxg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbwxiOeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbwxiOeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE07CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770994493;
	bh=i9y+GTxep8cSFF7Us1Lieds6c01YGece8hHl4Q9Obyg=;
	h=To:Subject:From:Date:From;
	b=JbwxiOeAZp2FipnwSO94hnzR6QGTenzsjFBE8Qp31zo8z89ZPVOOn2ejyekjK050Q
	 H3hU+1F3/8JC0VlI8jeuO7aJeA1rwNMZb84qXqJLyVPwdAGmdhsyLPbl6ULah/VLCB
	 /lRTUm/41G/sGJWlnkyChmLmiigqe9d50PSrimyN4Zvrq84E9v8r7jtAvHWDcyKPGn
	 y00qBvuCmrk8/Fb02DQ4+AWHL0Bq0BdrGb1ycAFnKlZqY9gv3+GXDoQcbgha+ndJ2C
	 SEzHpTY9RqoXniaX5urEcOpuQ3QzVV2uw/rkICzNke6tnrrq32akNCIxF3EiVauv5r
	 B5z73aLSY8pPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD40EDF174
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099449363.18269.16461437265631659827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b65077fda26a743ef4fa834a97f741387ff0f74a10224cd765c55673b76888
Date: Fri, 13 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770994493
