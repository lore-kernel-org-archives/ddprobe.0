Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FC03EE1FD
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779289834; cv=none; b=rXCBA5Yfo0TrwgRiJIw+At72/1QAgAAWte6V8nFEuIla3vG43rjm2w9dPArJo7kRmmMkuIJxCYL70BF+n4NWFmFIJJIrjsPCmcwCLz/hdOsclsBqyfXPLxgJQTAjlWdPZIAI+zl8Km4wWDuI15VVry19S3ukF91y5/Rzv+FiL8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779289834; c=relaxed/simple;
	bh=kOVo4XCjZ53wkSCsQeQ75QF8UexobsI/Z7EQBDlELzM=;
	h=To:Subject:From:Message-Id:Date; b=U6DO/SSAopL/jW/r/5SfMiLxiKH+9lsYMaaKQt20Wu8VYIquNZEEu9ENx2kRijdRr87bfI07M0uY1XIFnQ589Hp87wWg8ZhvRhRSOXPXNPafweXH9tv4qD51680UJv6YO4AWmKA8HqAMMMQ0ecc2H4i2g4MKWj3zrxN83HvXS2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeFYXEoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeFYXEoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7511C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779289833;
	bh=kOVo4XCjZ53wkSCsQeQ75QF8UexobsI/Z7EQBDlELzM=;
	h=To:Subject:From:Date:From;
	b=aeFYXEoXd8kUcTUak3NZvjGQog14i5ibMOjDm5UqG9cAyY61P19ruAzCXFUaT2U7d
	 9EwSAA79PsHHXbXpWP4awA45Um9HzQZuFqVO8Wvylh2XjjZWp4SszBn5YlRF/i8yVU
	 tP/2XWyym9DL9SCwNMTuyBNMVfmrTbfiToQjv8qHuV/aTtETiLEUfuiSmxVECbqhTS
	 jgsu0GdFA5g+PtQkIwri/9p/XdLzPHdyEOAC/Z6APd2falVZRmLubtGUbzQSyITNDd
	 oiCSOVouqO6c7kQMBke9UzziAqfd+eKpO665MrFxQJQwNoJGMM6nO+/8FFOPXFt5ps
	 CWxa80DyOuTgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C18CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928983372.21729.17806607432430585136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6d12be992f1685275f10dd14df6183c73820825be21e1f193e0407830a01b1
Date: Wed, 20 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779289833
