Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EAE1F4720
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745875194; cv=none; b=fBnC3IfutlxLceTeygWBjHuVUJam52PmNW0tFxiusFy8QO6kf5KxNHUwQllqcRZso/6GTMqrkLo3YwnF0ki8DklQpxOdTvMkvo7uV+4D/XOB7qsOK2VPbE1MEbHhZ5Oa0IwKgLwr/jmuncQLjnaB0sncBqCwVlN/WhK3Kh3ToIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745875194; c=relaxed/simple;
	bh=jqHNMxfpn3eCpwrpHmPHZ02waXpl8NUTDFbdNFsapng=;
	h=To:Subject:From:Message-Id:Date; b=hKJu5hyMBTTd8YDWDLlfVQQX5xZxsBL9KcaxhbPPtdbVUpxC7joDUymEK5F+Z/XrA1jCDwkMV0GTAgb9EgObqJip/76gfdVnhOptsXFbHUAOCQ8JBwZhSgC807dg9sJ0wskzB5aPKzdY9X4cNh9OotoONFVnGYRMp2lExl3omgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/zQ1SCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/zQ1SCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CAEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745875193;
	bh=jqHNMxfpn3eCpwrpHmPHZ02waXpl8NUTDFbdNFsapng=;
	h=To:Subject:From:Date:From;
	b=o/zQ1SCPz02iYyKzdsSE0EIjski+Sq4Hko+a1Ym1qgdZD0NjhrhPJXgXoBxY73jvv
	 vN7Gyxv90IH/1wQVyIIBx2Zuh4wtWIjtpbVjuwNcbdDtpZcbm18zRRLZKBqkVzePtl
	 dj1IMpLbCZnFv3jJbz1AoVVsHr/ub14UGWFsnC+YMkv8kgTv0WRowgmPgsqcJg79S/
	 766tcfu7TRWawx4cbtcQGxoMbOCkUqidILdi4wB8StI5qfnyXhOqJuPi2HGJ860mNc
	 ZkIWFU9xJ4PPqXBIbO3Y6RM1Uj2CZGtlVIwcs97z4jMduARGbxPBAu/9Zvx1B++2hI
	 rW8nVl2YKlYyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907FFC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587519358.12632.17082622362350699324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23dce882552a473c85673cc70aa2b81f1e4bc44c4b2ce8046c47c1ac7971ad7d
Date: Mon, 28 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745875193
