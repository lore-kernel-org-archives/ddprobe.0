Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0B1243395
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739085354; cv=none; b=KbIYgKSkWJx5dm3+kSPNNF2UJHeAOI6NWo5ozCXCW2k2DQPEYFc61SU6gTk1Lj+OFpzM123BJpqb2bA9R87RHp/Qd5PIef+lAQNaXnY/yEBnm4AfaOk1IwC7+YQCyKDtC0zamu7Ib1uaJlmOxUq/Eua3o7IjbO47Sl9pR1DPl1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739085354; c=relaxed/simple;
	bh=+HX5VHTIVlwVaWitSOks4gCsOB/E8TCW08TDhoRwuhY=;
	h=To:Subject:From:Message-Id:Date; b=bICqGTU8T1/93Z4+OlNtYLK7yriv32z0lAM08TCTcghQVS+liNN+GQCmaZO1M5MTeyYn47YVsQGNWxvq6HcgcwQ+p8d4JJwdjh99ByvuhHnoFSE349jrfLAtBPn3rcXbFjakwod5ZfWo/bhv0shfLoKAt1Yj1bV0lVEgbeLIq2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtdK7WJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtdK7WJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB98BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739085353;
	bh=+HX5VHTIVlwVaWitSOks4gCsOB/E8TCW08TDhoRwuhY=;
	h=To:Subject:From:Date:From;
	b=mtdK7WJr6XPSzHyawJC74tuydpEI/fhVtZYSQZqt04qDMELRtYzf+D7gFYNy1hwx1
	 r61jf7sm+4hF8geuHtvfm89rW4zRETP6FZvtw1EItFYkCFn2C/guNE+AOyX3uPtsPU
	 uOOvT6pFc1TJDau+r3EUSDw1KwIp+ePDMraP3DrEgSgFuosn3oSioD0kBybPFHw/C6
	 TZptHxX5U9mVZfazPLACQE4rtTJJNu2maC/BC+idVyBXsVjS+xutucS4iJFNVOanMF
	 s2s3b+oZZ3FWtYyR+lRlXVGxnaHyMpGkx+FlCxByW1teYh1zJe1u8EOxUa7NnVS8PB
	 5dzVilreJ6QTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADAEC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173908535360.1835.7363522699608360634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b519388531a322d9da8cbf89b65bafd542960663835e87f24607ed7d8daedf46
Date: Sun, 09 Feb 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739085353
