Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082FC33438D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767968034; cv=none; b=MLXZ2IgQm7U1UB8FIIfaMszgtnIHMP4rv701/CVWbLB/UfdoT7c++aC520xvEVgBWMAoDS/q8wMJMB+KYUlHu02Ptl3wGZl7rVBKPBzhd/2Toh+MSA1kSr6cvk9k549rzNOc7Z/INpK16uXchi4sZ/BcKoVlKTk205+FrXEWH1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767968034; c=relaxed/simple;
	bh=DCZOXgqcCKcj1/xmfVm0cWyB4pqLirOEw0X7DTmjzRE=;
	h=To:Subject:From:Message-Id:Date; b=hWHnsnfO9rxTikvmsS8Mojzaq2PBq660UuqAnAJTRby1ofdKl0xLmkeBu9rEWVR7XTqz/Vp6g3vlr1izBObNwayXVHJ79DefGy32AUVzCjDbXNIYm0zZB8uu//k7qPeuDgmN5uODvUnVRGdCdfDh0JGUCAOnPHXBNzTcWHQnFaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+4IqFfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+4IqFfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E879C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767968033;
	bh=DCZOXgqcCKcj1/xmfVm0cWyB4pqLirOEw0X7DTmjzRE=;
	h=To:Subject:From:Date:From;
	b=r+4IqFfHEFBJoMsJf/7Y7Hkk/a5eksRnQdFwF9MeEZDxKGjdwebEFSy53I95BGNlV
	 AecJDs5Fk4nSZlrDKz6ZB0ifPP9TZk1cCrRwxF8Mx876qyyLLXfU8l7HTAXVMRQfIH
	 y7SIEJfI6gyT/PgwF7dD94gr/cfoiSBBHc0EhyxFqJzlcZDTQMiLb4ugNSOyxOhiBc
	 NxFOI7ecPh2V2WootlC07iAOhQt5nRWcWeyqKk77KISVFaixS95MbwdRN7t865uMtS
	 6Q5VXCZgdkIeEmGJa+RQlGU9cnw78C/V8IEZlCp6shbFLllhpN8HnOLY4fKgmY6+yq
	 bDtRZb8PzJb1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4ED1A631
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796803358.22048.2943796608574911787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168b9b4a6d6fe7f65117dc672249089a5c80af524b6862f6b31cefd9336e443c
Date: Fri, 09 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767968033
