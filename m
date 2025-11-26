Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDF92E6CA8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764176574; cv=none; b=JZT/Xnr50CHiagTTo4gJEBSJXp6+YbahLRUvU2UahFFBJhRp4xlZkHppPFTAL6GLkFM2nN3ZfbTZF1bd8VqkUoUbaEyS75qQxGiY73J65MyWnA3tESPctunWIL7/BDuvswHMUUhU665vaXTN+6YR6sQw4qXFvw8psTugwXdTD4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764176574; c=relaxed/simple;
	bh=A5LK0EdJaVJ6yvWBc7104tLOFvrDndOSv7IvpFVJCH8=;
	h=To:Subject:From:Message-Id:Date; b=RxDUAyIctHwXgNxMEv8Pq1VEm0VRmGRXG2BgIu54MzWc9Hzo3iP+Jd6dZ3UJ+kkrrrMYBPqgECQYK5oktlI2638IxEA4b/ufJGGkTuf1mkdConDypV2rPV66wUZ8UahAjDXLSu2PJ6IaO7Lfryv0oWAbgFB/V4CtlETpLy6EgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nn2I5oLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nn2I5oLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F38C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764176573;
	bh=A5LK0EdJaVJ6yvWBc7104tLOFvrDndOSv7IvpFVJCH8=;
	h=To:Subject:From:Date:From;
	b=nn2I5oLV2rTfD/aJdc/jaK4bsoEVUAUgJdNLq67n7Hq5XJSc70n3CItGDDlp/nHb6
	 aTMZ2PFQrfa94U353aNTnhzWWJY12Vn/dbqiPbJCkcrg0QkRGSqu8OZ2omHr9/nSWZ
	 RHeFsN9ENd/bR/jzTSsx3tYOhK3C7FFhBCcy2iPT12SbigHyQt1dGDw3aY6+nhfjiL
	 xumPpyaAFStRUj1Wz9wvZuva1xKpfD09VFLckFzkv45A8ZwkR3oUsmJp58ChbV60/n
	 i+HQvir6fBVNrTL2246/OtM2z892XfJV9nms6YSxbXWs4sd6N2dIptsImnnT96auvI
	 +VqAf9ePrPS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1CD11186
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417657358.8255.3988684874414633607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98393d56b059f1b58e14199a15491e063ad28e873b7497dda450f1507de3f82
Date: Wed, 26 Nov 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764176573
