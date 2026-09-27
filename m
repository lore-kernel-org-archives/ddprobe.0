Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE0F2F3614
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790501434; cv=none; b=hwOiSlIeI4kz1VhmHO0pgNYttdw2uagLeCUBCySSIcoKLMPtauvBDX5ftQCvHD+vud0yNzmXtH5swp8MhtfY5Cqw4nJkFKtKyi2+b5xlUD3nVM6+zUHmC48O4mf60xYk8DSJdh3mf7N27Ei5hDN3L57xBBHZ7/TrHE92KeYVEGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790501434; c=relaxed/simple;
	bh=kl0vRhdWfUQcse0BuCOlWu1c7C3o0q1w21QSIY8TuvY=;
	h=To:Subject:From:Message-Id:Date; b=BhzgOt84+XJf8bxi9yvdiCUJDfDzMykHl/eHweIg5D+YjUKCZshrcKqhCZ886NG43sO8kxxuRjNVbx+gC3Teqr2U6TB3HRXlnhpx9cL0nDP3+HIBnuUWntvk79OXbRIe9J0VEWe9CCmw5Q9013b467MyuChhJ5pg68YoJsdaxno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIPXcFbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIPXcFbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC1FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790501433;
	bh=kl0vRhdWfUQcse0BuCOlWu1c7C3o0q1w21QSIY8TuvY=;
	h=To:Subject:From:Date:From;
	b=kIPXcFbMfBEniWU6und2DuZIl/yYg+VEkE0OEx5fS2NR5VQB2DyihGlQe8Lu844NP
	 09L4feZpHFDeS4Vlkx189vbZiA+pfYcYUYiAaHlO0jIiErwpziCgWuBMs/FKxHESrq
	 +SA2U8Y/4cFymLu7yrV+CWVzn40gw8XP/QwuBXWi7OitYfPXt9gPBkzEO/UR9m8YFh
	 ml7T5QxxOyUVw2OqGQgxVwOSjjoEoD/SJnpGPde/97fgb1uvNVu3LHv1gdxwgDEFOb
	 hCsRfX3wAKtjYBI2hUPrZZ5y2rbRQDnIEhNf9cG6y4td86VfLCykqFuHu1LQVF7VV4
	 Ss2ug8tM0DCqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3BC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050143368.17961.9124542730169826436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e65624b13962a18d437bcd655c6ce3b388b195247762fe362c11a4fb6cab6bc
Date: Sun, 27 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790501433
