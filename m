Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1607A2D7BF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776592654; cv=none; b=RZkMDjJhxuSlxrPpMx4e7Ejga9NLRk8/M1gaA1QES6sML/dpu3fzCfu62wGG+OKflMKntpqldxLSwgUPzKyHHAsPkfSq7LstQRGlAuvPGOrse85492Mo8J7tnY4t2ftYXPoc542wSuByBsnkrmbA62WaWTRYsXSnGVUzLqIh8n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776592654; c=relaxed/simple;
	bh=P0oh5zlTM/e8fSSg1nZEK7RkOJlkfd65GrXBFaL0kcc=;
	h=To:Subject:From:Message-Id:Date; b=o474qLJ8QuReCoNFbdUc3iFw3HlmZ4mXO45LeaTlcd6iPkN5602/bUrzi6x4BH207xs2S9UPjGx6K8Oh1Bt1Bl7vqv3S9LxKrixcX4LS+r3Ixgv/+lA8I5/nKG9H2YD1lhWnL5z1tiVdCNDa0ABGiR/t/KUltRuQyDLddqq6HG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2VLDDqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2VLDDqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE22BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776592653;
	bh=P0oh5zlTM/e8fSSg1nZEK7RkOJlkfd65GrXBFaL0kcc=;
	h=To:Subject:From:Date:From;
	b=X2VLDDqIG6MXMWFpxzWRJcWTF2PZgvd62crRGF1/KqXwBf/+jWO/wlEM/vPCv+Lm5
	 vg97ctj3dDGi+TraHC0uUtiUn4CV/0puZSh+lhA2T49pLVd3aHTCNNLlH8TPDrrOCk
	 Yu/bUKdrkQFw4jTQHsiwGbE6zJ3NCKRc9gzM64707XyvQKuC3Ap0jI6wvHP1molgO3
	 peXvYocQSBEOy37dLkufdHNjDagxTy0rtbfgodDqGJI6RSwYD2gv2/nmDjQIICrlps
	 JRrQR/vNRpynpmIP6F1mAUsZ2REEirhvz9GZih7dQMYthCRtF7ZhijPSArdHKaBDgX
	 k2wUwWXn9oZBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF1EA7195
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659265368.18722.7467035311170042202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472cb667abc008a3140c1516398603fc8ca84d57a8b32657212f1dd72edd7115
Date: Sun, 19 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776592653
