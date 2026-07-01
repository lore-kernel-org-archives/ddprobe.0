Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A748123B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782909514; cv=none; b=B5atrx9MHvWcudOQFtJw0QwZ6U4Saa8420w/l4pPiWl4uJjD9n5qrIdcw7yvFSeFqlgMXyr5StphVP6kMCiLeK52iDI7VjQkrsAVIN8Zla8S5IUCy3WlWoP1jmrbfDF4ym3AcI/sCe0sLVhmTUpXk91cDR8JPuL2h5lUaTo/0Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782909514; c=relaxed/simple;
	bh=jf7Ks7GS5g8ThyA/FEjQvMQFNHVEb9y5T6i81vnJ7fI=;
	h=To:Subject:From:Message-Id:Date; b=Hu9d0GenHokFadCelimJi0uhiOxX1/a6patP2eOIhc2MM697MXgisO6bhpe3gJmssDFTY472CLTAXx2l0AQox+m5rhOoLfdhdJGW5A1DYyjac1zLsZwpdc9udXcNOKOW8OZctQEiFKRa2+M4KtG0cIh3hgmRLze1IN1jbLphvas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETM2Ybs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETM2Ybs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE87C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782909513;
	bh=jf7Ks7GS5g8ThyA/FEjQvMQFNHVEb9y5T6i81vnJ7fI=;
	h=To:Subject:From:Date:From;
	b=ETM2Ybs/3tHYh87TzwzIykLuknvfECmG8phpXLWW3b2Go0vGwrkliSws7Qo4QAyjt
	 06Y8HCiD78+da3gyGGagLx8j7uPO1aDXlTrQHMEr9LRA2NqQmbizxw38xX6NAvBoCM
	 7lH1KjZG3XD9pKm5H9XP+gCYEWL5VxINnBLyRMj45UljlPDp/7YyLp8w1RYvzbW05Y
	 +FCtZtmFZi02IQ0oCvJt5vBde1raYPmEV/PC0HlcNxvZkzZcJXu0d97sfAqclGYcGV
	 Q0KMjTqQWwxQ+WUv8UlX7CnVk5W1/iFEc9uc7/gn3d3NFIvJFzbJPCFrxV/QCx9KQr
	 gJBSZbnNQxY6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E2C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290951368.17229.12313713651981528108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac805a595886ec279e4c7cf22a3779abb4fb901cc6302e75580ef9d5f25c816
Date: Wed, 01 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782909513
