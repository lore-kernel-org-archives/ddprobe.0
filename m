Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C5833CA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717136063; cv=none; b=MM+Hob84Rd3QPbMl4d8oeFyxDbKMVSV1tsEgCshddiBiv6B+ZZ1CQtUW3v4diClL0GYkbCdxRbjflJ5GEBJQF8SNjqgHXVcRne4OaZWwyvZ6K1HMVNui9NQkFw1szLJRBcT/Khlm9+xKaWr6v79PRsgB7jidZ1QpjHvxqATxmFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717136063; c=relaxed/simple;
	bh=BBhZBbVuIp1EaUcb/cZ71NaakJkXnyUNHOnozNDkyLc=;
	h=To:Subject:From:Message-Id:Date; b=LTqWDmV30BrvrTntYlbcxTREpI/jYBs59BJie+Ej/WKwfR8XjMUgwdDt85xZkPbm9MLWwUkIAidDsW+vLarZlAXDUg1CDTzJ3KRGwXKv3gw5URL4GqeOA2LFHk+ZLMQYAkPJlclSQnf/ld7S34tEta7J1CwpULxs+S8pghH++lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/aNgDHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/aNgDHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBADC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717136062;
	bh=BBhZBbVuIp1EaUcb/cZ71NaakJkXnyUNHOnozNDkyLc=;
	h=To:Subject:From:Date:From;
	b=p/aNgDHdVW1ez5mrEK29RdMg5LJ6Tf+ss03JyaGVxr+XYvoPCSLnlYDlV6MAlFosC
	 Te7l7DKOKG2eaDFnmyn9I5exLn7zHTEa1q/JLaz2tHUXm4vGMHIb0EMKOLXQ63bAJk
	 fvRUvv+x+Ll0xwpnev4LkAwRT85Z26cLV0VjWw4CIvvw6IYOX/DoqCBQkFJP0ALvuo
	 R/34zl5NhzSw7RJ47QhT5pfwh1Se+uiMVjACjKvkvFlQ7hAg4jMrgCN2tDa8JGPqRO
	 6phpDiIJ287+ZFt+yy2mxDloJH/JlNpXIAT5UTnO8Lkj9w4wBcJ6ShFCS5cRKEhxNq
	 KcjApIbC13w/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC50FC27C44
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713606282.30728.11610935683934945196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4156e5cc3b4f4205e93043d7b05c7b32ff40b1e30567280db8898cc705ef3b
Date: Fri, 31 May 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717136062
