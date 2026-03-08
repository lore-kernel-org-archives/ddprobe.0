Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197981DE8BE
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772978694; cv=none; b=AUbH7LGrUFUvawcZY9olZel5XAToEeXpafmjRyxFNN6axa2bfgcCayL5sTbLif4oG3wtn2M7QLcZpBGRWJKn5DS8rqkhamwil0QCF5L4EUdLk10XhHQNGmsmb3sOoJpMnD004lJ77J2VBWs50xSIcHDl8PcaSztW4Mj6L0uTIPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772978694; c=relaxed/simple;
	bh=tkdU3CWiHlUifTAUlHMQ4/OHDjU7iGF8ixnCoHI6R28=;
	h=To:Subject:From:Message-Id:Date; b=iQEPdIuCYdC0Vw81mVDsnzn5xqpmhQJiVel8RbUPFDi7RMhcoDtoZWYx/UOdtBBLxCFvdVj8i0YqdA2KqlbPgkmlTu6cJKXk6xFpAAzdwhuOYzaUiDe8HuBozhykGaLZpUAvV7mx8kxtxA9kpJCW5OAkaEOhad8vxpyJqS9oB0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn2qLKGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn2qLKGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6674C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772978693;
	bh=tkdU3CWiHlUifTAUlHMQ4/OHDjU7iGF8ixnCoHI6R28=;
	h=To:Subject:From:Date:From;
	b=dn2qLKGsE7j056Mn3LX5qFJyH0E9fFJgTPWRNvfgebiwB0g9RNwKwoUo4NqUnXSGk
	 EErJmNwXJvl5ZOXXhZC4lECqoix0e0ka1/1h6kKYJxiBZ7Vrqj8TLqNwAuYWjAv1Bn
	 5rlGgNLhMOISEtqZwG5nBiUweUl+Tg3pVpqfKe0iJPs/ald/COJWLi2GfnFyBH6i1Q
	 neBff3BWHRg7SYxKce1BYPlpTj/DPslDKVIdPm1Pcy5nb7T/UQL2jy6RGprnKfzRxT
	 Ivr8u4nmO9zCPBQc/lK4McMEGMEItJHaGaBouHDP9F5lN/pPYY6JtI0q/yiG65DWbZ
	 Kh8cLpwae0ejg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F73EF5866
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297869358.15735.301324779932421035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7374fe8cf96e75c8b55be81bd5172b07685ad691e8a0f6960de04d9c3558c46e
Date: Sun, 08 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772978693
