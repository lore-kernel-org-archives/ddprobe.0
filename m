Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D52D9497
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753176595; cv=none; b=ua38Rts2VtDAWYSXR/EQ+hE5Bqi8G2sFX5ZlZ+Tfbvcpj+D8vyBE+aDLLVZdS/VG+SzDZut7QMLuqaZODNFCStNC+9KMpQ8A75ffjQfOzL/ZA6nUFB2iqcQxSo7twv0NZRzlwN383hG000p1s8t1xPldwrwaf64Pfe/shI8SOVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753176595; c=relaxed/simple;
	bh=EY/GhAVoJuazSUH3zvzD5tV3+ru1MZEjDTyE8e3aHcU=;
	h=To:Subject:From:Message-Id:Date; b=lDstuKQEcwL0FTsXzCAYWUDTCdN8xejXsvU9ThryIlyh7eMTeiV2R7h080YMHguL+LoF7P6dNHzC981gRAlTJdPrScDEdfXjU9jTmixEmlbIZ0ifMLv+o4MUjV+fm6HtvsQ9lcDAGsbyIVw+xb43lM36sa8Rk56QlsIl66X4I1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qt43p5KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qt43p5KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F0C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753176593;
	bh=EY/GhAVoJuazSUH3zvzD5tV3+ru1MZEjDTyE8e3aHcU=;
	h=To:Subject:From:Date:From;
	b=qt43p5KSKViuYWj0gRIHkXK8xS5je7c7nLXpv9wdhCY91Y8ch7iIXLvwCmPL2511W
	 JTz9VMEXk4VLbO0udS4T7gfDtg67Y+0lpmypyPXMg7+aOzwmj8DF8p754O5Bu/mtc0
	 /baMbRPyVVPER0rQsph/LKtjzb7KB0BiK6Ver7vTcWH7sVvIn52tsqZLA0+8Jlj1ao
	 neCmbcjfEOZY0jDaqpJ2tdpJnZZISHodrnMi7RE2F2PoJXbtDQV6L2KULfyiT0Lqpa
	 QzGhnKpENj65+O1Ar1H67bfJG4UMg8138X6YollF5QCmjdEM/fEMJEhGjdHhX+3iKF
	 0M2jgLmka7wZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0BC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317659358.21760.2987849379267491399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3b237968aba278f7e1d3875d2f49f636f7557344a5f76beaa77e9ef3264e3f
Date: Tue, 22 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753176593
