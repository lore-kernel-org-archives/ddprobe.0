Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD32201276
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754770194; cv=none; b=SLYGRdWHhPY82rbXbOsO8SZjrLyn0d6/wePiDTbYbVKb7ByKrhQhBM/xglpziLn+gTvzr6d43KI02fjTAawG/2Dpgr4IFvlR/CYgRapNdO6baaW2kMH5GL69tiwKz5VmDBSv1AOZlKQacGA9+18WoI1qY7EwL8gPzadjjpb9gw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754770194; c=relaxed/simple;
	bh=7TOAsmxQyA+OLZsZrf80H3kwL0LpcFKCnNL3gJD1MmE=;
	h=To:Subject:From:Message-Id:Date; b=BKeXkIFhZTuwAlmFqGbuQyqxu2pFUXvDtlniVGOrOt/1YE6EYC0eKfaoBA3stda4gtKdcVYbfhYO8uN9Y6JUgx0ApuMDHI9+uLAVPcCWkgBg8so92FUBDPBHv2mKS8vwolfTEIyfzoSSd7rvcqAGZ7qT19z++dK/5WpieyM9vHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azjpGHr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azjpGHr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B03C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754770193;
	bh=7TOAsmxQyA+OLZsZrf80H3kwL0LpcFKCnNL3gJD1MmE=;
	h=To:Subject:From:Date:From;
	b=azjpGHr4rfCgYoxodFyDJlRD+nEDRFrNa3xS7qJtZvBwMZH5cGZA7TaD3p7GwKmNs
	 mSNk2JFvthpplt+aF/7ejKGp408PTeobLK4Hm8KKIhac6EM9HO7R3ZcTwbn3yqUusX
	 hqAJDtYwrSCwxAK1MwmgTsgrwWzSaJn+/crg6gDnBJYQlJDQchu87BUiC0toTKUW2k
	 Dc5J5p/ANbg91XE3c7DKn29fjN/l1ImK3ip3AbHRcOEPMUKAJ4rV/aLWGdXSg9G2lH
	 Nhd52AgYS+1NFye9v/6FzbqdJUbC7Em5JcGeuxVediWQ8f/0P8xp9fuH9VQAn1CsMf
	 f4SBce5Ag73NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C6CC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477019357.20430.18032480714189996270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2a2dc7f6cda26f33291a42472cde5a597fac05665b7e4e3f6047ad23aca079
Date: Sat, 09 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754770193
