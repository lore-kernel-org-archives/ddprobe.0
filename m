Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05E41DDC2C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765065174; cv=none; b=GfWHQuOdiKnhWWLJoRZLA8FwCqhf9oZR/JskBeyxGowWxTTLcatID8rWS6jyYyvo71E2IX36qzI/zKMWteRLICisOLMxpQPaapXAT6zAYVhMqMUwGx8wjGThn0nM+CcDYYXrY1IhK0DojhmENrdBgYoZjz6Pxm2mSedf8/zctxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765065174; c=relaxed/simple;
	bh=o+82mOJiiMvUnzD6+kfs/T/nBGkQ8GVgIN7S4GzNeA8=;
	h=To:Subject:From:Message-Id:Date; b=X5IyUi06GSdmjK6XZvUz1bAT+GdgAgsrug4M6jG7vxMkcyfQkRQ0DMg2HyK7xEo9UoA1mXEq3J0gUzQ1rZ05UgCpRNhke+3XId8wns1i3g7NIk/EHI4zD2vawT+0+SiE/lcQCazWuZf3CIZtv8LzLa3AG1VAQ44LPLhWCM9gtuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNGnGE7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNGnGE7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BAAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765065173;
	bh=o+82mOJiiMvUnzD6+kfs/T/nBGkQ8GVgIN7S4GzNeA8=;
	h=To:Subject:From:Date:From;
	b=jNGnGE7sCkdypZkR/xc+a7ZfJtu0lSz8AlQgfY31ci03YtZsTHKiMkw2JXvtGa/cp
	 eg5j8dvymr2CZu+CIHUHYwWu7dtIH2fHoFhwGhMEPG2sexM+XrEnzCuhxbkiRCD2i4
	 CfoQ43SlT7tRa7tTFo990u6hirPpe2+rtzMLn6fQEiLr+F4IrqdoC7ZGA6uqHQrfYB
	 gtup8ZLj7tmY+AzU4CvUdkXQk9G/8fTfOGTm+HDQbgVW6WZSDSpDZT+dJWgAN62tUA
	 e58rG+sgP6CaNyD8EcebY9TWoy2L3ZQFttVs/x1ieXcoKKPLCORFfP7Fckc7U7o9FY
	 9BDsfOhbM1iMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C3ED3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506517358.5535.7457711651086966193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8621dc5907f63d468eb51538167664221ee6ed28aee3e019baefa48505a17ea4
Date: Sat, 06 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765065173
