Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320852B9A8
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756273194; cv=none; b=A25TPJgZrX3EKSqtz6maEoMoZyf+5EH7G03v8hyiE1gbTv8ZkHO0Vn7+1EBmkN1V42uOX9adERWNM5/dwBu+NR2zqeQ9VbG/67q0BBpjrUQPtPQsuILOL6rEaTCxFOhbLoNtAsPVMvmZMplMBLIFI/vcSoyMl2KjP1rQR1Qal3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756273194; c=relaxed/simple;
	bh=3YuiOflQZv979QKMCoRG9rIdgP+YpAXHQdOpOZiK+no=;
	h=To:Subject:From:Message-Id:Date; b=b1abZptu96YaDkXN70Iq/QbUOjZYSfpMqECT+SoNov5FdTge6y2TtRVybAozkREeWs/vXjyA9eAK7Rx3BroWikjff0ApcgND+NGiFucdffHtsJirC8xnVPan/18V2pDpCGAj4/qb8+w4WvJ1dT3x2Knj6T/l4JpEYtmp2x6TwoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzJvxAeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzJvxAeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82DFC113D0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756273193;
	bh=3YuiOflQZv979QKMCoRG9rIdgP+YpAXHQdOpOZiK+no=;
	h=To:Subject:From:Date:From;
	b=YzJvxAeE6xc7mGTxZTAeraAcqsfYTOrEpqlDrvu6R2kBQXfsQ87QwODk/Lo844PsT
	 xH0dz8uI01ts7UEpI7MrhqWkx5BlkjoCylM45E8COR3CTR/0lt7NO2IHmuEA3nm6EO
	 XuYWaY7YzTNm9wb8ciAXFAa1kyJzdESEPfrEEM9gi/wikarNmu5nGWHyDpkuODwsif
	 9nrGhbDMyb32tu3sBp7KkPujJ7IMTNuDh5Morv1Ec9Ke6lRiF5Z2ZuxOCu46P2YvlN
	 A8ItEEjnJcqVy3wZ0GCNugrZMC5dEVG/0hb8R+cUOmp33B7WW3WFM5XTrfMrZePWtN
	 4iQprikAKZk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F4CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627319358.7198.17933006768605199409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855a33630e268552f48030cf56feb94a6652cecbec6ef080cb4503a05300a362
Date: Wed, 27 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756273193
