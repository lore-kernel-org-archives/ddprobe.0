Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A129A2
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757131794; cv=none; b=E6YPLb1qw3tzcAV6APrH6OdkgAoevRM7l4A5dRwMbLtvrAK1xlQ8Zl0RzZL7cZfHrs8/Bp6QviODdAZ2VKDf4XmT4LNctdfTdcYv9hgmUMKqusJzBq8mkeXcXEOl1bjiQ1mHSDRsvRvaek64n5JSVNFhb72XqBCTpWJOjgaCnrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757131794; c=relaxed/simple;
	bh=XXQ8j8nxSmCpIqJUkGgPo9xRn0B5lH9yUHRQa8bDdpA=;
	h=To:Subject:From:Message-Id:Date; b=hiMspuUgIMSI3H3ULocra/K3PcxWKPjCf5E1lqMT/+BFYWBy817N6/JW1pWICO8tVRG4twWsJ0yW0WtNKnmIAe25cgPOKAvYRAGwx6lE1NnotQU/9Sv1nGwRzKB2Z/qRN1RdYY1Sy74apIDzzvca/I18n70v3sZchwBIdMpJfcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCANNeC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCANNeC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A815BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757131793;
	bh=XXQ8j8nxSmCpIqJUkGgPo9xRn0B5lH9yUHRQa8bDdpA=;
	h=To:Subject:From:Date:From;
	b=uCANNeC75sul9r5CVkwyQOhkXpKL0W6MjzNo0uGME0NCzbVpHJxDw5tQXuVMqRDpf
	 l6GLFZ2AB/QKcaSv8KEgK3tr4VUGHS0TNwfKK5XGQ0BgRxK02HEs3qS/NV8S1G88lW
	 JNNX8DMrRTwis63fRn68BFVikCFgEvrpVMXEXmxxU0IA9wyX4DnYLzEDEVEIqdoQ/V
	 leKNZfaT6xBALHP1aKtz8Cpu9yfIGQyHb9zlQ0t3JhOAfkwjVyJebKFcqGEfdRswh6
	 HIpw+uk9VD8y/XKp2Ax7hCYhUN22HIKMqxnUkjt4F9Z2CEY2UxC/i9hl7ysYpSq6nO
	 DmZQDDJBRa4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B7CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713179358.26359.12153239887013909842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecfa0b6fa46d5427f85daf0fa4936146c7d58e3a61f78424836117aec17c5ea
Date: Sat, 06 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757131793
