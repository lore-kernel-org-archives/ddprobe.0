Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AF84AEE0
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713772823; cv=none; b=NNZRaRtFKOVbuGUGCAkmoI1T0JUc7k2bUFijSPAQYjyXDs7oiSx+dHGX/a2dDpfH9dD3sR4IT4ae62f3tkuxHTCQamyF4cP/+nbnpYFNyN7dbS+NpFFcka8AQSpTh88b/FqRSfOP1UTniQp42lZlSrRJi/hjPl66pkr7Qw/dI9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713772823; c=relaxed/simple;
	bh=g/2WW04wFHDWgIr3r7yh08jjs+2jRHkk+Q8w6/O9CwU=;
	h=To:Subject:From:Message-Id:Date; b=m7dJaPuQW1sbrDp6Xje3W73zk+JTGeLZf6jualzGvsX4P9j+4QGOoa4MjOPQVyBjmBolUe4WLlyXgW3CIJhoU2iZofrvLK4KjYA5qTv7QdU/kC80WasTAMs235bLRrCavDQ5AMREVB0DmiNkXmjOqq4e8srGblKE65zBpVyU1Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxuMiIGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxuMiIGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF236C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713772823;
	bh=g/2WW04wFHDWgIr3r7yh08jjs+2jRHkk+Q8w6/O9CwU=;
	h=To:Subject:From:Date:From;
	b=GxuMiIGyGYOFVE7Z2iUjRNFvSkDAJPT+OsYAjeacgOoYJnbQL0CSqnxOez5qW0RP9
	 JfqzweZdcV56Q2bMF8fnCwxh43fefCMybUukdgCbQ8iMdvVpm9+bKfPKoShIfEs5GT
	 jsCzroDJbw7BVKugFQSBnat6uQLCaAShH4DJHCuP7xZZTTPZVeRaJ+mEI+ynIEX6tr
	 46sWhVCVpSHZ7OtdQ4sKJqbaGW5z65dQeySJUyK7EEriIRfn9xZ0DHX/NP95ENpSxG
	 kk6Bw3BH3n1sYL80KIO21F+9wmu87DXRkyUdffLJqUbPAt8LLK6TDr+96UPBXii/yb
	 ovGlHi0goz3hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2753C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377282285.21922.14698478313954872305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dede4fbb8914054271d8d9cccc611531bdbdd28c10e07d02959b178a9f93c7f5
Date: Mon, 22 Apr 2024 08:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713772822
