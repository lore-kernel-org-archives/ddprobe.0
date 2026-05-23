Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD5626F2BF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779570154; cv=none; b=qPxYls0iUqwzC0Kj0tDKcX1MpUz65rp7K1cbLWP33SxkTE0Md7ZXqlpuY/FivfjGSAIqH4LLTYZ/CGs6LWj6jBHrIIWpCtxLoBug9SSI+kJDDfhqEy2Kp+NR7cFpomustVV4/yj+isTcQBtdU1Rj+99GyzWuj7zlVHMfovsQl9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779570154; c=relaxed/simple;
	bh=21FAG1qUqvtQ4dYK5K5PRx+98oHkh8HGb1hjz+0PxTQ=;
	h=To:Subject:From:Message-Id:Date; b=BZwlGfR6A1+EjwSQmuCsv/K01iWKNSQR5jQ0UqLW2JA1GwKlxMp//4gLW6cxCO7vtlsbXswu4zZoiW7v42B1Uxy1MOreOW9829vy3eHqe2YrsLK9SmIDzJX1+zaleHeZvCRqLvzNzRbCDs6WU1yG+2PppX9yG1FRs7S6yQtfi50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKjBEOGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKjBEOGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED27C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779570153;
	bh=21FAG1qUqvtQ4dYK5K5PRx+98oHkh8HGb1hjz+0PxTQ=;
	h=To:Subject:From:Date:From;
	b=mKjBEOGTEw3v59Z65R5pBcno3mj31S3wBXr9L2V9OHd7qCGpzbCJp4ytKJ7W5aUy1
	 AzEOzP/9L8uV2L/EMbXvYyUSvcsDPhUmLR8Tc7jUit9fxz/Q/khVB0CWrZd2QrwCi1
	 myftgAetangm2MetYBRd5qGYiWqTSF+r/iKMMtbOPLFeI0Q4mDDZxgXQGFrhITswYS
	 4pz0qzZpRqbHOjTetXVaqNhO0rL0z1bQkjenqhKW4zLCObUNHKFaW1Amd4reY9o6k8
	 WIHVP3eT28KN+xP3BZ6PWWWNe1eF8DPkUPvG6Tty86i039mEefq4Io5fcntCvRJwW4
	 aWlt+P95WnXBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C42CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957015371.28872.10030730992072345242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b808a47213804503703ec72edb2dfc0099b259cc06c92af600fc826770d0fbc
Date: Sat, 23 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779570153
