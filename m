Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BDD1F16B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757684994; cv=none; b=DeAfqlICn/3HTchiOJwbv+POX4A4w2ZCx6ugof5akCatp6u7i3at7KQcQTzluu32skanyGQmJB9f1T8gf6RshSOtG2X3bacnbaVK4dL3/Hx+vQpWIyedUOop3vZOHM78vJ57o6cy4ZbAAyRCk+VDvieeYk2+qMqICjmoSa5vxxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757684994; c=relaxed/simple;
	bh=4YMUoXPSrVBUO+NzKXxX5athjww6swoA7u6L6wYg9nY=;
	h=To:Subject:From:Message-Id:Date; b=AgTGixfinYkAAVlrYOT3XzkY3vju2SzywBBWZ62He0Wa42FbMPMhAtz/D/IaATEnx5AFy5iMRUm5KiLsdFytvGT5sTa3njyWw3Tx7hzl1QmKIzNGhHwaH6OkhPkipJ589WhUUelDpWLpoeQEuaqWHiNILHEqNjL4qLST/lL5d4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOR2URsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOR2URsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE6AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757684993;
	bh=4YMUoXPSrVBUO+NzKXxX5athjww6swoA7u6L6wYg9nY=;
	h=To:Subject:From:Date:From;
	b=OOR2URsbJTCZXBRAdX17g0n5qLfAXr2QJVGw/zKOcbwMcwgc0IVFdUVoS5lDUQmD4
	 ndR212xZ3n4FkqHALq4HwUG3yu1Hh5XlwiZfMPs+3POf5W36Gsa8U4sJ8YynVuWVdk
	 16+gdBVvdjtmp4r+hsWbHkviQH5U/N6v0CofBxROYmfX98mPke8s8VBeA1oQ7gabDL
	 4ca4luFMHwwWF93rB6G2gEF8mLcltJgQqjq1y1242sjhYzxehHu6kyznNRwSu9B5YG
	 k55YzQLM8zSjiMvlb0f5W2rC3p1k7OoDbUH37WtGe/p+MUZ/oZO8YXSsBMqWm44/v8
	 s0j5UcyrxyKTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2ECAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768499357.21297.3809297139537785369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6424692b8999535885cf6de347499d006d9bc4f0d21815cd6421a094f78dd22
Date: Fri, 12 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757684993
