Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1BA35C68C
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790774434; cv=none; b=Ac8SRuipR/wg3GXIjud6rGA9LbcFZ3vEEPvBtNVVTDj5KdJmzun3AzgpM7yt0T3Vf8M34Nx1sPdY62ToNIaIZckiHIJqBVe1YIzudsHXul7TlY+UhwmFDSwrCJpOi7Al67x1rZiB24nDwr8ZuLSikLP8ncsFyygptLcyyt5LB1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790774434; c=relaxed/simple;
	bh=a3yys3ZN2z2zndQwAt9iwOgjT4i7FrwgUjMnE8HFLuI=;
	h=To:Subject:From:Message-Id:Date; b=VeyVFsMFKEBv+QMkfm6ER61fP8MqRL96SyjpQH9OqlQg+lM1V08oUdllyMj8PbqtsYV7qLxJZaAa7BMJjFBZD9ftdcgP70hQLGiW5F62u0Cjpu57+wiYXKmND8vPU/T7NIwMH1xNXWIBlOSBhhrKd6qQPnVlKi1iOrgH2O+jIw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXeSgHeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXeSgHeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4BCC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790774433;
	bh=a3yys3ZN2z2zndQwAt9iwOgjT4i7FrwgUjMnE8HFLuI=;
	h=To:Subject:From:Date:From;
	b=XXeSgHehv9EDo0qtCTZFMxwxDhVuUArW2Qsxmhepo2xIUyA3hPeplxuf6sSC2AXor
	 YlDcBGKcaQ8CVf+idv0kzrH+YRCMIQh267z2kmrzMUgz6/zQyRz29iZztA7FYBv4Rh
	 NTAcJ3gOv3Typ8q8sBEpbs3fbMqIxu2ZRT5KCAv2BOvdksaTyC4OL9LglkWQfD+z3/
	 2r3yybUC+RYKX1kg3xgbGmAboreCuCeq9xsC/f6yNcrs0Blq9oijhqDkTTjWP1/zTi
	 0PePxhZLpkd9VXM2+OfExgmZPEWosVwg3NU4fy+EC/vjlFDX0AHhS6D3du/G9CbeOO
	 MMzRnerWXxacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E5CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077443368.15997.7247461938581657499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35b3ba727391721a6051ddbb5c882ffb8367eedb11ea9a27d1692bce073ad7a
Date: Wed, 30 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790774433
