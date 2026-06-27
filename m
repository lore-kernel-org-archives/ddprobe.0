Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BD717B50F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782594514; cv=none; b=TApN5wpHWLvuBb2HshKNqg4WqG2v/z6o2nTJ67iWGGfdBvB1ZEANW185IReinV113hColvfU/K8McR9o/Rs3YvejPoHgxEpX6d7eq90CMiYAO2t8yUvZyjwLcG1mWW1K8pAj2+79dSfjmQGquxVoDU3Mta6eFlMSMLglByyQq88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782594514; c=relaxed/simple;
	bh=3aRaoGxXXpMtVu7JthPYPX4rCNWEsfk3c1d9fSv6ado=;
	h=To:Subject:From:Message-Id:Date; b=MuZy3r2t1lwvXAxs8zKRmS9EABM/jA6v0Qfqh08y/9m9y+hL0fIQdwviI0BhFVftuDqCUeOZu2Bl1MrwgJcnYHWdB0qLqJs/YEmWRLsZB9PzVuxogQBS63Xb+F5D1XouKEskJHubcB1W9DCmanQ8bcdXmkFnKaGKzt69pUJWTU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHARhEiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHARhEiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFE9C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782594513;
	bh=3aRaoGxXXpMtVu7JthPYPX4rCNWEsfk3c1d9fSv6ado=;
	h=To:Subject:From:Date:From;
	b=HHARhEiUhNMihRvTC2JG3M2tIa7+1PxHsfTt8fuSHFPrOGOhdcnJG7rLuTjQ4wFSG
	 bOZpJhaDkSRSSTzlmd120/3nWmXulEWjkX9a0+qg9vdHrrX0LQvK4vs3/Urc11P+S+
	 jE5JXCEcZkSJ9DSGjAkTc5lRHg2qn026ykWqlAzlw717nUNI9G5G6Km9cUrM62S6GF
	 iDhz5nqK7mqqaPpeFDLLgcrgMJmdC3xpq3TrNZv3NxlYwo7DhKfvFCfrUxVDaBd79n
	 e6VBaqeVcE1Xz7xg/9LkBaatZy2nPX89OQ5Dc1AJrUrdFZKR9kCZsVdI2Z6zkR1lFD
	 aimYp4K813GoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A83C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259451368.12837.5805814220830326790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30c1c7aa4ac03f501ff22ed2586c3f9a63440cfb8605ca0666873d50e94b666
Date: Sat, 27 Jun 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782594513
