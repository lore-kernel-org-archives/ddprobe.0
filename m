Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB702264D6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779837154; cv=none; b=ClQESgj6OmI2y10Vu8hq9aBoEUP2ycJPjV9BqCpDP+WJmFBX5p8p/ZIIGLK+g8wfV48idlEfJ92R4sYjbSifFy7weO+ZGt5V0rZ5CgnR+WPvbF73ok83NvEVi+cLjDCMmDRg4ZepVcSh5OpYpb0Cq+ogB6WBiEsyR0RSAFu3uGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779837154; c=relaxed/simple;
	bh=leu6TkxS2LqaI2F3Lu1DmQxUOY+56aKr/RGAoT+bb6o=;
	h=To:Subject:From:Message-Id:Date; b=aXUZDhqJjOJsIniqLCcL9nUfAHVWIBqmQGXWtZH1DtxZRM2r8exYpTgsEEcCn9JOHUaiTZJzbDhi7hoyCBAdqwjq0LY+D7CVR4WFdNdF3oukMo92SloDDQ4e9iU4B6RWjL0smvI2kQ4rQsyxFuopz7rPzue103zii+SN6mDLUp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcpIglSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcpIglSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA261C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779837153;
	bh=leu6TkxS2LqaI2F3Lu1DmQxUOY+56aKr/RGAoT+bb6o=;
	h=To:Subject:From:Date:From;
	b=lcpIglStQgKxUtDf/bWLYqpBXYAlJEOcaaWi6lzW1rjJeACybNgpHO73uSFQsgdEo
	 mTdeHPVsf6Tjht5WpeGHrVETL99iiTp6Bq32YxXGF+82crsLqZeiFG4/lC6aLkt5f9
	 Pw5RtFeCKlS6Ba1+I6BVUehYjdY+JBxrbdLYbMT51x/JeLElqC3KY0dg9/AXg5PacG
	 q/RhN/BPyWxV+1yVd9QEUuvSnWHcA0vZncTQJGMEm0JOfvZIA7b6SvR535D50XiG/b
	 edUVVsUOAFUmIg33sZNvipwQDduyyIxC2QSGK5GcYSZ4re0hnVBXHY7dJ3ksRB6u05
	 noUK9JA844zoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB91CD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 23:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983715368.21794.3794950618283937707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06b18e79e98f1cd7ac1446d508437863a50668d3a9aaca4fbe1328869f45b0a
Date: Tue, 26 May 2026 23:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779837153
