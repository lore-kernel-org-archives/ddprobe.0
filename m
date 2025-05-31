Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474312907
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748669994; cv=none; b=eaT+V40CNDHb6PqgAeO0ZmH9Sahay/IngvLRU1i1ijV7EtyQVKo6VWw9Ch3VsAn9Fl6g4PR7AmC5D4tK67g0Q7B6ZG/OjXNnNkS83D1gQb9gaNDHgw77RY6UK9hFltjuPPrxM95ZC2+0QsLZFvURTSjCfEhLa5hHt0OTtRJpeok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748669994; c=relaxed/simple;
	bh=fYhcO7ZuVj9hZtRNATZTxhaXn9kH0sfxh0R8ifbhseg=;
	h=To:Subject:From:Message-Id:Date; b=LWpZU0ARjlJrp3CFbPH8OcAlrEjDy6qt5Qt2xtc8SzaHUVK9R457YeqXcVUeY8qQAt8CxjzLR3LFa+s0L8mq/eJ7P9IfzYn0jv/Isisb6TJ5k9AOlNhPGPDlwLX9AIEuUCT7QtN2agCCOUK+n6z3KkrVCcYfmh0WtmaLbqU1CQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exb+/iyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exb+/iyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93BAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748669993;
	bh=fYhcO7ZuVj9hZtRNATZTxhaXn9kH0sfxh0R8ifbhseg=;
	h=To:Subject:From:Date:From;
	b=exb+/iyYaiiam9fmChZ7J3qcN0JUzy40qXe2yAPPsKzUYfKhKoOr7rKGXcxZ5M+hs
	 IpTobMmrsMYoSsWxcEbG57pTz8Lv2krCExw6ESvj3s0Tqny665NxbhL8pmOT0O35e6
	 QLi76qPjgXO4JZI1P8TTH4cGixTWGin8//31B7DuqPiau4yknEGWrZVXmCMObOAWSu
	 EvR8sPQM0WSfyg5d5wgk2hmxAM6TDkhrn74kFFGW0MaapIxuvHC4ycqwYb00C8nUI8
	 UfSA+ZjrQrZu2o4DrieCph2gPf6JAwwNer94GmHZGS9Uk7clV5t2SX79Par/Eaz+gA
	 WW88N+f0J8eMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCEC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866999358.11143.11165507382918627888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e38b70077d2077236b56d9ac90568684cedf4698b8466d566273c49e60ac1be
Date: Sat, 31 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748669993
