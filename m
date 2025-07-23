Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518928935E
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753265994; cv=none; b=YeqFCrTMoSrjyaxvg4HATVEZgn4a2gXUj03l7Yf9CjZ0JQwpHLKd79JcYORoqH2A+7wYMJwBBUBdxM4xLQAxeeQBXQOwK5WpJGMGmhW8+vlF4eDakO6/dkpJvAiy4I/Ich/PQ27Y5h63gkzD/ql5HLQ/K8AxmQYg3APj29fPk0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753265994; c=relaxed/simple;
	bh=VnaeJ6czITiFEnNX57U2FPgcoY7I67tdX3/oN87n1vs=;
	h=To:Subject:From:Message-Id:Date; b=Y7Jtke9BVOdCTP4nyBUgl3WjDDf4HbSUu7Uph8AQfgcKhqJOjBDAY6fjbQMZrOyCaMzm9I15ro7pu46m1yx4/c2kVCsKpSKof4yeF00mar0kidGlS3ydhtmPDWaA9IGviaGDfFADnhVM1OEa8NE72ByaiYxMXzMdHd1Y5wJ0eck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRXy4XyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRXy4XyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3F0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753265993;
	bh=VnaeJ6czITiFEnNX57U2FPgcoY7I67tdX3/oN87n1vs=;
	h=To:Subject:From:Date:From;
	b=CRXy4XySCfXM0i/ePNbJlfa4sNMRoIiczdoErijPGLdxxXcFREefrxtqBm/eohUDT
	 RfSyu5xNKkiilUSCCNX/0tUqGXTkIm9BqlRruKQk4onZlY5RJ4LBSkrvoEYmElvzfA
	 8r+LHUahjel2LNSJJ4lAAd7mdxlkNjiPCPWSPBkXfzaOlS7lW5D3HVp6S3FJXAYziv
	 WyPDXaDYsH//TvfeXfW8nS0z8tHqooHIw+ttQqcAcqLR7fARbxyVX1fAFY9rodWNHg
	 A70bg9nd/jAqNhXFdZTXlPt/TYgTqaksaf4QWlXa4k9GRszEo1ct9qz1G35Q6D+4Ba
	 CVMXYhzlAm5zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8DC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326599357.19707.9452692642294562881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab847d8aa692850d0a137b316bdd2cfca89ce063a9ea39a0542fe0220e4dea4
Date: Wed, 23 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753265993
