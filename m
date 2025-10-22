Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49172D5941
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761154794; cv=none; b=dezHVDycfzB9GEBza6sMmUEXNmoiHLYKvsylCn/BI7CVlpJ8JgUI3EybFcHWQE7lgi+mReLj/HEDBl40PPimNl4dVm7AsTVW/ayVl9AQQ7V2hEI2Awe/g9fZma+ntjnUvhjG9+od8xtqVGRN3cicvY5PAaHdHn3YUBOpDKgGyNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761154794; c=relaxed/simple;
	bh=wiCYp6cZDsdW/2kDi8Nf/iTtD+879tdbm72eMxhh1zo=;
	h=To:Subject:From:Message-Id:Date; b=YNL2hKkL3AFjeqtdYKjt0M+GzqZQn2lMlRPAf1+KRveIrTla/0rrvy0e6Z6b0o47MHs3ofOH4Gg1cspbRU2uO0AFzBnuYfxvRQAMGJapFUEb3ldSTGxbWpvf58vCpJuGI2YxE4YdhXT0g0VGewoN1vuZ/0kpH2DR0n9nZQp90RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baYHEkP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baYHEkP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2B3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761154794;
	bh=wiCYp6cZDsdW/2kDi8Nf/iTtD+879tdbm72eMxhh1zo=;
	h=To:Subject:From:Date:From;
	b=baYHEkP6xWAelIcuvwJyUK0aMpnKfOsVSm0kiemr2yp9M4uakGQ/SjOqbg4f+LwCR
	 eK1RYFvMPCeusPyMhugTFLJR5TOa6bo913qjwZrkppNaZr34C+AJn4iURRHc0rK8+f
	 5fu0NVqFeXJ9LQk5+XKrKFDljI5D1l4UlyuO55zOuRts92VyB9X7+QA5qmDkm9HfHb
	 yKryPW8budZXOiehSUWSZPYWs+poQ2mGNlBXr77IprEVYL0f7vUnO/NUBfN4D5qqdb
	 wOvUWc+fNbXVxYV1UjOvhaOxIMFwWiyzgbs/7i6UZUKVtYKVfO7/0LsE2HKMUdH+sn
	 0KbjGBDwek6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D2CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115479360.4753.2799864866864553515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79ba820233cf74dd2eee76b3bd69c7b5b87477802667a18f59daaa1d5e25068
Date: Wed, 22 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761154793
