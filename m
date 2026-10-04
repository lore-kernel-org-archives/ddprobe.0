Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477D3361DA6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791105034; cv=none; b=AyWutA7Mz87NhNsk0aPwLUcfPczBvnbU6/nX6zcDLKYqvAVTFlyvT56KjqCrPvDsb72hYLbZDl7iQobRwY5vEH2mw8GbyL+XX8Cm6r3obzuWX2HBjtyZhSc2/b4AuDypQJuZg0FSnrfVS3QOq5EqyceSyTPd11cEaBrUoF/dhac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791105034; c=relaxed/simple;
	bh=lCeqAg8/lCw72/SHnbVrNXDeg/DEvYt1iMkQj9zx3Xw=;
	h=To:Subject:From:Message-Id:Date; b=IKr6wnhbRS37g/+4qpEHknWWD4jjAt4Zy5PV/+W1DiToPQXUzDIVxNOWBklr2RTRhHpTcZcTmhyqdRMHYbi/fCSPnhunZV3RcB3i5tUcChSppLx5E/HSJNKyoNLLEcJtjlZid+oqHayjb7CQSgncraGQ24+Q4I58X5dC7PhJPqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM7LhBjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM7LhBjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6C4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791105033;
	bh=lCeqAg8/lCw72/SHnbVrNXDeg/DEvYt1iMkQj9zx3Xw=;
	h=To:Subject:From:Date:From;
	b=sM7LhBjmW4qLoZT0icMkXyrDsefF/Mk2y/BnxXkDLcB0jZQTgmOWSsoCsSiuwFqS/
	 8hVXSsCR9hFhg8BhHweKNiGfBWQ4Z5h47ZP7FSVWbk3tR10rBNQ7S0PfCf5vop5b0H
	 9mmSj35fehPCtfrr+OX/JK2DxfoY0TbjvqgNqXdJusz9ogoYktnqSFxRIbnSLvVvHS
	 r6XqmvcBk8mfn+Ez6nK1zGYwPpSCMQOukC+EEX2uL+nUKCJZ6P6FdOymSBt7ZiqdW0
	 OKkRNLX9N4yfOiMr3JMocRSqW0kaEdGYYe54vEBRHC6S4cHLEqBe0CvziWUpH6HRGp
	 AhEujNDKOGbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA356CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110503368.28441.16206034582288458400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6759b0b9144eab5fd6e6fdb6e6ef29faf532fc22e2b38e0c1f5656cf96c4df9b
Date: Sun, 04 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791105033
