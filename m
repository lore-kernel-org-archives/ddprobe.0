Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9B62594BB
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734661554; cv=none; b=ZNynlFV9fksQWrO4FW5qQJj2sYuj4OAD30ORMKap7Jub+u9zmGPXZ3VPcopfguASqSfHArw0dPbWcNrZv6PF58dkbPwBqaRtJerP+wdQK/VMhgjoCT7w91WwJ1Gj1N0fI5S2MBC34YOE41aHDqIh6VDPgNSS+wDZxPhtbAEkR8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734661554; c=relaxed/simple;
	bh=ywMRNP4LTcVXarwQiAS22cnHplP3WAWQZpGPD9q0MwI=;
	h=To:Subject:From:Message-Id:Date; b=B8Xb6mVgtOSKpyOCK60VS+HZCo1t54qzaIY5FN99K9UyjKYhCr8H4ToYv+8cjsnpYSasqq5NZ5nxenafa1V2yDaEQ2pTsgV6yDiV9frdADIxTpuuODvM5p6Mb6OtSaUfW1VuX0nzumf8++LlTxnASofbVzceoSz4dMERaURktAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1gTnlgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1gTnlgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33C0C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734661553;
	bh=ywMRNP4LTcVXarwQiAS22cnHplP3WAWQZpGPD9q0MwI=;
	h=To:Subject:From:Date:From;
	b=G1gTnlglKiIj9H8t4YbQx0i7l8KmeFvAZdLw+WyQbrSW/NKHqymLj02g2SRg0bPGp
	 a8PgXvapQ9IlSuQyM/4ZSSGhaKYezrAEMvuEtQDKnciIZAAA6AF7yNHzZzXLEqYAR3
	 Z1/Sikf+SVW2udfueA8YWt8aYJg0W6rbGLOUYn90/TK+sZC+COMyloib8o+z4dXpoh
	 BRNRWLFOJoDfGDsU6oQDGmtPhV/vuChOnV+R9Cg43FlOcUGHdo1BQBPHS8RxRBlA1Z
	 x4dcW8D/xxl9uEoDgSFkkNAcyhuaB5v+S+oQjpoE0ehztfZscrIP0oNWP+jTTn+DsG
	 iwtSmZeqEd6Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6D1E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466155359.28753.16858213120301245676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e95f567e1824731cdd854a52bb7f867511bf53798b568c1390c37f2eabf7dba
Date: Fri, 20 Dec 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734661553
