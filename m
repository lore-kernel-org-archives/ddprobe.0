Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49539390CA3
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786135234; cv=none; b=MOyt3NJHwDoz3x6F1rbYXvbjSeNlAf6g5Kdbqq7sTwJKygQDCXv1tMaaIbc4NLQ0uNGZJjIng8qLqOd9oW4eOeyURCRGv0B9FTIbfgcdz/E9s0XEK2uGGDIofP1mf9WrBZpYprk5+dCnV9otwanW18SY0tJiQXnf1+Q0aB+sgJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786135234; c=relaxed/simple;
	bh=ZKfSr5dLmWYm8DSSAhzqMkrHXZagL0m8b3a3TDONADM=;
	h=To:Subject:From:Message-Id:Date; b=abr+7NxRDQ2u7YdlBbuG4JNg+DmysLYnuNPClpkvNNJO5rYRTN81AP4LYy/7PaFEQ7qFI1qquEEQcnBDFCTIuegoibVPda2Fy6RQb9ZUrMBdXdbTAD0yD6oNRAVh0gey0DmvK35kYTKhKxqR2q9h+z1ZRrNCBnjJrR68r4PC6WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l25ZvyMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l25ZvyMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE8FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786135233;
	bh=ZKfSr5dLmWYm8DSSAhzqMkrHXZagL0m8b3a3TDONADM=;
	h=To:Subject:From:Date:From;
	b=l25ZvyMnCiSQf02iFUYFp6ovatjU2w4TwRAETSFOYLmo0QkVrrLGXiFVGDr8+xzH8
	 vaqa3/nJziky/YHZRgPjyS7vlMaZx7A9EaJ1HqkPRctkNifBsIQmlQWLd1/QSM12IZ
	 lm/HrDJ7skxnFwziKb0TYvThtHfOL9oZmvPmP5A6v+qxRj8jgljXy2jsQdpM9+yEWH
	 siuTkTxNNPm896PNeJGhJ+CRHATYe1bWXkrY80mMRgKtR/JZEEsFy4MidD33ciQZgL
	 A1k2vBXlK42ACQ+CNGdT5+PzQBzW0lZ6qp/xcoQp+1/1CG3JBuKq5dageF/mUhuyyg
	 4tAWJKSIK2lcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA974C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613523368.24323.9495472058645448320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08786a1bed4dff983a80e0b26641f4d09b5144798abb35e7fc37d5ce6baf7834
Date: Fri, 07 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786135233
