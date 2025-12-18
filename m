Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6ED34AAF3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766073234; cv=none; b=n65RPBanpjM8YmCuYtTgloSncxwxoF4kqxmlFzh0DlZFQXiiiCktoI6zTkd31JVlYuFgYBtlm40M9e7cFe3z5JXz8bpNd0WWvnifw+I9ydxz4Q6UW9pKRnWi9a1+s1dn8KIJ5D4PkRGIXc4HSnvsDspnKVq/x4q1e2t4Bx1oPPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766073234; c=relaxed/simple;
	bh=n3P2fIKF8n+6hffcumLG9HQN0P3Bts+MO9Q1dowLA6w=;
	h=To:Subject:From:Message-Id:Date; b=jlTZpAj6QQBOhGS8ruT5eKmFHhqOHnKEKGazhXbPDGwUPQvQXapUScR3px0p0sUeu6oBNXavxnZAfUiHeDn52M2+tPLZfbHxM/5x4bPqWKrwV3qbyPct55Htn6ZOJg0j94z2GOePAWqB7zgzSIXjzQHEHTkxJWbFWDVjGZp40xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2LrEU5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2LrEU5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A451AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766073233;
	bh=n3P2fIKF8n+6hffcumLG9HQN0P3Bts+MO9Q1dowLA6w=;
	h=To:Subject:From:Date:From;
	b=I2LrEU5TYmo5jy9eHE+rrTQA7jL8JZy+e6y2LFWQYGlf7x+6IA53OD5FtNRKMW7FM
	 2LWkRwuGYCuGRfsVA1iEfEQUlYacwmpQQt5wdTU9NPmCe3GhPKoslcsCo886ja2Oic
	 f7ln+sGMI4yjsbHek5MUGA2HYH4f5oEl2Wpe92FflYJDcdykceygNnY5RyedPEtcGn
	 WwVKiYJZYLKRUk1Kas6gxhyvOnnlS/hzlbCNa5sHn6n3UsHcH2DqiEahlEODTnkklj
	 O1RgY3WL5NkoXItDiRTSWqr4j1cBiA98FYUwMtigxSDqOqioybwI5vVFrY5LSjaOPL
	 iPcrN9EHwuzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A3ED6D232
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607323358.18421.4854205992141442855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f9512981e599f60262596a4d12964d25e4dea548640ad99f6c1e74f56dbe9a
Date: Thu, 18 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766073233
