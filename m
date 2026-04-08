Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206CF3B960B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775645134; cv=none; b=eHhcWkWueLe9ZrgF5nKWykkEWiP2Y16ocZow/rJ6FJ4flTeYNzTZEbl5m7ZoNrWFn07CaYVu54ZBi/EDZKz9KAPiHEWnYxV3FqiQb3ie0M5jvnkLqPhTfJBEpMUAvdtkKIeWoEzl+niGqI0ADYF8YAxqNTSxF8aOeCkcF6VL0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775645134; c=relaxed/simple;
	bh=v3lF35l2mh2R207gnyYz2/9+pJ0DBnxsHmbiE2PCnws=;
	h=To:Subject:From:Message-Id:Date; b=ukUefVnclaSx+pdOM880WF8xXpZL5RRmHeRXv42BNNWsByUh4jLzV/eMiayUyJAUfre9yN2pgcr6aoQtwxGlJFNf62/IdZgSEEJucnATnRW5lSJJVcwOdF6sNTSQRwPKg2t+thtotsi1F9i7IKc6BoSL71RCFM/zvCyOQ3H1gc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uW+Ztlzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uW+Ztlzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09BCC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775645133;
	bh=v3lF35l2mh2R207gnyYz2/9+pJ0DBnxsHmbiE2PCnws=;
	h=To:Subject:From:Date:From;
	b=uW+ZtlznMUzQRKq6GdzwLIqx3YeiYEpmx2HALa67mdqAdqrkO8p9L7IkkoglxZjaP
	 EHE2i7aIkfWR8s5P2nBCnd+GTa70+fAcFY7Ndvxio+AOfPaptoTBW/VJRihuU7+P1O
	 HL3PhO95PaawAIeVbBFkvaVWztVzvFzSRRNjHy5x87JGmAq9hOA1zoHs3Z2RA5Hd7C
	 dV7S1gbw0TdBgMAk3JP/P3VCTIkb5nbIb+DLACcK6S71af4bxPRzP9xaK15swIc0LB
	 7Y2O/kxwf3z00ZaTtjheP2tlEI0HwUelmtMZ6D9dUD5VfFvIIDtJaDnlH8G4MRR08i
	 7It+UY7Gb2aEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43E1073C8B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564513370.19828.7768070153521977202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643a0e904c6784bf5da73908edaa1142e523779a9b910479b96b08c71c3a4360
Date: Wed, 08 Apr 2026 10:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775645133
