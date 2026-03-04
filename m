Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE2F36A033
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772658294; cv=none; b=cfl+E9bRSURZGIqjYdb3ZZebkPqXqsNHPsEH5ovoQt4PnY0YYVasSnVsg8Sg+gcWr+1O/kbsA9TFnscL6zwpYGgdZRZPUr8rigPfNhdgSkW7B2zC6IXSz88R+46BClq5ATuNVBGkkQeMifC4NEdsMSA5maIVNsrZJK0XqjM0cOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772658294; c=relaxed/simple;
	bh=vhPlnUkRKsYT9GVncujUUaCZN6wyMF7gQ+b9uLVUK80=;
	h=To:Subject:From:Message-Id:Date; b=hX89sWu9hDcAFkhcDNhWkULzQ2qcwP4M8tIUrFwRQlTgj2PMyynNgmstFRGeKMfZT/0e6+15NY5iAD6QnJbpjcxUpCmxiRY7v1jg/kgpKHl4D2gbEqtw4wVGZhKlxswLMpUm1V16ziwIVIIMDGsVKbhX6tDTrt/n8C1d7skCKXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctFzw/ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctFzw/ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C42C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772658293;
	bh=vhPlnUkRKsYT9GVncujUUaCZN6wyMF7gQ+b9uLVUK80=;
	h=To:Subject:From:Date:From;
	b=ctFzw/casDy5+3qFDQn5XcY27Ki/jxgMnhIyum5Y8nlwIlDPCc2IYYbkHoOyWLmzq
	 STMi656Zl8A5ry2TFIehTHu4th+MeCtVIG+wAb9gG04m9lkf7IjMQhkwPGWl5JxMA0
	 2tdNxH5YireQmzkgRI06XqWHATsxAC+wKzzJ//+6gi2CGT2o+PQo0ca4Ajxyle+kOu
	 CjjlUHN06wv1TaTvhD7l+qt9ujYTBgIu8cZk85WzrlPMBgeUqU5uOzZyOlR2tpx0Rr
	 iSiVjyuXtnyR6nFo8ejNS8NO4+ojPZl/KxmOm+VNWok7HSxC2qaJ1327fjXhv/0/Uh
	 6qFEaLSDpyfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F21EFCE49
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265829365.4633.15013206902249744130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4c681f549368cb848ee44071b953326dad486b63b09aa7f7d94574a50ac472
Date: Wed, 04 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772658293
