Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D71422D785
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787682634; cv=none; b=DWpas7mgnZ8I2uooLo8SCc/xyJaSPoYy4Cl2KXAhVV1w6LDHHvRc949TXK7U5x5m5ZHRHfAQtAz7/uQdpQEYJUfKI0TDV5m4haerfRZc/wYb8KORUvFZYyfkai/LhgQ1nKlYHaIdxBvo0gUh2WtlY4ODsY5c5c+/30ttpMVY90k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787682634; c=relaxed/simple;
	bh=mNoqTFWIIRBPDrDVbyPzeEA11snvXl30hKSXi+audLg=;
	h=To:Subject:From:Message-Id:Date; b=evJDURCCRNU3RMRkRmBaqE2TyIGGMGiljVcjGEaRDbZ16e54nVW+N3SGj9uB+Wm4LcNVUCV0MVeDExs6Vzn99n96LxWrxvS93/hYeqjZUgbgm7hLKjzoHakb0x8T9bfoHtbsUSl5+HmRo08I0eiVnQM0O9OfHMEsZqbqL3YDRyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toZlOejA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toZlOejA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0464C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787682633;
	bh=mNoqTFWIIRBPDrDVbyPzeEA11snvXl30hKSXi+audLg=;
	h=To:Subject:From:Date:From;
	b=toZlOejACO4dyT6HMU4M72yq4M+IrTkgYsA3seaJoKWrULlq7AmospYzHvTSUzPLM
	 m28OnIsvr0ROIUi+GrvzZ2DmBchY2mjnAQ2uXOBFbPhLtUz18j/uThy6fZYeMlGE7D
	 wX0pjdjGadxDzmCy00A4TGqj41E0+B94BxPH+vwU2NEx5kb3k7pCTx+apVTOZFZgPh
	 bfN5CsEu91aBLnF4Bz85EN9GI2BJD6c8bizKljtCJwoK6y7Wn+eJPW/j36arwQBrLm
	 h+AA26Eh4WRb6vfdbPRW4iYJIIfw2/OXYufjbP/DiylU4lpWk+Zf6B6a+NbRDsP20L
	 7YGSJZXfp6FgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD0C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768263369.14626.4376766822564698262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd782b98a70f550c3084700b04679aa36b6aa0a080d6aede89275de4e9929a6
Date: Tue, 25 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787682633
