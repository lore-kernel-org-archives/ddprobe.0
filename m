Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC9A2A
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722789954; cv=none; b=pKRdY7uCDRs2eI7mzNBYQy3K1ITJgisJTDPTAaq1V+tU/Zvk0LNxpmnpeZ97wKbml0hSSP1pySjuSizf4J43tv5A6dKIr+hTUeCxGLWaCEp0Ecxg/ERsBUBII4ITXdTNkDr0mnZi0xtd+eVoKBaj9z/ZOc7tjhlz9dNVS5WG5ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722789954; c=relaxed/simple;
	bh=YSDnoUw72Fa1xD1R8bXTb4ZYOMPFdOqMWpLNFYMiM/s=;
	h=To:Subject:From:Message-Id:Date; b=MRIIGrDO/gygKiA8QfCqF3hfamfjm3DaX2aYgnUgdzJRWqUsQN331Mz4PPXK323sCUBs3W6tzkQ5e39aVkJy8zMeLNjCtg9MPO8XHXmE7fZv3QOF23zRKDcxDRNM20Dr3UgbGRSsKF5h+fU+Afh4n4TphSFeo1IBZCh5uVdVkaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaEQSI24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaEQSI24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD29C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722789953;
	bh=YSDnoUw72Fa1xD1R8bXTb4ZYOMPFdOqMWpLNFYMiM/s=;
	h=To:Subject:From:Date:From;
	b=gaEQSI24Hj6ZpAJ4qHbCd4eqfYapMd0/uwRfbhks9sT9rBfiITa9maTduECIQPYRr
	 74RHIqwlLx4+bGuTaDpyke6Enq1M0dCwhU0ZKVPSiZcXRyP8K9RcR7PKaMYi7XPaZ9
	 UwA55AkO0cmrcLuZTGJcHvT11jyt2eq/wV4rMjR+TJMDtuaUO0eM1Tv5XT1fnH9rJG
	 XohlGYZiZWso+ym1zEUV5RR2w3s9FXbZEkWrSDzF4QXv2a5rCh6mK/8iWBnlZCxO0f
	 Q6bwxUFLq6KRk/Ey/3hSvqYuzMBIVpFX4Z4MV06sUjjToNRCt2WZ7sv1XVNfDXboYH
	 BDHj7yTL1T6lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98296C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278995359.32528.16649983816003297872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4910d2919893a4b1081e0f1df847617d2ae9fcb3bca6c2df577f1df8039060e
Date: Sun, 04 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722789953
