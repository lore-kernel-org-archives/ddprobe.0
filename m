Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48270127B5D
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714413743; cv=none; b=XfnhucVDuzKxWHwRCqU1zJplyC0H4Sxh3oaXIgdA+GhKcBO9Urxmbn/G4ikI7nK7PZK7C04CdvSOL1Sbh9aVZvJWzec1Kgwrir123fhg1yOkGnaHy2F7Hopi3PAodNhmWTIJVs3r9DNklBnBqfZaaqDYtTNtroLgTPHaoHM+kYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714413743; c=relaxed/simple;
	bh=JtAz1RuDq4F0EhIv0R22RGWpZL2DmvkYdFUuIA4f7Jw=;
	h=To:Subject:From:Message-Id:Date; b=ghxlc7HYXZ6SqNbkZoQhhXjWLEQNgwmc4lbkruo9Gd/4vYG9jWyc94nn/HBhoxlK9CYNk3L8xlVbVIIAHjWx2muoSXseyZoVcn4QJZtBRez4ZwbUq6sxj1G/cvCdXlO1EfnhsTw5gSjmCUc5fketzva0kCWF63MoktNT80RNbQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMMtFpPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMMtFpPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA744C4AF19
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714413742;
	bh=JtAz1RuDq4F0EhIv0R22RGWpZL2DmvkYdFUuIA4f7Jw=;
	h=To:Subject:From:Date:From;
	b=FMMtFpPV8mYSXMUeumYfaytege+1FtwKEh7mci5PtbR8OfcXK2q019sq72iuk+o3h
	 9yVDfdK4/d4K1bsECiDEbgpJQOkUdelBwSRx9ItGtsnmm5Cu31cYUYsuEhc/6Fjr0O
	 PWhE79g/vwvZRjpy/isHY4pvzkOI2ZXCEK+jgNE/wkVFpbTUWZLCy9uxcJ/3HG5NV2
	 h81RE4q53KxdAhA07wdRXRwt8YTqrSedLnqFRrnDunk156DKc6f+6TtSTYjJEvNEjY
	 Uqy6hj0Tjd9wFYzzwWh1QZUR3tb0saJaCGvDUG44HBlXTqNEq6/wVsSydO4WP3ZxFD
	 fDHfEhm5xIVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3253C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 18:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441374276.2743.13732125539445605060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353a8a4bdb53377d5ba3ff005b2be40b9217ce27ee49c733cf71469f317ab7e2
Date: Mon, 29 Apr 2024 18:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714413742
