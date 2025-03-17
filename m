Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42F0226888
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742219393; cv=none; b=o9J1+6sEB4gKx+Q2CTBtRZ/TigSUHJ3drb0sUpevdqjGawYYzI4wvrijtCR50BMjW1QDi2hONQC8lIgzAcdzwHNN3x+qzjlMLFeCQJo52kJ5/Uu812hzNXzL/AIJLpHqm1SMlZl2RxQE/1QQScYeCWc7mFPf4skdTXtAfkSJU+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742219393; c=relaxed/simple;
	bh=QErsU0agscyFxJOYxjZxLEFDlI8QEIZVsoyLI8B7kGY=;
	h=To:Subject:From:Message-Id:Date; b=PegYeFsYki1sdH3dyrZviT4IpUm+uI+7woftqzRT8Z/xGklGiyw+jea8MCu4IXQ9BcRTqd1zuwPL6fY8+DFPz4FNdfMa6MTXHYY0fe6fl6x3XxqE/8GrnFsXg4doCkgGnrxjZDaXmhLj1qTRziedE1ccv1diwDF4bbkaqTSiHRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUR7IbuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUR7IbuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8C5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742219393;
	bh=QErsU0agscyFxJOYxjZxLEFDlI8QEIZVsoyLI8B7kGY=;
	h=To:Subject:From:Date:From;
	b=rUR7IbuG+P18Vt4MKc0hrQ2Ycs5BQW7aYOVJxZs4o0BGmAUo+I3hSENCkdso/R5ek
	 YA55z3JlvkhEbTHtbeFBBLgcAoAM4C4Jy4aGAo0BFKZ11hPwWDP/fkJFebD1FDTYhV
	 HQgxFaj6mlAvSbJMBApd+7ZWImX1HnxVlB4b/h1Lr5NVACwUuZ62JvTcRorAIHdZ4+
	 JEplMYeTCh24noIo+lqHEvIydK1As+xL8yznHr6l9/G6T9ZjxgvtAPxfArE1UI+J+x
	 JN8E+0stuht9n9o5CwXTVWQom7nR8HlxCZwk3CVN/tJyGQyItByRGIGvJJ6mArloUi
	 xb4OCtVbusSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97760C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174221939360.4733.18045762870514373358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e16de83e35e73c1a186352f254c0c46c8fb5933802657d997ebc6ef535ef50
Date: Mon, 17 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742219393
