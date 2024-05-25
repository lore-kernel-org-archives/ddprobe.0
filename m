Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E1DAD5D
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716620063; cv=none; b=CXAEwuCaWjyMY6vQQ6v6A3cYTu+IDZSv3lkBMTdy3BDPWQnYE3vE3A2+AvZCXsgxpxDu0js42ftaoYdWLb5tnYJI1q0kKTximZjWT2YCOqjavpEF1AyyZpkWkRmA35ozRTUntYX03rFIzQteAuwjcznTVMMWZvRNNUNeb5bNVMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716620063; c=relaxed/simple;
	bh=sAb1/pYTlNRi2klq9SA0Fi/Tli5uzu2J/7rb6vLCCJw=;
	h=To:Subject:From:Message-Id:Date; b=RCRQnNAI3xu1n/8iwTnbIkgHa6fUb/UX4bDBK+dt6dYblYMZ7dFawJU+DPmNwyVvvuoymMPa/oRbqkxijMQZAr7qt/vWqqPYN5bkVmZ6R9NIedHtjGS4M7Skuk928YUtM6MOG57QTPaHngmaRylf9QKrSnv+38XRgWdVfHMybTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIbIB0kX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIbIB0kX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9EF6C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716620062;
	bh=sAb1/pYTlNRi2klq9SA0Fi/Tli5uzu2J/7rb6vLCCJw=;
	h=To:Subject:From:Date:From;
	b=EIbIB0kX4zZm/z3tav5dvn71gyqMeiD2a6EdgEk7jvZVDC6mH7ixH0GyU9q7HKGWd
	 lZOhseLScXm0VADmP9ad3cuiLSaV0Iyzq2XtCZXseblpJASs/Xj+1p4exIBszTDntk
	 JXdG+JfotJvFujpaQBXiF1xkHbolPUY+C0ae5mC3HhGRUlnVIXUBEqzzE5LcUF8UoI
	 2os4CF0kdJb/7FUl4pgn5aWnh511fklVF7N7VZnZS11Qaw5ElD+pp94uvQMPs3xa6B
	 m1gmwNI2N2KS/nYzQKmGVk20UYT7skAHRPjZ08z70vCD4oUn8/kP5AYDyJj0xJRFn1
	 98ctIBN1SgZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11CFC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662006282.18395.421371340502434173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cca2ab7a6e31315a042384b41e55317282f19d120177cd75d492d96e3421bf
Date: Sat, 25 May 2024 06:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716620062
