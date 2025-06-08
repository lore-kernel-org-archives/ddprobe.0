Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2131F323E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749352794; cv=none; b=nOhu5PCEuVTGAPCX1hPn+znwlBONYte3twSik6dh5BQLuOsbjXk+HmuSxKe+q+VGPtrnSPQw8pdAMZcimJL1kdLrjz5jfcXPYgP+JyOnlBRHSTGOCKCuPL7qKOxNokgq1mVC06eJJm/cjMajrwtx8aZnAHhBcCHXMovqbb1k8vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749352794; c=relaxed/simple;
	bh=w96V4/aaWGXhpoM8UVXp8gMVjgWUJ1brF1texDqZzb8=;
	h=To:Subject:From:Message-Id:Date; b=jeeaAaZPkwnJYjRsZBqjvSiPVX3FRv9fMV9FNQCNPCjIt6LIkUQjPAangXdGmaSKSGFA1e3f9BA7Lv4FfOI7UW4RGi6ucF9wV8ueXqKrtUbtGf16GsS8Mp2+7djHnMoPsM1RLc4GicYPWsJcpUZ4lV54ZJ0hm3vB5/kd9VtWtvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTBwM+8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTBwM+8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749352793;
	bh=w96V4/aaWGXhpoM8UVXp8gMVjgWUJ1brF1texDqZzb8=;
	h=To:Subject:From:Date:From;
	b=eTBwM+8b1aPVRyYmsh0cmkh9SV3Lc5lZeVF3/oYtY2ckqW8gTfOwcCOxlYjSXQZjN
	 pOEaPT5dnHR/HzIxcdmYPeeJnM89qdyJv0s9w/nAR0OA+AA0K0Gq76nwmFZ8KQb+AZ
	 MXXc+JhlUoZlLBEdTDxAbahkL60CB82KNbH+eL251DuMxbsl3nPVeYDl57UJv18gas
	 DPyvRa2P1t9mEeNUY6W+HbdbFlTYkVvdcyEpnt2iHtW18mgYI9m7bGjYdWp20Ozg/I
	 Bhi4osTcFbT3nFe4YKkT8rcvuaSoL4n8fiBr898tHFKVtt9wueDZTdapxHuBKQVQZf
	 GV42y/lKc5o9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BDC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935279357.24343.10793373670560949317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd19ee1e76db2e1da26ffbb657a7ebb045ab886d991ffda9c3c8fe77fb0572c1
Date: Sun, 08 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749352793
