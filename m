Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2113176ED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756280394; cv=none; b=QkIjWYdYyuGePRNrPUNaqMmBswKcRVz7CiQhbfJBaRdzBzmXw5CV05mF5JGgD70AeMcuQIq8VkZ86LDdI8zZRjr1h5FVBbqDuozXZ/zr9Brrnz6WyWPDkS+s4CoXdUBvRrbzR3RWlhbgULQ16w9rIFDK08ieorvi4drxBsU1rcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756280394; c=relaxed/simple;
	bh=Emgf1deKuAolvtViPmOelOIDEAt5Fd3ucEc2uSToCD8=;
	h=To:Subject:From:Message-Id:Date; b=tYlurik7bptNZzi1uAihEd1uXhqIvJVMyBwC/9gswxR2BEnVimurnyvCUea2WJEXr4Ihq7xdp8GTQkebkQDgla2o8+ywOKY0RIkwvQl30oqI7n/16/9R0/W85TXT/n/1tOqzszRHiHT8b8YlJmHVXO/F1Ykm8LttJwmela6ynMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dayxmJaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dayxmJaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8B3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756280393;
	bh=Emgf1deKuAolvtViPmOelOIDEAt5Fd3ucEc2uSToCD8=;
	h=To:Subject:From:Date:From;
	b=dayxmJaCdCEswy1ccB2YWGdarAGPMKaXCnZ2ihPS5c2lKs9S7rOrdWZtMYEZqdRfZ
	 +9DmbOTxPxI8TAZPaz505tQxo7uj0hEv4NqzlCTj6VHrMec2cTHl6oypax7Z/I9+Am
	 s6Wodog4xyDUoA70EI2g4gT28kB46YVFukJUxjL/t4uU04PVVVSzK9YylbaoYxKrY5
	 9A+LLcSBz4OFj3RRiDUsb3zuoljBXHnsoYuqducYgJttjcONeLnWgZuIjYgO6m3yKY
	 vqhbZrrlbgGT6M3PWQ23QsgEjkKgEAxfwOOiY5pGvgvNqjDpV+jdjSMW9S4XoiBdM0
	 TRzdMxen8w3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED34CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628039357.19468.15177513485398644408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30b1e449e48834de4ad1c3743c26b504033ffb3e2eb38c8895a0e5250e2f1cc
Date: Wed, 27 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756280393
