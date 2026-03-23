Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D143164DF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774299294; cv=none; b=lM8modjNwhkrjzVO/GbouT9Z1yLuYxu+ZCmx5X+WK7KuEv0jy88Bd1lGU3l8gsOXJUCN65xIPlSN8b8ES1ZoDvkc5VDXzGQHmcQ2MUJQ+H+xV7zUL+5skeHMWLiY7nu1ebhXg+hy/r8CSJk8Detc4Yjk+vWPWZcxlOX5l2TX+Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774299294; c=relaxed/simple;
	bh=LIPJTU2aT8DX5hDVxtCumFpsCfpxXfkjogsrPjgd6O4=;
	h=To:Subject:From:Message-Id:Date; b=GsREhJ+nNBdtp7qbcL/ELUXva+mxBEIEhjQG1WB3hZXYa5M1MUro9nAEPjTDLN6Ay37DqxPmvM/SaFDiA1wB1Oi2SVGL95BcL9EPxgl0gqthBW00KTDXKBk82qNYtp18g2OKVQnExdRLupIZva+PLnVTQR57B8gDOL9YvBS5FkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p33EjrtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p33EjrtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1331C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774299293;
	bh=LIPJTU2aT8DX5hDVxtCumFpsCfpxXfkjogsrPjgd6O4=;
	h=To:Subject:From:Date:From;
	b=p33EjrtH5NtWvucAfFTSv7Ec7BxGXAK90psmeSxvicd5QXW2OoHbM/MhJFCT9m0m1
	 I0uDrctk7YXMrzqFhDuZfJNds0yK0Q3NpJvYFas2qWdM0m7YxZds6aJYP+R3YkXx2V
	 ycYyJgZLO0p5ytPa/HZ8PGD68ycHEcWvZrepZJj52M5o0FIhX3lrXfczd9nVJXOhXs
	 kb0GV6tr007MCLiaKURH9G5ebtdWBffb7W7h3UpcLNgtDCtnEXA6vPg08qn8niA+Ue
	 LMnfcwFpNKcwLI1kL1mqc1uEbwJ/y7j5fiwq71UGgBr5UoOLp5wJZgpm14f2kXfe5x
	 WysEb8OFX+CEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA9D58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429929358.20493.16718391830794025412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a41110a311a59ff4b8cad1d3d15485d37e9d62e523acdda3083422c7d33e16
Date: Mon, 23 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774299293
