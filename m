Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1E145C0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758940794; cv=none; b=gg8yZm1Rd4cywyAdfJ/p49o4eCdMyL5whFgAZAsoitAKIjmNmluPyOYQM9xLqIKi3u6BVxO5m+rOGezkZRDZtpE0VRcXyxUmZ3y6gLUDOURbsFDRyUNXn7ZMfbs39mE6iu/Lt0eyKp6LaIYG1CsIEcUDBBIY7eweUP58siOtZdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758940794; c=relaxed/simple;
	bh=HkJhemi3zpofClj53L+QhExQOyg4hw3CKZ9+upQJpdw=;
	h=To:Subject:From:Message-Id:Date; b=WuithxzUAcfcIGJVSH0xBafRbiCWk+2ji4VxUe5izYc3Cu+nvFe2Wb5msqq49WDPoCnwp6dZlWkhdOhsi4oqrVfhouUhJeRsUJXNE1L1r32XdmnaVQweGifd9LRs6htJudOxcWadomEj822Z/xg/ZvFRx8JmmboTN97HoqtOsvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBX5lRT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBX5lRT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8E9C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758940793;
	bh=HkJhemi3zpofClj53L+QhExQOyg4hw3CKZ9+upQJpdw=;
	h=To:Subject:From:Date:From;
	b=vBX5lRT/Xs0l9Zzk/VmB4bINGuHPe/pXO0jv0/uGs8/BSRNEfDSs/vZn0A97o0hHu
	 4pm+4pwPdXSFTIvL6Y4Ph6Xk3yoH6yzbT4EaiHypjgnlAJgXSCMNJ/9T27VQRwy77v
	 lcw4ELlpAs50NDn/tluDZQqitIn9ZQiGxcWYH28YkfzDutbJy8N1DUUx3gYny/826F
	 M8tCDnCB4du0aNLbNOfF/nMSfI07pxU3wDIzoyKEvoIBRpPtFR9mL3VBnKwu74PFh5
	 nbnL6TudR6FzNCnD3Y279BnzcrsAX5sLDaOT3ern/d0S1xqL0MZIsviFguxNIJWuUZ
	 FzpqJW7or2pwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97881CAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894079358.27468.15953324288586503354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724dca9a8471afa3f6836d38d93a5c4013d5689d8d00bc79290c539cfcd51a2b
Date: Sat, 27 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758940793
