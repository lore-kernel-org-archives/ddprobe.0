Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280CF4534A2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778177854; cv=none; b=OG/EYQNGdyGwJ+KrDjAMa9dARB+U3UfGopcHXVt82NB9G0fH5lqfPBq3jEcUq8V3X8+4EXsgoaN00NRoQBG25tTlwN3K7uwGsyc5PUp9AIo1umyai5n3qrorvNH7v7KPtjLfmgXJepQObZBezOSG6jkW4Tt04j85NbNv5OTBwPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778177854; c=relaxed/simple;
	bh=2r9PcRBAnMlyMyIo2fb18O6vT9z0HDZFve7pADFfHNA=;
	h=To:Subject:From:Message-Id:Date; b=QkIGVwqE/5hps/sqx2fwUGP08/Nrev9h2yN0zTZ82N1FE/vmj4l/7ppSW4fg+5mQ/UEhOOyYB4qJ4rYBLrp/DIH5Z3g6Ia7Xs8yqVlWo6I1UTw/1OIaEDi6u6jzYj9R1orDr5cpVy7ZRj0kZQUcdOFEEcPTAkhpEuLc5FG+hV8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbvohS3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbvohS3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF31EC2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778177853;
	bh=2r9PcRBAnMlyMyIo2fb18O6vT9z0HDZFve7pADFfHNA=;
	h=To:Subject:From:Date:From;
	b=sbvohS3hpCkWQBP5l/AAlBWZf0IVn+yJG/bTRiY7Lj78X8GuUfUa1cmYFIuaXFFQR
	 Cdi6LfFhTYfT0M2HSPlFykrBw37UN01qv5x2Uasplg2UbdCcBVcsIO0LlPVzwQiRw2
	 mC5XugFIUYgcAJAbdslqwNJ7Se0vaJa3EihncoWzd3UbaFnDtCNIF8JSwoLfIx7Owu
	 R1nJ7l2uSCrVwP7uhiBx2KRFV2VcJCkOFWaiVIO6ludUi7WmG51VVT6QpgEFQTDeAC
	 NyjntVln7s4adHOYap6WMoGDt299LLxL5E2aOUiQKcmKSW9Uj4a24OFCrlhozsbAc3
	 KEIzfyySH8VGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC426CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817785369.4700.5466330906010907912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c73551f2ae22e2cc225d3d46a6e2af4f26cc44e9354d673900e6b7187c0eeb
Date: Thu, 07 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778177853
