Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C315ECCC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769318034; cv=none; b=jfD7RXZZx9z/F7JUFMF020wXL/Ke+d5Uma9FK6t5IbT15Hz0/8X+NoKdMaandxcI/NNe3l4FCW1KjA4IhbisUx18JVEGmziKN0KT6UzXN6JOO8IVmrPtxZ9nIb24oUxgckpunjQSC0kLf6doawQBBD7lCvG3f70KKztQuFb5dgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769318034; c=relaxed/simple;
	bh=sq5kRtziF6pGURiBkC9+2NonNcbcGACB0FNByGeD8YE=;
	h=To:Subject:From:Message-Id:Date; b=FadGqqKH7DNc9+l3JtqwgKtVOdgsmfK2APXSG86NRJ4E9SF5+lXNGhunyvDf9K+90cBw/MQ3ce17vJuDHEOqbjJQYJzT8emS95kvp1iSsyk2rDMoPn2JNivKtaKM1IcyzUH7iwce+73kaD8XehKDc0U846yhdSXaAsBOoPcNs3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+YT3Rax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+YT3Rax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D71C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769318033;
	bh=sq5kRtziF6pGURiBkC9+2NonNcbcGACB0FNByGeD8YE=;
	h=To:Subject:From:Date:From;
	b=u+YT3RaxKntSuvt49lKohpSf6V2mQEdedQV5ByOYVihQTtgaBxXxsbO5FVbVtUlt5
	 nufTfYEKzyDKKtwwTQvYwd30ZspWXUef14SGVUmpJoPcHwR/T/97Lxl6pFI1Su7BXy
	 MdE0uI+0JoU/hYp06sqKMdTAa8WAV5D/41cUR2mrndqcl0oONak//vKBG0WRTMGCBx
	 c8neuQhUEtFhPnu49qS4eMtCg1eVUnOqAOeBn0bGs0686LaAq8IXTccnleVUbR3FH2
	 /srOMgZZy0jKryPb/ukSxi4z3A0vP7mw/wYem0uJZL9BQgeBhbGbFvMCZdjk/KerpR
	 cBQxZstwxqmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CFBE63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931803358.30500.6706670438486362392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54a76edc097270c4ec0f4b6fa03431eff3bcc58cd039ba7964f993ea39cce19
Date: Sun, 25 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769318033
