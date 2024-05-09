Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F0B13BC0B
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715217143; cv=none; b=Pa1yJJMkGmSARQ+oCOESIiq9gxQElOpk86CXcXyH1MSFsI/SKOBPXspE/NxrQMVIUfXwn10F6egfa4YOz1JSQGMGTf5XPWS16OBZQDHs7/pVSoEW4U5rZ0p6Yt6qsvOBf6DdLnbaDgHuhLGPqrHWQu+mfXHBHmZIbRt5aT+Xrqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715217143; c=relaxed/simple;
	bh=fuEiJiAJ9dQxks0z+JjSWIxkVxVjBKAPIXQJIbYKrxU=;
	h=To:Subject:From:Message-Id:Date; b=jl1M/4wnwU3Aec5Sk7lec2mreE7JOC1oEfLDP0ZDXhPpFshbigXnmQWFARERvxCG7WZxFx7nR/etjWTrOk2FWBzqxMWRMs5VJ4uitNR40RLmPYifd+fTTO6ECvWOGpVQ6sBSdxTXoTBfLiQ+vFe/l9gGRUP3NUfD8KsDJtWNSHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK2oF+Mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK2oF+Mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E92C113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715217142;
	bh=fuEiJiAJ9dQxks0z+JjSWIxkVxVjBKAPIXQJIbYKrxU=;
	h=To:Subject:From:Date:From;
	b=sK2oF+MxFGehg5MT7Hs0e+ZGESpmFLbDf1MRuSooscLGVrV6VStBUYPJ0aBETr3Aj
	 CrBa/aTatCpkp+0xSPcl29NNtN0LJxOTb/wC488UGZRTyKazPEXz0s7P58gFwo3Oe9
	 otIx1kBNQo5oWaydlUNbLIkV1NDqRU8Bx9tW+wF2A1riY8W1XfGrK7BhiBDORAFZIW
	 9uPTbg7UlaOVLUhiJXETKpL3lCA9N3ayvE+/n7uIzJP9+AIpZwOYmHJfyNXQ8fHWpA
	 d5cjRkuscvs5e4yIS0uNMjOOowlm2Waw9rp1CI6nnCVdpt4IR/euCQAKmZx3rU0py9
	 ZTum07B8YWGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4819C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521714279.6292.8044579860897043753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c3a77e1f0c719718b10cb901c31776b583fbc2735861caaa1c40634daf8c40
Date: Thu, 09 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715217142
