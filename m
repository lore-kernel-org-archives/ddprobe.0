Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DC01F03EF
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744405795; cv=none; b=LwMXKyICgxU8Q2O8SVOMkn87alUFNGP3mRWODZcyM/lfbL3JEEXqo+Ys00mYLVXhZRy38cShYdjv9lf1d9MAXhw5T9IMduMxszcHR5Hhubw6/mUXXWlfq61UJC4+ayMHBbuS70hUQPi0g2vyWAxqxobKeh8XSSgQcJEm1btdYUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744405795; c=relaxed/simple;
	bh=KR8pvUmjlCDqj415Oc+dWwdd7UuNP4lznYP9QU9ZHGY=;
	h=To:Subject:From:Message-Id:Date; b=dlvvzW/L8n7IrGfKT1p15F7J8SdjCB+JKZ4OppE7ACalce/saqttI0A1dbk76wlFQxLZe7ED2NbfVx5BR1e1VC3g6CmGMTnSC8fRDvAfYH2nudA3OZ2/zGX5uT39L7KveZedC1z9UmlriyjOaDxA9CCDnj4NV+M0zXPchSRYvY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAnuRqHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAnuRqHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CF5C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744405793;
	bh=KR8pvUmjlCDqj415Oc+dWwdd7UuNP4lznYP9QU9ZHGY=;
	h=To:Subject:From:Date:From;
	b=iAnuRqHfroxD1woycVVWe6pQ36L0OdNAQPhiv6rqC1tp/WyAxKOuhFRCnvn5oyFkg
	 vTkvTabmVEr1gy9V/TAACTAVQhe8piNrls/ivbdip6F5vGNDbISu0CD7SGgETlmLc2
	 qRfSt1GBrFIYgAYTUAJoSVpr7cpbEI0Rogu1d99WnBx+9KB8PgPwaph8YV38DTgJ2f
	 A1vkGeydbhoaXn4bJOajW0TBbmmvKkq4SQ2M6r4P0ZJQ3CkgslD8UcoIoZOHgfCtPa
	 ZFKvl6RO1T3nZzJXcuqGHHKQXk5KBXuoyaJLVU+LJQbWYYT1ybpws1mLV2ucThoYfb
	 0LF/ugiEERaVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C1CC369AB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440579365.22357.626769191674468419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b936ac48f819f471e747c7f395ff7c400a2158f92fcf48e4e092c620a69a028
Date: Fri, 11 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744405793
