Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936FB442B17
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788559234; cv=none; b=nRuxpgvdvp50MRVeMcZDP96YxzSBxBCgKTiNVIISquoPGOIprhrl1e/1u/al7YAT1xlzZi5X40WHRPyrsw3jNoMX9l4sBpxfvJnrjcV0MSPxYlAl6TRWXzXoo85C9rP5KDsR4/qQqHnav6Wk13XgGN3h9BanlVqEmdJkrxf+5d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788559234; c=relaxed/simple;
	bh=ATS9vh2GQxOQWxPfvADEOisZfjWN+1Zi6j4SjuaL5OY=;
	h=To:Subject:From:Message-Id:Date; b=Tnb1t7jtzCSiHdku0YddzCGiE8DCPaB647hVCFZvJz6X35cHsdxJ9ZA/8FSR9y034sdFJNIgNbch9hWvNh5fJyTwuD5A3qgkB1fsYeGfFHHVt06eq1dfFw+UwtAFAY2hVOn7CnFKXhYIJGNm/Hdfec6LeUD397Z1IF8zrvRwrRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oT5a6IHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oT5a6IHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B1EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788559233;
	bh=ATS9vh2GQxOQWxPfvADEOisZfjWN+1Zi6j4SjuaL5OY=;
	h=To:Subject:From:Date:From;
	b=oT5a6IHb5MFOnWCmy69AawIAPaeO4MR7r1F8S6RWULz+G6/8Uy/qPiVjzBTi2HiQV
	 JQCXwhE7vl+Ih42RfO7IPjrO1zrBVpuZvJpRUF5I9zBHqxWHS1VYT8f0tWF8UWtItq
	 eUWco/NdihvDb/yNtaOKS4TSOCVtGG5lLfmCC0ZVfv2VyaaR75ei0laAZ1KoWIez9R
	 KP6qw+tlwp7t1h0R5Wv8IYEwtWQvJsPX62LjZKna/mZmIh31sC0cLhrGJN+32Thnu2
	 AYKu1qysXpBuyy0R4Cb2a8GKgzNfLU+nKaln6b+RjADaPBAmkZhs2BughU4i7ZHG2z
	 3JONWxVOAL/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B844EC79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855923374.14348.9143315206939483016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8b67c5bad300947369f8f1d5da62e6675e8ff90973ffd44f3395bdf1806798
Date: Fri, 04 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788559233
