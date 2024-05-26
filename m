Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4671E896
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716761663; cv=none; b=dUybKAMJMisrrDIOmYac6Bm6rm1376VIHySkOhbXUAKkjAizXdE9/W31KB/ipTq8rRoALpuDM0PWFzsz6q+mCaXOsWIATtz4uqeEmiJMGQGNA15pk+cbrm3rgyGEnHcrmVdFxjczOTr8+mBdAUa5504Uk2EVtRg2gGUo+DwMP0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716761663; c=relaxed/simple;
	bh=q02LStBaQyVZ0nAvyuUmwjTenXewwsOkq7QW76cajNU=;
	h=To:Subject:From:Message-Id:Date; b=LdDCdTpzur/Azbazw4uy59y1gZ9Tq/pT8VOKfdk+pLgMeG5FV5c05fF9Q1asnpDaXwE3pvvrLHZ3/qeq+p+l85plWeP2XlDnrc0RdAEajE10xfbOax4asi+V3lM6RuyAB0akH3uMNHiq7GRUv8XyElaAGyZA83AyqDWcwXsTwbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qj5FA6wg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qj5FA6wg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91C9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716761662;
	bh=q02LStBaQyVZ0nAvyuUmwjTenXewwsOkq7QW76cajNU=;
	h=To:Subject:From:Date:From;
	b=qj5FA6wgmqbTYyQfRvuErPMxzomWtEKsVINhbYXL+LlmHjDdjEFKNVX8nvwJDqXGG
	 aGNYA4ylk/VveNjmOlfyx/Pd1dg87x3wbXiHiV+5c19R0cHym0MoV4osEqBW8/SuLJ
	 s2MmYcsnbI+4jvIPkYVw66Ubu2dTuHHeGUuPn3d2tdMgyilj7SeRlryWreiq33tW9r
	 Rv1tNZRAsHND0/Y51jJuOwMbNCWdmhRYvFk0kd0ffTYwoyBzcEYaOPRIWlkTzQto4d
	 kF8WV8Mj8lX8KhnlsMfdYYxOtmafUnlz3VwEwG/SWP954c/60tZzrOXsGxBOICEtx4
	 0oXv2x/WstE/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E72C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676166284.3963.9370479283455484607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08fe92504ef7127ff49d32aa4cf155f2920f623b868a93f9ce1fe41ae13ae5e
Date: Sun, 26 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716761662
