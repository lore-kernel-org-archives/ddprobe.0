Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E104F85B7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789668034; cv=none; b=k2Sq+E35zvblHtvXMBnBuCSOJU5vcrtIqPc0XgnQAt0RtAcTVqpHBDz3jVYvuNsQB+OIIYK+UGOaqbca2wH80T3ycE8mweSX5zh/kuame32wDAD0Af3nyCtwQBvjcciMVif+lsds6wo/mELwasi17VVbxJ8XqW44kR3vEbRmZC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789668034; c=relaxed/simple;
	bh=TQlejLBldZFilNTC9wwOvzIJBUqSLO0kxv8UMHJZBhU=;
	h=To:Subject:From:Message-Id:Date; b=aK/uyACMVegC3GSwd3K1Hlku8b0/Rulpmw00Pk3+JDOJG1dsTjhNJUlOXup3X46XydP061QcKW1PYHwtkOcr55FvfjSTZV7yagx6Y0OY/pWoarev+ARv6XmPFRhbywhH5F6oPimcVb/4GsrP9IzJxPe1MyTFK0EwB8Qsy5n3274=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0Ij1Bm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0Ij1Bm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A14C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789668033;
	bh=TQlejLBldZFilNTC9wwOvzIJBUqSLO0kxv8UMHJZBhU=;
	h=To:Subject:From:Date:From;
	b=r0Ij1Bm1umGkqA9dGq3MqoQWRd7GFQWgaRJY5Sv03qABdzvPf3mds7WXycxMPhNqM
	 EHHrk4nM2r9tT9NzAK7X4Qm7xMQoGYpz+lm3lurjTMpE8gGeZdXk5FlTYiEaLuuAzu
	 90SJybXnDL03OXQkvXboXz65yUoMUZzpGPaxA3XsXLmnEu2jtvxYiHHs0b6+KyZHEu
	 XF75lh6HFY+XNuSJiSJfKCKqFvqcdLnCw9uSzFuiNNzbYNcSEbk8X65e+JgVEblflo
	 90C1gLEJLwmcJ89X2JwuvF7QDXmWqyVhh+77qpnoD1q4191diCkAMrXcHkXZT/VVtO
	 EfPgsQgVSMA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6CC982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966803369.22959.13574281840629489566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd481724a0f30a0f4c5fc3e96499746e4eaa0d9ee55af6cac58ad5c1bf656ab
Date: Thu, 17 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789668033
