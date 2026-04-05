Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2833FDF59
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775347534; cv=none; b=eSWS7hIK3jZRV0Oso86ntxk9TgcgluyW3HjUWyZXtemrsH0k4z90EJUll9FS0Yj0pNe4jJF7G5CQXMKMQpH4iEk/SNbg4Z0Btefhwhl4R+JQaLs4a7hpHoaR1xlMULKOGS6ZBLnUFjz0/dLhFLW8y9OfYi5LKcb9YxlcmJ6l2I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775347534; c=relaxed/simple;
	bh=kPfLu1tFIEMNlD2T4LMCXO82t/v5S5B0587MWqLNa20=;
	h=To:Subject:From:Message-Id:Date; b=W6jhnK7plWIyE/jQvvoCQYVgdxKBqOoZjYscwDRus3K7FUkncRL9NhVKzkEKkJXpWndXV0yfa+LbNYCUbYZmRy48FH9JJUNbrq8AmHXBj657NNpkvtsrYMLnH42zP6lHhAGwWCiOIqgvp6oYAsFgBjzkuFr9x/aObaG7XAN7ZbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QF0N1NZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QF0N1NZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A3CC19423
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775347533;
	bh=kPfLu1tFIEMNlD2T4LMCXO82t/v5S5B0587MWqLNa20=;
	h=To:Subject:From:Date:From;
	b=QF0N1NZBk2C+2+LluxITjeqQXjm97DdPuOz0h5DNt5dsG0K3Vlk93F+C/hEvKAhLC
	 0V+egrGOwcwmt5C6fUOgVIRATrU8jxQy4W10HIstRKrj7v4ej2D5xcmRZ6UfCGMX0z
	 OxGTWsndkOIx9uTVMib4T8mZyveOd8qp3ittPcSbJrLep1bt7ojUJ3zofieFWRpSyx
	 8fCSVylxu+t88rX+ox/3FF50sXkXxUu8GjABiY2A0W/cc5CsfWto4jNBV42GCGTEvq
	 KyvfBUQnOYSRMFLLys/hIUd28vcmZrUMzJ2BgR0YveJeWw/D0frTluSXrhwvay2fXB
	 WRIIoloDh8STA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C9E63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534753368.29047.1996685415413212589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fab8418971ca2c827dd9aa25963587521d66a8b86f5c9863114e3a3ac5690e
Date: Sun, 05 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775347533
