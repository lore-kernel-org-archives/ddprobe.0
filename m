Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F003D8902
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786105236; cv=none; b=Zuq0Zs6PdcSsMF1EBjUFXI+ZrzQTqKWv/ABznQ8MWSzxkaKKsfbNecVBQ03HrSel6jq/oAnEn4UgmayffxdTSL0/XwsztP/opfKPF5NLKSLc5Scu7NHGp31M4keYLfEELpRFAayRxtvd+MmXSy6i+1yOAqB04LKPb1IWbGGDAdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786105236; c=relaxed/simple;
	bh=9GFafwhh0wmIy3+RiywCV4RAjfm/3HxIlAFd8o9Jy1Y=;
	h=To:Subject:From:Message-Id:Date; b=ojNsEXCo6e7xU1xx3+yL7paes7HtsyYF4t78z/ElpNr0Dgqdbl9RtVcNylJdIhjm3JSV2pjoTUsqd8+w3u5aEiOqOg6Nv22fRU0ew7avJQcY9bAgx5O0GhPNlxuY7YvCY5ELwqd58M54e4zt4eY68KzZrxlSljji0NWDBJHV1aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfJ7JWTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfJ7JWTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA1AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786105233;
	bh=9GFafwhh0wmIy3+RiywCV4RAjfm/3HxIlAFd8o9Jy1Y=;
	h=To:Subject:From:Date:From;
	b=AfJ7JWTp6JQhD6RFFgUkPLVNPOhgW5ScZb4EaZ1jmVUtR0CoQsM1roKbuJWH5E7Mq
	 D4tWOcV2f/QOkmSZ1hw5wMzpQgSYa6OTl83ek+JgpHSMIlz6lJzzlF2dbYrydWcc+i
	 btH1v14UKhD3NvC1CmHSa8K1FHNgK/iwu1MWJHYLLI8eVGoOSPB/hg5TfTkhlJjA7L
	 OvyX8r37lRcrxrawZ3FP2jn84WaTbWdSlkdD278vhtCOkUi2jP4VAHAZSobA2WoeAa
	 bbSPXhb5GJ/k+y86nItd6v5NOVDcVAoMlSqfaQ3TLZA+7k7DDoyOyqBg6lcc9sTo5B
	 pfW4EDBJojWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA787C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610523368.13068.12793478916087696763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54e3e85bfd6b20493d80c22a811e9c609e0fdd86d9443209ec3ab3e3fd5521f
Date: Fri, 07 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786105233
