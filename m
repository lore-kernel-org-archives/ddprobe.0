Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB37742189F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770217434; cv=none; b=JcwzJ6kYEv+EOxj30otRTl6H6bk+PyccCgRcn7rD1ytF9ZO+6MY0m6qTK0YHsYHPrITPIh+n1GiPrn5rzlqfzOJqDHy+xru0bu2nLAU4yR3bsqEKmc8eP5ctJcxzf+xSzQ5uUhatoRRBTJlWm2QFYXE270TNUWoCwKAuKpCmUVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770217434; c=relaxed/simple;
	bh=Tr+bO3CJu1veIpfnS1rZ8tM4yXLCfh8ZEX96fTx935E=;
	h=To:Subject:From:Message-Id:Date; b=UGJxQAFznY9JDa5YuA8Q+1wU9SIacqSqBKzP6Pq9rWw+Omb8B69MJiq6venMe+ctnFxZpIpN6xRxzcSlV41Iis531iQowOIXRjPpxR08QkmwSTGsFRecm6qvnBUjtSsHVEgWIliRCZ5wpqfyYG5uHLn+G85J30F9kBvF21MGzZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXbw6x+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXbw6x+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD248C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770217433;
	bh=Tr+bO3CJu1veIpfnS1rZ8tM4yXLCfh8ZEX96fTx935E=;
	h=To:Subject:From:Date:From;
	b=bXbw6x+V6+n1VYDsclRnCcYctQkfO+9LT0UHlnXclXmub8zhlpXridIR+nptsMvre
	 iu2bBCqY2UsiUOFiMZSe6NXRhFvAOzL6YyZAiH7NlknZBW6/IQybTmiWbd5/Y/8BYE
	 SO1bDTm1MSuCPH5bVznnLp+/1QBQBiYg/WOPVPagH3MLDGzmLfPAkPZxkiEFLo+wye
	 SUWiIh5FNDDxoZPQyNTg03yZFSS9U+FOJjLWYrbZm0vw11v+fXGvPZw5V6XlDD38n2
	 KzdDjoPYk4dF3AQNJV10j6P0sZbS0VN5A3+bgFXGfoOPSAr16oMUIIiGPN7z1EbXLs
	 UlI2soEMHYicg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A0EE9D3EB
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021743367.4315.5693365318964568846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2427f9e3e9b94ea0ab12ace89d2153284db746fa5d7da7097bc7a60dc37580
Date: Wed, 04 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770217433
