Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DEF2E8897
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788625234; cv=none; b=cWzoxegSPhxETQZWj6woOj6mbnbxVD1qz0KJxFvwjJrDoPj1xvH3due9m4HsrcCyC/RDeafCGotl1E1SBVPNNx5kjEczjsd11SYJjxH//ZrNUSE/gw6WbYCyzp6tO28BO/7Y/R8MO2gUjFXL/X8QcmHd5c74aEDXqBva3OvzxCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788625234; c=relaxed/simple;
	bh=kvkeZRCD42fkrDuWZMmGDxgEohmKVXMgTq3EvGoay9c=;
	h=To:Subject:From:Message-Id:Date; b=deUKMMYc7d3oJ9WwP5aqBXDSANPhW3rKwZffeJdF16kQw8Naj9OF62rLcNJrufVQRzeLrPdmez0vYI4gx7uok9lXm6oTQO/HI1RGpSPKDnlCre7fmHlrmIewuuMR2Zc/rMNv4/j07OWjpnRMzmN7u7HAAICciF0sSAhIbFLamcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+MuO/y4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+MuO/y4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB29C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788625233;
	bh=kvkeZRCD42fkrDuWZMmGDxgEohmKVXMgTq3EvGoay9c=;
	h=To:Subject:From:Date:From;
	b=E+MuO/y4lcR+Uq1Nf65bnkrE/PqytFGX6nGQwnRGLEVKqNL2fU/AqhAg73Wju7wEO
	 0Er0rTMwZNFwAGRbD68BzrpWTFOCC1RXSRAJFUmlH+HDiWT3ruGPAtkgCOKEo03Fei
	 zsh+Np9R+/Re8eK044RZvkT3OQA8xitoTrzSjx12Qt2ydFqe86kFhFCz2oofbrFtKs
	 BhI2hBH+OobD8Sugo6fTulGwBr8ELTGkcZ8a6FGWHtf2lTvgojgpFzOPKXvpMwJJdS
	 n/7IMkRde0Qbhuz+QHNNPcvVOpKDQKswuo2oBUXS4rQX4cRHFTiIMRdn/cCCkLHRy5
	 D/toLQG3nh7Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA337C624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862523368.19902.2488020584782044095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca473730655fec72e80c9fa28c01e7928982c7774b9adc67e565af5fb9a47cb9
Date: Sat, 05 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788625233
