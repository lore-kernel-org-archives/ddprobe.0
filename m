Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F091624C5
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774405494; cv=none; b=O/3OxI98SAq228YZRySG2+gjvM7D4qd+YLFkmGCEzQFgLXcSDBfingPLbDQPs5+ZHb810wtQncD7SOevbfbehFecFBLEQ7OzZvOQVCHTCARTkW/UGP0pgKqnp2mAyoeWHBEZXug0MUrTdTWchuauK5eilc5eqbgO4nf6D1DVrpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774405494; c=relaxed/simple;
	bh=G5gnWiSYn1u52BATASENtB26KKA9MpSyWgVtNGeA0XA=;
	h=To:Subject:From:Message-Id:Date; b=buh3Fp+HeXbd3gU7Xwi14lFDZumxTSxAFOZdv8zbAbcegq0OAVgMKskhe8CtxvwLtmmotl+TkGvDVldfZCxNUzhaIoxORgKsHFitlr6BclTQvr7/2gstP1F09r0qpvZ62l1vu84I78Hf0A/k4hGmkWvG7Xeh0VxF1Y5iRh+zx7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAZ/OefQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAZ/OefQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD2C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774405493;
	bh=G5gnWiSYn1u52BATASENtB26KKA9MpSyWgVtNGeA0XA=;
	h=To:Subject:From:Date:From;
	b=oAZ/OefQGM88Os2ITV37ylGfcfvAy0ms+07S5JkO6VzsjmsvAEcs9VVpl35//uttK
	 BeVa9XPFADH6dZhVHL05nYd6OR0dE1J9Klx/Mh2Nayakf5ChOaLDDgRyXpMNsoGYOk
	 JmFbx/w2zeOSRHlzhcf9j99PqUrmo+dQzbq4bictiAEJ4W8GWJnXTLbdYG9MH1mTtX
	 TGYzFxLKPB1gz9B1Wz1hvSx2TfSTT3CSW7EYxPG+n6T/yEp+246WW7HU3uaAOqkQ0O
	 pSjDI01S+LX8jqitsN5Omx549YGFCJIOmX7KCtF/MmZHQWQ3hh8ECwDdrX3MMhcymv
	 3ZuWDI9CjfH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94227103A99A
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440549359.14771.3625533331800620054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aceb9217114263e944ad4fb20c5c5427ee132c4cdc88089822be23119199904e
Date: Wed, 25 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774405493
