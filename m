Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3061925524D
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741696734; cv=none; b=ruQSXiPwf5s+V9Cqec7QlsKHSTTZ33LSX5Fs2DBsndVeWnMlNgD6r9pzfyKTVkPsJmGEyICHqmI8NE99pDnB/cn4yzM0YIvwWhOQBA+S0IXB/mH4bMlIsdbWn660OhxEXAFZq8yBQqGWJ4lj7oRsetpoKIFvHQMcdJelC9+ct/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741696734; c=relaxed/simple;
	bh=n0nOHUIh9sBx6K+ByBF+NIbkD6tdGriGQb8kwAYz5fU=;
	h=To:Subject:From:Message-Id:Date; b=XE7PE8azzdo8zKTlwOQDo1S52hUxTJC0LgSeg35KvPJmmrPAOTAQ4Q32pbyPDwRwN067RqN+8jVxOMzYISbnRBSf3eBVKWh8KdGVmSduQJt+LanpkN6MVtyJoL3WYaUObPuXtYBmkTjET06kfIIpcfWKwIOVtvz56ESxV2xxJzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs+Rmqz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs+Rmqz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4036C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741696733;
	bh=n0nOHUIh9sBx6K+ByBF+NIbkD6tdGriGQb8kwAYz5fU=;
	h=To:Subject:From:Date:From;
	b=Vs+Rmqz2wlcmLkuh9Fk9sFsI+TRh0m1OCHco1WqnbJh2D25SbCOKQe5ogeOs4m9xj
	 Azq80uMmN8wZJQwKu12rfDq5pagkOduJhJShOBk29kFM9cZ9rcbRkdtJaGSH/nMOhG
	 J3V39faaioDhM1BWNwzYUTnYZvu1rDkssNIWku7awLQFGtdgh1NfFfKwaVD41YNCJJ
	 izpjNLE57WnB+9SWyyRFUMEmZMw3aLoKuK1Kv2DKerUwzY1or/z/CnnV/tIxwbDtn5
	 3eWl6Xr7K7aiQRuRod6QFhbRjmX2/e9ZEkw2eiqs4SudAH2ZvFTr8m1SccBcUeAou1
	 iIbNCLWRTFwNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E3C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174169673358.19262.16783772726563347795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c35fb928b651f0c294f162a16d55e3def2c283148e67aa1edb470cf1f60f83
Date: Tue, 11 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741696733
