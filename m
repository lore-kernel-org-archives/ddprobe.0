Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE5E2E11CB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750004394; cv=none; b=Bv9OK/+0eN/1mYPxTPDg9Oyc9QNYGAD7ATlQEpb6h65azPiDKKhfnu7PXbIgUCqm8zZIWjQ6SXl0LccDvG4gMlmnft2LV5SaP7Bp6w4s81k9t69RzpvhtHwP3KejVjKXOxOZK5DTYcsnwrkYTS0KqL29E2wga4vbLRvVXWnnv1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750004394; c=relaxed/simple;
	bh=F0gQYzeQvPllGvwLYRzXc9shMTz0W8dcEM2s6bk/6qo=;
	h=To:Subject:From:Message-Id:Date; b=ERMB5sM9p2z6Ccy3w9/Ksb4y2vuBy3SzAJsHu9o0elCKB9HBGGaKkQyVgTrQbBDgxSGmfByHlcAg3DvTUyqgwvxGdiZnhaJctpJbAUPkR2VwpksSUbJPP2irU/clO+OocTx2FkqGEDGyxmMaaQ8Wd2nHXCIN+S9lskzeshULiiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4PJJWeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4PJJWeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6597C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750004393;
	bh=F0gQYzeQvPllGvwLYRzXc9shMTz0W8dcEM2s6bk/6qo=;
	h=To:Subject:From:Date:From;
	b=j4PJJWeRir5Ml3jVwI7lD0w7erGcH7MHqO9mlx/oJAL+1KY2c2SiS5iCqx0kUyDgO
	 UGIoHY1mcc6Tm9rgsgkDOiOJTjRcD1siOIY4nfGUuvc88+tIRXbdKVlLZS+DG1MAA+
	 /ay+h+rRJkzzh4xqCjhUAbsSCg1jFI0M9bRk8xQ5Ec7PGdPRyoygUo4a7yFGG1G4yZ
	 V9qIlYJqL5YItx6sa8AOUjUPZvQQZ7cPfzfheMuVg9e+A2S3JY6q8+3RhCgBsaNBz1
	 Q6UZUKb1xBBjJtKVEOgsP9Wh2e1lzUqdXbDvMer410E00i9iHmJ4y6y3TM4cwdT909
	 hbWuS0x2Uq6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179BC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000439358.23247.14046159188470523011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296eddab6dae9c67f658e14d42d70c0ffa0ec28f63d5ece918569c8508638d91
Date: Sun, 15 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750004393
