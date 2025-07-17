Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C5295DBA
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752746994; cv=none; b=GK+cVVhioftN81nfo28M+K+OGpdAqcg4zxqcCVwC0giM45Th2Bp15H/sc5NONqK5THRpPxASsAqBM0stjoU2MDuwktDKO7eGTYSdWW85u10LuQLDx+fDfUiu+ALS7dVbSs992MGg1iYXVKeLqJWYpzcSzBirnLn8mmNtsM1aRAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752746994; c=relaxed/simple;
	bh=3jm87fs/YNi63bW4AM3SheO32CunDikRWv/TZbWQ98o=;
	h=To:Subject:From:Message-Id:Date; b=ZdFqTK+GcgiWh/oByK9CptPGP/QMIktLRSwBN/uokCznU2ycYY7On1pwUYAuNpwOPSt/p1r4PUYI40QTwuSt2UwgLjybAEOW0ZBAouvYentNh2MWoY1wabbdfp9sxV44nByuC3/kNScjN72yYAJVhJ7Lcj3mqKqpNTlfY9V/k7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyXVBEYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyXVBEYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF43C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752746993;
	bh=3jm87fs/YNi63bW4AM3SheO32CunDikRWv/TZbWQ98o=;
	h=To:Subject:From:Date:From;
	b=UyXVBEYjBee3OTBoU+9KNlB1BdJYsNEksLyENlaV5WyHVWZr0zG387LuB4Jg0mgQD
	 87FwR58U6ZqR21DlCOfy+h63YvO52mcc299R8l7PE8K0r20l3rrO1Fy0gZ3py3xWlt
	 cYbI+J2C4dJbcta+mZN3kDInQCUXZL/dZg7cgx6l1lOnY/J7XEKq3kTVoneBVpNwCl
	 EoVTLZih8oAgwXVU7UQp79OohIu1OH7QZdiYKBV/AlJrYZvqXSxqn71FBUuJDY1eeU
	 pCPotqvJI+za0DZcpf5Vqfp4O5xSpqbqYqEIqJ/fHO63DSAa7Dm4PmxdQmBboCIYpL
	 ZyS8Q5Gv1PBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F2C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274699358.32332.14278401132984953988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ce7fba255ba500e9a5275cf00f938d904b3b7c422b35024b25281f39673457
Date: Thu, 17 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752746993
