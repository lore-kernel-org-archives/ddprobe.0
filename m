Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D56828A3FA
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776442654; cv=none; b=kSu22mh6MvluRhLd/5jAbNMgzx6K1GVlz6s6byBek3WS1Qph31aw2RjWRy32wFJKGqLXvQuB8VF1Cr88NGE2fKZvDtMZ3xjLS0lsTpK+oGkx+ORN4gOoY7+WdsRFVL8RnCoFMz+euaP3hI0zxNjpaFihOqnrIEw87XuYTQvSITA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776442654; c=relaxed/simple;
	bh=ezZQ59hAwSMPKlbl1dKhr0SgNOuY4ODj0anDohmgXX8=;
	h=To:Subject:From:Message-Id:Date; b=UlOWuSWtu21v8mMfd42cPX4hg58yOu4FWmALzpzaSsJq6pMEqVnzSipDzuHL2ee9lomOzZlw+oE4ivVzIz1KVl6U/tVuvNw5DNZpjBdH0xR5dYv7isWz0TKGOAVIaA+sYNTkTm1cRRAfFAV8hJRbTU8hy3pbuaUQy+AjbATVPcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o95W7q47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o95W7q47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7321C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776442653;
	bh=ezZQ59hAwSMPKlbl1dKhr0SgNOuY4ODj0anDohmgXX8=;
	h=To:Subject:From:Date:From;
	b=o95W7q47+oNOo4yjXHI3pcFFq8f2pbJxjrbYynMRWoPEpFz1QRt1zDtYB2xft4KSC
	 E9CksY3adYWaLDyFN+s9lKNlc0lDyDfr+trYuN2PeuJCDS5nA4Io+yAdXz7FZ2xNeh
	 +3GCZRzo8ce1HJT6HBMLywPW34dx9d1nfFrr4EPtuMovJwPCdlSN6Q+AikLMbJhs71
	 0Jk3ykC21YcK6NnrzcWpItDfQlUsVzOpgQBWMfcmnaUmu4vIaGoRwNzuCIuy37k1Y2
	 nK1GOmPgftFJoFTU5NMe6ptni1A7wz+IinblOM3LmLfhwgknr3x4HhnUH9v56pZcwn
	 E1Saet5MLkq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB6F436B9
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177644265368.8760.17311867181004644824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8d97ceb0f6f612db34ec54cc63c5c7bd655c418975fcb15f6e7020e6fd872f
Date: Fri, 17 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776442653
