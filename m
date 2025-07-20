Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CC2347DD
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753010395; cv=none; b=lq2qrFG/U+2yLfLq+nYn6lGQaWSp2X3ayxaxRPAW2Y3FO6OXWwzFbLkrH+sLgNmA8Hm6hyhlSaOfnEBwSGVhRO2bmeVWywATbTaN2FQyliHWMoeva8nE7yJKeWoqF3/Y1vVzwMyyTL0O7IbhqEZ2XlWaq2qfXHRDtNfTSAO4PAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753010395; c=relaxed/simple;
	bh=NkwfFsqJLhzxdIH6iUv2dJfBSHs/nvbgqn8/831sJns=;
	h=To:Subject:From:Message-Id:Date; b=YN2a3spRSHn5p8Me3uW0lEH4gfI09xfcHdZThXhthznR8xPaKs3x1TFtzybi288PjpsJ3SQebcGNrfub1m9P87UVebrJprS961GolKLvXsvaOLZlCvsSPZFPmN6lOBj/gOwPXZK1qpFG8lt1ujzVTWU8xGKohW2DjkCYZPNZOSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2ZhwvfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2ZhwvfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD04FC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753010393;
	bh=NkwfFsqJLhzxdIH6iUv2dJfBSHs/nvbgqn8/831sJns=;
	h=To:Subject:From:Date:From;
	b=Z2ZhwvfD0hAfZc64ox7prRiPWGg/MWNKU50P41m0OjSvXquZ0UahaZuNFz2/eqjYc
	 KKSsWp4l2Mkv/p889WZi0+paCkBesfxUvsV/UfVbVu0iSUdO1Mcuuw11O6yOWbcTep
	 tpv687Q+nK1ivNt1KXh6wi1b5pltYvFeGANy/Wr9huVIqcj1klhDBVoouhjlN9tMw8
	 JDNmD0aGotHtrHP5YV2TmRX2jwgIu15w836w4zKE131AvdbeU/MsvtPK5NJIB1dfJy
	 JPNLvJNvY7ySHvCPG+EE9cM6a6A+ifR+XlLx5/U5N1HpRPBtRUzrn21JiHfp0qW6RY
	 PvN6dNBOIf9gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C5EC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301039362.24665.11384915818847638201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c217d140fbc3c721c8a13c6a1214b6c57a17d068605a462ba167533cd0365d3
Date: Sun, 20 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753010393
