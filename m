Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C143107A0
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725689754; cv=none; b=dPA6XKs8FVOaq8Q6eFmJRkJUAnwhyRXbXL9sWsAWNS8Sq7Ed7ftFLP0bJOaBpTs9Po4NmL/djBK+4WOfxRL+2ykT8IILgAfeySJfixwDbUKsbmtfD9jjqqqpdfToXwkP9mr7DH5kmA8sXXC564m1k7jlZyvW60Bwz1Czrv84Geg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725689754; c=relaxed/simple;
	bh=D0xunOlLn6x1fR9IctAswMs8p9J7J6qBAqHJ7v7orMs=;
	h=To:Subject:From:Message-Id:Date; b=joTBKMFDQubFKGCRfDFqt+19zhkZx5HBcsujEiRss/wVZhgFiNTj1rfTeeL2cuBWnLCn4frCEVrO4wn58FJvQIrgSVmafPeBQeTT/y4tAhKtrb0m2ihdEbFfIugFiDz0hYlxojxHypJUB/1fFRAJ1AQQB4p89PH9PvFdz2mynok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB2bgmXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB2bgmXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB347C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725689753;
	bh=D0xunOlLn6x1fR9IctAswMs8p9J7J6qBAqHJ7v7orMs=;
	h=To:Subject:From:Date:From;
	b=vB2bgmXSCmifrD8eNtNvzd89fG6YSqKVkF7jyAPNMCcO/Usfw5ef6A859IKml6Ipd
	 G1+LWwdza8CwTqUqAflXoLSBOckl0MWKlnkilYHUSopzySBNsnA4YuHjH7319+icYG
	 /xqjFOcQyvQ0LUSjrVlFOeZTVw5MA1zWxZDfTDF0PhiQXmCozMJYnZRU5aQaZceGrn
	 McK6Juc6lr+Pmfmqfo3ZOcvENb2MhsG9N7EqKakLJgyKqYCIkHVamJVUTCz4V0f8wA
	 V7vNUS4Nlv870gJ9L1jbfIYof9J3PmJU4/P+Cx9MFZv1JyDlhl0JmhOE+zqLoUUvth
	 1tD54PL3xUwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9960DCD4846
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568975358.17628.13455097653281836682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2d47aa67ab7bb08864415823eff642256886026c38dc1eec8dfcc0f53732d0
Date: Sat, 07 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725689753
