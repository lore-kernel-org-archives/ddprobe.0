Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C831CFBA
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779717154; cv=none; b=VtbVi9c3yn9o0sVb1GhMUnqbAwB/xO06WFivMiv6muJbeNA5AQNFqTf5ydrZeVGgNR6PhSASFvMHSDNqmqk0Pj8z2VWQLPK0m2Kea2HLiZHILwKt2ln3kS4GntS+0IOdc9V/r1IBFW6lmRF7kV/DUpub0R4D+bP7g+MCFGzRYoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779717154; c=relaxed/simple;
	bh=M171o4u+4e8LNNvKed8RyZOc1yCENJ11QdUQGumYGI4=;
	h=To:Subject:From:Message-Id:Date; b=o5+1rKNgXSLZu+zuCPr6fq2ZqBBPbOiSEIlncJAuu737FneGgcybYtzAmVwHQUWoNS9nG+oZEivBY6FfsNXayeK0B+04s8aZ0H711j4MkSHLGBKcsAkaXvj8rRunGkJqG+EYHvqwKWTlebXMIsWToGolbU9ezIbwITFvghyrjjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF8f5yGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF8f5yGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4A4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779717153;
	bh=M171o4u+4e8LNNvKed8RyZOc1yCENJ11QdUQGumYGI4=;
	h=To:Subject:From:Date:From;
	b=LF8f5yGqtiUm5ZF1Tdak0kwFQ0g3h8ysUzOcgAvUN5oTTJnCaX49tQ4IqQbTNW84c
	 NQksmx5l0FUcy60iqJrOq7NhNzrKwTluWCnZHr7wjd75sQ2JxSOEsPQodDUhAmuV6R
	 HGMUEwezY3+GeuXuznVr+604vk322lNNnhCMGjWLYoVWbMIB8NAL592X2n8uFWYqqB
	 nFrl3OaB08N/NdoHPUgR5bUK72+JdVmdU6ovRkyIRec4NhnjTiPTMwjbf2dfnBXR1z
	 HQkExTW3XX684Gw/AcGnvFQFFzQ0OO1RT8DPNiEN4WTFF1Q9UTKGY+Oc8Ixa91AA3K
	 I/S4DW7MjZ7oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D72CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971715372.5199.11078501785153409421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6680536e3c0e4064a3476417d5ee98854bf6f8ac3cf623f2422d9361bace86
Date: Mon, 25 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779717153
