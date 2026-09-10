Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8149E3BED7F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789020634; cv=none; b=mGx+rMe5J7UL0yHAlbu2mzIwUQWQRxvIUVpwHi4eTnTkPckLOH3zmKa3QaOm+dmvcGiUuWNCVUdRx/Czf1Q15FNrtSgMB9UUO8kDTIJaKYaTKuvbNz6wdE1pKCiJd49cHgIBjDh9pNPReD/VFmwna/ds55xlNj/wbNNIXK4UDv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789020634; c=relaxed/simple;
	bh=9pf9lkrD8AR5A8fXg754L3x7nhpdP3fnq0xVMjzYwqA=;
	h=To:Subject:From:Message-Id:Date; b=dS9DD/xlEN9bVbtoSLZ1Q7wLnA3B3rW8GNOpqjIGzxxE/SDcg7QoZXaQsJYVeqMqLQi6Do978N+RrDTHfF8DZUFS6nic53NCR0jLw3lToA+Fz/c5bBAtkrmxtBhJyLrrRcaDiRwaAbrUDK+Nb95vC+c2TROaeP+SK2Scn15VCnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbSELaIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbSELaIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BD2C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789020633;
	bh=9pf9lkrD8AR5A8fXg754L3x7nhpdP3fnq0xVMjzYwqA=;
	h=To:Subject:From:Date:From;
	b=IbSELaITTXACY1uO021xtrG8VYI77Io+eekb3/oxaUhOklJVjSv8g2Dg5A7rDBSNv
	 APm0sB3jTQybkwwuGM/PteGT3BFzpZl1j+kXdmkXAW9nwiT6oARepMix1TIbpb7/W6
	 VQnNOy+q5XAd+CMnJhUjuTH4kg7WtOgosfY5hQkex6opbMv9rYitGE5r9uGrPqf1PK
	 5kK5+3KwmvZGAqzqVDJqQqItBKtB4jnz8LE1lmSguIZy00lOzAva1B4SXtZ2jFQlco
	 9K+U3MWBg4ybI39iH9rQmiA8Jm0u/mhnzfkcx7+XKju4NqVNWv1LO1kBTdPrJjNZC/
	 4KeAf2ZdnVfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02DC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902063369.26182.16435504110392639636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c535b43f092a4e40d6e62f2049223933499c9b6e948faa5d0bb9f3018924cc
Date: Thu, 10 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789020633
