Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BC5310784
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776190054; cv=none; b=XQ9X8MQ0hK/W2xm41Z50DtNfjHELXVOI5m6tzn5QX5PeTWJRm7ymsEUwMubpvGxhHWZGuYQniRencCLAHuKkAu404Sjwf3N6O/THdodFQmQgbPSZsuvYyQGxMPdMzBdjbwl7i5yVs+1Ij/6kmx7S3Mv2pXIuVGEmdw28ylbmrN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776190054; c=relaxed/simple;
	bh=S2qk9kXwocewL1Aoms0ImDSfGiFQIv6FtJfy366767M=;
	h=To:Subject:From:Message-Id:Date; b=bBwEBjhoNDk6Qop71Lpnwfj8K57OVy4rqFbNkdRK3WPXYbVF5sXkJ9PGp/B9QajkYKyF3WvGw6QqdkgXju4b/No+rmFIVSSu/eKK6IwedgXGWjF/GcvMzdkXC+k5jjaSDXNyZeTPOBzUKhNGEX140oO1oC9x3ykeb4MOiZ/6QFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESfyCJW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESfyCJW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB85AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776190053;
	bh=S2qk9kXwocewL1Aoms0ImDSfGiFQIv6FtJfy366767M=;
	h=To:Subject:From:Date:From;
	b=ESfyCJW23kkqvaGNGaRmjy0MtRtg6HG72mBplcUnztJF976hjitsJPluFDEiS6uF1
	 5k2TFLdU18sxspfiYjDgRjDhzO/k4iAkloD81c4zYxMtNPIZQPfd6GaX/RYsBIeW4P
	 aePj+drx6Zv+FkLzTpdS4CQIJToMhMotj2YFIOjlKB0jhZLgkDtG9U4osD25Oc2zLc
	 vyNJldw+vf/VyE2E7HFSazM2X3HE+IV2m85wrfcDOUHnLA5XCUsbr09CJ9vnz0UvSN
	 DYzPshU7rdfyLqcSA+6FuLpnZ5gaHA7lh16IBgpTHzQgxpaReeN4F4FDJXSf9uXLv6
	 4aFXch0le1ncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFCCF9D0EE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619005369.11322.13421768823122350158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899db13fb51a4ea48c3e7319e1dd16fd09c493cda7e906dbe2c8db295320786c
Date: Tue, 14 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776190053
