Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8F28F7D
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735854954; cv=none; b=N+FEoAUgquB3952vCKM+Gmpuuz0cenxZy0s9Ps7ot4JeBU2TCZP/g7vri3cBWyso2KOhFeXzPS75KbwVYteyqsLsSWZtlajy5yGShQt0s+gAm7QZVihF7khgEhvpulsluxATBbKLrZ83oyErdwJOi/Q2ZAQrtY1tajlD2GIlZmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735854954; c=relaxed/simple;
	bh=9fDoUxEMKuZaXvEkuNBDpqETcOtOq1eTX8tarzJqUAc=;
	h=To:Subject:From:Message-Id:Date; b=Z/3uHLcJkVxyfxpJAtkv+kjGPvEXJb6b5A6HZe1XAbyEM2mUJa39eqV87VPr8TlCwhC9j7NI2741raywZ+j95L849eSkJRrlbddxfPzq+8cpzhFasdjQe0P8Vs/kf9/cMLx2Z93fJ/2720oFjne2rF0SP96PY21y5Yj08k51P3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enJ5gZXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enJ5gZXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56D1C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735854953;
	bh=9fDoUxEMKuZaXvEkuNBDpqETcOtOq1eTX8tarzJqUAc=;
	h=To:Subject:From:Date:From;
	b=enJ5gZXgz7LBAtrFpVgnLwHwSM9uFu3MKZWyay3NGNkDbdFMiXUcHb0zVVtOGuYXn
	 zPrbIR4W+PpnEV5SeTPKzs1RGuB6KMXQnrOsekiLWKZZLMToSFBukozWehzUgkQHpn
	 3H+yOwjNUhr9eQYq9lqVF+rHvB4Yv3ZtbOeg8U4IDHxJrzET5lGETxa49Op0OvV4VA
	 HGEaYCMdhZD64fA+J/lmQyt4s27TcZ3pWtiOl1tkT6ooGjXSoKorUdb0E2rlzUdZ6t
	 XgHNaQs4YUrbQNbgDHIWVZkJo08pV2NTvXh8yHptiyWkwhubbP0XAMUv6MJjL2pW84
	 XfEFSUXITLmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902BCE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585495358.10043.12551718075011715937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fd26de817788a01730e20989992a1d18ef87bae3553b58ab3aaa859df9a72d
Date: Thu, 02 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735854953
