Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58924370D61
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790346634; cv=none; b=Ng/M/Ls1C093Ucys00XytCRDjkFdcFnIfiMy22bKuAtqyQIp8Yt/sVCxxi8UFp6z/72XRJ0TG4p9QI6gucR7wVVBr30sJ6yK7UCB69ra7cHJjSL7dvbbTiOkkSEZWb5SMuJBO++POAzj0zg9RFZEwqIyVqvnV9MwckuiiKWqMo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790346634; c=relaxed/simple;
	bh=BbYQc6MJ94TXXhS/19PexPDzIBY8u1Vh3Pa2K2gDRg4=;
	h=To:Subject:From:Message-Id:Date; b=Q7xmduzLRxPLZ1eCHmO4aupZ6GBa3Ee7KEwcM5hiFWDvLI8awWGvcN6gdWkArrQg+eiSRFYugPfpn64/j8aOeCv/tq+oEpDOhZ9tolPLLP/ZVzPpB+rFROKZ9lfDf8HqVLjrhme/qpzhQgUYilukJlMYF3FQ6ubbguVW9D6DjLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKbDqEMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKbDqEMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C40C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790346633;
	bh=BbYQc6MJ94TXXhS/19PexPDzIBY8u1Vh3Pa2K2gDRg4=;
	h=To:Subject:From:Date:From;
	b=rKbDqEMhAjqjM2F6UUChXTB0xqcVQ5JtxRqPBHB6ffTGbojCwESjPga8dhgV3/ekl
	 3pmMinM5lpxfxAgd0rFf/8glMI6CpbArHI15FkW22DSgG3Zxj9X3hDJzYCMloVaolA
	 gBUy2hTc4GS6UL8Ey1Yk+icN+iiFvHfgT1MxhS73gx8BqXaaIl8KaFzYRnpoF1KLWz
	 iL0XDReO3pIwZeTarvsY7x+P3kmrTq19+bu6qY9rjjbi11TOPPpY0MbvH5/zMzrpap
	 QrluE4y9qwF7sVG8iM/ZVpVHZua/rf/8oVeoi94Dom3iUQ9WPen1JefzCsjN/X650B
	 qhC/8tnCp27hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E8FC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179034663371.15803.964968839787326102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1845a19fc5be73a28ca16e683aa8ee9009ee1c7494d6ef28082f4c7cd6546233
Date: Fri, 25 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790346633
