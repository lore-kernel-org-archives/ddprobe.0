Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289CF1A9F8D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757225994; cv=none; b=sjeiqUgYhhaQrawcLriOW8i6KJ7NOE368tRJ/hHkb2LdRbGncQoumbbc9gqWpXpryTTagcxDYaIRYYfl985X+Im48cIDhPEhIpOVBZVm37xwxMjWRYHNI7PX7UPvw5yhaPlJ/R3YzaZqPCQJISW4WpEy1hpEJ76X7YIydUthDfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757225994; c=relaxed/simple;
	bh=ogVEyC45kwdG9p7vKZUvbhcK0ofCeC58FLzZbeSNXIE=;
	h=To:Subject:From:Message-Id:Date; b=E4Qfb+c3tPmr6ela6Q/vehdaJYfJfs+2pfuUus3FVbgQozPBZDCH2157BSRhvAkJkWLdqD4KJElY2b/1b1uQQKw34Xt1lWmSjXP7fl8cLcThNKuZzR20tdqvYt4+7SKUuSP6XNHCdDv4PGa7lUR9jhQSk4cVdk4OTYmkb6cgHVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qU4ypvXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qU4ypvXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757225993;
	bh=ogVEyC45kwdG9p7vKZUvbhcK0ofCeC58FLzZbeSNXIE=;
	h=To:Subject:From:Date:From;
	b=qU4ypvXRfVU0gSpu7DywTZacZ8g/q6DDVn5r1rsRi/pygxGeHhgQ2Z3Xh+msM8COJ
	 6stiSZuPi0vUYko3ZyiqXbfL2U23BsftBIDZ2Wm/nEows7nLOmqjq0dYGwFu82Qp8i
	 qsQPRFEug1Cs3bJNlDZ4fEnXZT7H1n+mQi1te9p/RqwAcUedfVJr3IR6wn8NkBBNrj
	 y2UiiFWHPnw84/MRarpQuf4M/kYBkLsdjBbBD6/W3RnTce3BoT4amfY9Zm62XudtE3
	 ed2wKJ/VqhJZ8PQBpRByAXyK6h8iL46Ct8l1JSLnGLizvEw0eONHzBLTdezuRtU/wH
	 dkKuCNNeZNpng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D41CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722599357.15204.18253907504216506867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca0c3dc01adb17b1b868ffa5a1db6afbc0aaf91afecd0cf944b62da3b9f9118
Date: Sun, 07 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757225993
