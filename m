Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467ED40D587
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781972194; cv=none; b=Io0fys1oYnFmWv8QFgv4cjrqhzzrgbk8sUe1YIqJ1nHBWrI1ktjlnArdk7f9eegepOLJ3CchAvDUmiLVcFH0pt9PGRVQoR/MPWVhbgXENVaW8bbef4avoPwD5Hh1bbCepHlE8miQomKO94sVTrUHpMTld8ENxOzSG7+lrtqA0+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781972194; c=relaxed/simple;
	bh=+xPwip0Vu8TVFbKI8QTi4u1RUSGhMn/Wkmu10oiIHH4=;
	h=To:Subject:From:Message-Id:Date; b=AJGyU3JJMU8NW6EkgfMHbC4Lxwd6dhXKPiAP1yRT5xQ0SaSywxaYl+I8bSRU7loQOex2rqry6aBstmuLG/9DbZJvxsL4dUykf5SoueZ79qR/SIpVVvgROwsERbMiZ5Ycvn+LxBimID0SZUaGEjnsFNNmA0WNUBJffX2O8TNeDwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gN+9WVnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gN+9WVnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1884C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781972193;
	bh=+xPwip0Vu8TVFbKI8QTi4u1RUSGhMn/Wkmu10oiIHH4=;
	h=To:Subject:From:Date:From;
	b=gN+9WVnHps6sEJXLx7q9i54rP2WC+lLw3HyLUGHyAs/SxXtlOybwrtUA+arTBvdul
	 49Pjg35bPz9cCYL65EDTxAoSpvC0aulf4pWrzqP40FRMOMrlVUXfaE9l/dTO2ZjyqI
	 Glj3DT7d9hk+fmGDPe77Qa5oN5DyBwYLzaLRSYvhh/90ZAWaCAmXbAafumf1r9CfwC
	 CFNnP8c6nq68HNHvYZuJwaBgX1PJmW6SC0jNA5llXMJe2tp1HHqg1KyUhEm6qd5gh+
	 aNrkYTAAEsK4j3xCjoIdQNON+I9WKEwRpzyaLmjv8JMdPRPjtoJV+PbiUHvz9rP6zm
	 SmzNtWJXjiOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BBFCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197219370.10457.1274036961833827175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd4aa3b6a8a897f73ac6d9ac045d0411328a55fd7668f2ad5d5578d18753809
Date: Sat, 20 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781972193
