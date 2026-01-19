Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1466A2AD0C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768805034; cv=none; b=CICjRK3PbE255jYMtmQtFPUTrgFXWuNjm0i4z7wnjHzxVmTZyauoJ2u4MO8STi5fTpNdt0Yu/D9lwS5/CAL+VKAYQ6ZQ+NvHRH5A8dkVMI2CgL/sUMMFr01BM59p4k1GKo6V9d5Li/MLuy4/k7P9R1GjoHqW3+AdXTHrAT3J0f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768805034; c=relaxed/simple;
	bh=QRYTDLijEvy89U9H3JduWp1TZYmYw7c+HXXnTT4MyQs=;
	h=To:Subject:From:Message-Id:Date; b=Jp5Uyv03/0vz6lp8ur3nxuEW2GKlOkb7U+n/AeqxlD0PYUAofGBdyALj7uCPNJBchnqwllBREdvRVBLu15PX4PpX9DfXfjLskQX/+/ARq9w2rEEuThcK1xIDlJe25v+3vhtdJpyo6WkV9UvVYOWsuZgpMKDwZqeqrdi72yajxMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R64BgT2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R64BgT2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3665C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768805033;
	bh=QRYTDLijEvy89U9H3JduWp1TZYmYw7c+HXXnTT4MyQs=;
	h=To:Subject:From:Date:From;
	b=R64BgT2mYX8Zd8NyD2xABFNLIBuNmdZ+Cy8oVTrwDgaMtujZZJVIT7E+kwgRj03x0
	 hiVFPIihg+FbG83PswgfSrttrjhWeTnnoI3bPLHw29Di0p1DMQQnCcHNTIJ35tT9i+
	 M9Crq+My7qOYwaCqme6rLe++AsUe2KFjrIM81Ux9JnrMXz0A240hpsufPUt667E6nd
	 BbzW0l40PQvopher0x2R44cBOFnUIqcnjp9akVqYHvpxKm+4BhxNNQvojzdlZjOLGf
	 Q4dlWC+LKDJdYVtAcuxWmZLeC8dHQSqPLw6Se3i5eRO3P8bqk7ieMh+OXeN0eagFUH
	 EJNeZl/NkWWzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90377CA5FEE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880503358.13254.8385744800737857638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0911f7b319de59dd1c38eb00a122410d2e7d9083308d6763b0d5819fded41585
Date: Mon, 19 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768805033
