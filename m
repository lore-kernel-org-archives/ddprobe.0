Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F552580EE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770395034; cv=none; b=dIlGunZrN4/JUYa4kOnhYsFEAil4Er7E5qaoWJgqKcbPeftcemTyGjOl1dPfiCy1t9XwPqSOzuyTN4KxfJTS8NUKxJJmkLvuhAd4WC1bYiCZWJf7VRyTZaYa0lMJRhQKDvxVQoIzfJB8CHv/Ux9eFic2Q+oGLwyBTk8ZcxRkzSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770395034; c=relaxed/simple;
	bh=bLfN3x1RsJqRYULjnygbYDVmwsVBFBCFq5G/1JVz06w=;
	h=To:Subject:From:Message-Id:Date; b=IrMM16i0s4reFvw3wo0EN8QsL5OofnW0iXAmnJ9d2XRnvWXZiRasyGg1DfWEj9hSb1ECLQgatjjaBcJh2fn0qa3K7ECwVxO7MbGb04AFaIHIm1+rV+kGrVMqOpCTT963sCSbSoi/1fsUOYCaJ13cA1OcVBBKr9z6yjXCrK+3Thw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD4mDH67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD4mDH67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770395033;
	bh=bLfN3x1RsJqRYULjnygbYDVmwsVBFBCFq5G/1JVz06w=;
	h=To:Subject:From:Date:From;
	b=rD4mDH67OEPR0sTDxS0EmToCv2xS36J+k9f25srXsef8EvD9g7YyOi/tY2GcS+TKX
	 9jfy/T7N+Fx3bW93RwD9yBWJ/3nn8001KzukU9BX3DMARM1HpQc9pU9zbDnzMuISe6
	 kHIK+p8MvDfPchF2Cw1AgFNcYJUt+PYblwIYSAMSv3rAogoCtubssfxZB9ma1cFiY2
	 W/Ai3sCgL8VtGRd4hYELYYCEzF+ZM6kMFguysacu5oCx8VApOPYpHENsdomobZ8rHd
	 9eqOH1/pnzgjxfoF+gkbRm6t+7wou8rsPVDTLbV9f5/D+ef37j08LxVUwqfgTZxGVs
	 JrKVLxK4QBN5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B44EE20B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039503358.16021.8193636319425383387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f70695d2691367da254edc607dca2667b22aff261c60c02c7f7410b30b2523
Date: Fri, 06 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770395033
