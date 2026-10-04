Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCA13A1DB
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791073834; cv=none; b=URCHN7+2zCFZHw3y3wT2p70B3OtcuLxhKRZ5aNUl80QojB31VUyoHq+RkCpIf1/aMhgemV7kdBmX9UX67Q7JPjyUnob6ffVudopecvCvR6WwA+b+BTKsNasL+9NBEixrEbsu1M3TuDKdNGs3dJps6RKSHusJlmHyx65oJHI0670=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791073834; c=relaxed/simple;
	bh=2+JflGHIU+7E9VphugbLe+BSGL4K1BwWvgRT8DkRuf8=;
	h=To:Subject:From:Message-Id:Date; b=oJDi5IZppuy7zKrrJs7CWn9Ejae4XCRHm3nS36bzCEzWCHqWlZ/HqOen+IkSUn+U/aDtADQplTJhCxyEZ3CcSBsvIrkHT0UQKWWfIvFH7uXliOvdO+cK/lEI1JcyzEBrI02K2IG1y6pwe1ZFXKormM0OC+XVSsEETJskYnKmIJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nayiKNF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nayiKNF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D973AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791073833;
	bh=2+JflGHIU+7E9VphugbLe+BSGL4K1BwWvgRT8DkRuf8=;
	h=To:Subject:From:Date:From;
	b=nayiKNF6U1DqKig8dA0Ufyq20QUPF3+xvDGA+EVVXkK6DTBJCu46PNQk8dBVEZ/xv
	 dw5Z44FC8GEkhLDJL2ByWaRtjxXP3GYxhN+eYafNgRaHpJuKHV+KceW0WztaWkI/mZ
	 SZ2tJqjrHlccXWdJsI/jaBkesd7bmIDdaSwf5boKFfMSRZ3mEsbqWZc7brUfVfepUQ
	 CW+JcWou2mi/34F1MXX5ZpFPAKnYFDkUy8H0qYsvvlhBxCiGVwsuKsW+kjtFqoHZbO
	 z65OSqu7JZYZzJDMnLRrP40PFpjnoT5QhvPjtqNtwpvfkxPOry1YkgPPEX4y8fl0/v
	 RTR8YjUEyP42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3417CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107383371.2978.4617733551942968765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c7d0757a59980f3e6a58c77ccd5819b1d8e1b0b15b6785b69b890ed76d734b
Date: Sun, 04 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791073833
