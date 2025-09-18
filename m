Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088F424167F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758192594; cv=none; b=DvTBMRCmU1vlHoezI8yicqtcBbH9/4LD41bF3VnhegHK4pA0gsCdR5W2SyScMeGRpJnkqrfqOvLzdvlSv33uNw+SVkXNeJfvdKvQ8kDQbEAtGA9TsHFvdbHu6YtLrHDFsCUklPxwJIMNt6e83HGiWwUjjmhLnhoZodbdyEea524=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758192594; c=relaxed/simple;
	bh=1vdPPEAG2O+M0lH40RfR5uuIGca+mO4gMdUMfsNHQ2M=;
	h=To:Subject:From:Message-Id:Date; b=M+4ifDTRNjlenjVeqeHz8u1Joq2UnhXq/fRt7253oENNs3jxmkerlL1N5GGvBkoXGChxwIRrd3uQTFdRy/16PKYsanSONxKi/+S+/eCoMVKK/FnsIjFnzpvmkiEM3Ma9O7PTxZj1AHe6AcqaNO8P+uX8fvhZ8wqnh9YQsDSdFUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8V9MIFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8V9MIFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F347C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758192593;
	bh=1vdPPEAG2O+M0lH40RfR5uuIGca+mO4gMdUMfsNHQ2M=;
	h=To:Subject:From:Date:From;
	b=g8V9MIFAibIxoNOmJLhiiimGL6eYdA/eGfWr2hIz4Y/BJ8IvA1Dy8BCG8w+kjO11F
	 /a8zwQGwa0tSFAA7P40aLL0DrqSLIxFgPp1dn02mgar9M9j33CbueKOBwBx1ADnMNY
	 TTH+bpNt9RIGbXIugVOgmQI2WtDyKPVvxd9YmnuLOGCDbG0e0iznKbBg8M0W1BdJda
	 KRUVBrvnVpidW7eFN3KeOFarhubAUy0Ax63QTbPQxjV9lR6Y3SsxYIzLH1aPpdNYFh
	 o3pq6Id6hL+d+tX11xeBVvWLDGhIz/EOta5e/Qb0R3yp0cKOxeaxYh4hT6EwxjqqwZ
	 wBf7uOsFhKfNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B9CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819259358.32702.9664365892509544008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fb501be8c2e52acc0c6b721fa6f8992c358cbebe7579e29876aba27192e181
Date: Thu, 18 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758192593
