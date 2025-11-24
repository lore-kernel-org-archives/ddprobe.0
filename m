Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140123148C0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763999514; cv=none; b=l/V/1i9VowcjSlxL+SchG657mgePdHyncXS+FScOTqBzqPvwznwFoAg7XVghjNzP5cg7nOef9eeVzwa29wF+iFSSe13lLyebQc5jego0BUBoausXRBfEAErfbO72yyG7cisnHPUDoA3vkHjEOICt3GqaVxx2gIbHbpOwSAE5J9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763999514; c=relaxed/simple;
	bh=Lruv5dRFdSYspsaX1YzI/FkH7v3tXl/TQw6DaKj0cLA=;
	h=To:Subject:From:Message-Id:Date; b=ph02BoQdmtOP/X9iPv+lSrmkitH/PVstO/3DfZot/jgS38TbCpvueVcEFWGno8QuUrI/Dfo4qXPl784Lu2B7+klWA4NY1uOW9Izov2yt9sTWPQV03kwJ/iHL1APKxhgmMXX4cSOrF9uQEhiysr/CjWyCQnPKGDOLE00nvaUGIX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9eXDLqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9eXDLqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0151C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763999513;
	bh=Lruv5dRFdSYspsaX1YzI/FkH7v3tXl/TQw6DaKj0cLA=;
	h=To:Subject:From:Date:From;
	b=k9eXDLqWhr9rzB7tFz7KTSEBv5HDmKcYeaG7A7t3iZJzkj3H1qn+VEIrVEjin6liX
	 bHzx/yxEz1UrahOaGjE4ZZcpXOUfsQ1G0Qxyn2FpgqXqYWLuk38CU+cttZlvj+bsCu
	 kcJ1x+rxwNbToGF6rKD/jNdFTckUDZW/QZ/5GfCE3LV8eHXMSLqlj5gDU+uRLKIVkN
	 Sr4ZEMFUG2dOOaAXkUIBnwSJbXAQ75s+6lKovAcMdO1cd6rN6l1Zf1K17NEhmVdVXQ
	 GusLKWxhU1VSVWC0XU0fpln5b+0pzaRRtG2DQmNQoGNhmNRxal0U30Q0uzvxE6kTHX
	 e4seiMEvZRGcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91200CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399951358.8358.2966871932514840261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f693b8c2fe8142f8fc212d41b2d82cbb05e80866fa8957689fd635d8327b956e
Date: Mon, 24 Nov 2025 15:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763999513
