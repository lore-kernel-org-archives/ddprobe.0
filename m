Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515B536195D
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788588034; cv=none; b=begmXs41LJuvlXMD6JoTSiiWOxp/hBQ6evlKeqL/wdnlAPz2vUBFhoJ6v3cS5Om4lFlkD/qd51GJ4bHhs0OS01T0cM218Ur4hwvNO+5SZEkqFfmuBy09xozevvhSW39rmmiKa87h/PgrVKt40Y17PKk5S8zrZ0sWoPi6LwkXhEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788588034; c=relaxed/simple;
	bh=5KgbYNN2lb9Npp8nDQ2m7VSitGIrv5rhQXKUzwWx8s4=;
	h=To:Subject:From:Message-Id:Date; b=sWEJfZYfo/S60/yysCnvVtUptHdd8LbI4Ua01eO4u8wochXF840QA+fleAmAP9x380gZhGNNNrlKmscCB/XGOeghANWAc0sGq7TQnP6JwxqTXNfYqq8aGjqe8Caq2lbckW26wMo2GdaqRYhHuA3HbiHXs+GKwW+bdaJHnyxgne8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKDfu8EQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKDfu8EQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8156C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788588033;
	bh=5KgbYNN2lb9Npp8nDQ2m7VSitGIrv5rhQXKUzwWx8s4=;
	h=To:Subject:From:Date:From;
	b=iKDfu8EQ6Q2lkyPptrZmBU6t3LaknXxJbHlWDBQ3L9wDN6NvinAbQLRYbt3FLVoUq
	 +56nWlixpN0uIK8YPqayd90d3iYndSCK7LNnxXkM9qaRqQREQb90poWP5YkLRSeS5G
	 SQcjvZe6JLhtkZROnGpzhBDpnSQDTZW6mbvK1LY/Kf2ctK59EHgQ6JbSzH6Ceky29A
	 /wjpeoMjxQCiYtHDY34BVR83EG3imnb1K1TWqRFcabmSr7FOgM6VHgb1J4016/ceSl
	 +gyCLaZwGjsxbse1brUafFq7JcTmUY5yvtPaiiWhCH1VXBlfGXuwyw0Bx4WhVOJ5Nl
	 aW3nrXKO8B3BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D5FC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858803368.20009.7217997814843012455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0664792cd111b06f877692c4b2e87fcde948496df3a016a7b26831040fda88
Date: Sat, 05 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788588033
