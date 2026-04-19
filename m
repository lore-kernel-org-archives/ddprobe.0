Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3268713B58A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776574654; cv=none; b=tJIXwatsSkx6MRl9Tub0V8g6wMBpyO2jafJ6J1aK9gw+e0/lfTeb0Fe+nl01HkCPnUM6JGFvgU5GHo6Sd5mgt3b1GnvPQ0VgJ3T644+XYlzxws16wwXQqVchIpt8nMJYdloxxEk2YoebCbDygn3YYUrhaHkLNcg3uVNm986L4ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776574654; c=relaxed/simple;
	bh=uSCKW9oso/Uw4gkdNLF2KRANjW4AI1rxf8qLF0US1SY=;
	h=To:Subject:From:Message-Id:Date; b=q/fKWUp4Lp2D4NLcXH2hIj6XgbvLeIXnlFg2DPN5LUcP3r9A5F4JTpcLcHvfeWOy/q4PfnYjFQ3Z5VefkWktDP3RgQl20/BdA1Uzj7T4NH/W7cP22LHbOaf5q4UFUgO0QtBYn4By8kWUqHRytepifV/xUBzdg7quyEmZL2cbfeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFK/21+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFK/21+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3E0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776574653;
	bh=uSCKW9oso/Uw4gkdNLF2KRANjW4AI1rxf8qLF0US1SY=;
	h=To:Subject:From:Date:From;
	b=CFK/21+whgtQHibmofEsjswgG7KomCuhDHBfqA1NSmjIEtTZiXKrxo0DkJbCqrrV7
	 LvnlgU8h3rjMD1bctLch0x/vozUsXq0cskkCtEeVtNDlcWk2TXVYG2ghAo5ib/IYsV
	 9KpdJUPR34+Mv8C/yBY4OEuZYH2vJu7HN4xZIB8B7For8Hv9956zKTN0a5XzrdHVEM
	 fipRS3Rei1CpDvl6AuohPr/sfi+1tLnqIIN+er1AZNOUtoM/BqNZCkkbhKkPqqCtZw
	 uMekkFGRTyQVM0FmOsvIxUmU/fAR2odXsm2MUXrlQv+tdqHLYPOtMGAH0TZ7QrxjZt
	 Pf3Z16L39QVYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF77BEA7189
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657465368.22326.5182928382048335596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa8fc2bc81012feb96b1d80433377508540ad6ac4f5bcc2d6473d23d8849ef6
Date: Sun, 19 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776574653
