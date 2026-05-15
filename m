Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960E143E9E0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778839835; cv=none; b=K3btHZ2CRawJXAcPPUXIqIO50V1+Ely4WFK9/fPQkrzh5yaJM3Gsir5NmZgg4lezF05/44B75mXWNOzdTXQZC+SEbaHjqFYwAx9TwFDhOMSxGjOr9yqz7gRRQxxpkTGhzL5q8Hf2V35ZnTGUAMuHGhSQ/KS4jzEPeiAuOFrBKNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778839835; c=relaxed/simple;
	bh=B9DaiRD/lnBO90uTc2Z22n0ZhQ8XeRUecsBEnuNvAAw=;
	h=To:Subject:From:Message-Id:Date; b=LLjtjQWqGkFIIw5dvjpKjf2I6yv/fMXke6CdKWXllnp8FGx0YE9rDhm43ONJNH/Oqzd6Z0hvVHHiqOENjmyiu8vMI9yl4bitMOPJpUUwwYGSdaTSi5J8czzwKMMnNXNFWIy1gytncpjlQSSG6IoaWD7bl/rY1N1Rd4ZAX9E3reo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1RpbbQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1RpbbQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BECF0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778839833;
	bh=B9DaiRD/lnBO90uTc2Z22n0ZhQ8XeRUecsBEnuNvAAw=;
	h=To:Subject:From:Date:From;
	b=g1RpbbQW0k/iLyM00cBxfXdGUtS/JwYVygQM4fGBws+lRJh26yJ3keaGpE6Pstib+
	 8SObS1Ze+frLzSSqNWajzvweQgh6ctcYwjHOeeupveVR444fdAK3iqOTTsYkflkkYK
	 7SNsxRRfBTcWO7SlWKPULOLVyS4MDIYfu1fB1wvch2+xIGHGIdB/4ZIqWNpfxYimZQ
	 PTxoZdpxHKc3s3rwfmV6k1STkO4APt8IeJ8v902YUjo6sQ+OZ24iykzNq7ruJw1Ib9
	 svzweC5uomyzZa1Z+TpZ7nsqdy/Oh6JiYQqeLcT/5/LFtGTcafR3XwOZHxcuoKfde7
	 +X0q41KiVkaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE6CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883983369.12785.8635250983499104869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f058026e20dfbaa163f60b469820a0e86d7f54063c5fd84b080b1accd104d56
Date: Fri, 15 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778839833
