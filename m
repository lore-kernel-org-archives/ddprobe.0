Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106A12BE620
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761202794; cv=none; b=R9AzdOeV21drhrViHIBwUU8+wJ1AUyV/z7UOVVmRuVFaMFbm46kFzIwZxzuwWkKJQ+EcZxa8mnXS3IW92XxVvBYR/C3iqz7zbK6VQP+wkROgDR6bMJopVE5HldeVVHe9KFHXOHh+9miWAUHM2JiX/PI/FZQu4IJpMyhmJpFTZF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761202794; c=relaxed/simple;
	bh=FQXMOPN5H8ZTQRRxxF24Kvf75a3tl3RaoJeKGxdzuJM=;
	h=To:Subject:From:Message-Id:Date; b=cjHpBqCZanMh8wN8fo+2J8OumSgpvLH+Y62zMmAZOr0JfZWMeTVXaE9LwrE/eVcmUivKtpZ98H2DGP8Lnky/5wJYmpClsUuDyEJ16VD2T15qLIrQIw2WFIiKfjgRW6P9j7aWFHmhLYQi146T6OT5A/OKgm1pefYRiuDdFG8z4yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSFitzIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSFitzIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A3AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761202793;
	bh=FQXMOPN5H8ZTQRRxxF24Kvf75a3tl3RaoJeKGxdzuJM=;
	h=To:Subject:From:Date:From;
	b=nSFitzIUORXkMugb4EbXG9Jp1oOol6011H9GY0A6C6fuR0F4NoKVtQn+cjxbsZmIt
	 GptfxdwRnUTBTPoPgsk3rFW9m2rDOJ1m04M6MPp5rMcXhF3wyH1dfWOzPx7OhzdQXs
	 Jq26j9XmFYoM1plYLDd2BJMgsu1LI/iuwutqjzHwZ4HtwaT1krzBIZyDHK2LwI4znF
	 un92Nr0lywkI2pSg6G3JPL2RNckj0Qngjyss6AbuhMflLc4hroeFYRwaDfEboh7dXE
	 bDzzdbqsQADq5U136APXJ0cCzC+5pxvouNocOatQOblieU7NMKf9+48kSHo1xxVlJd
	 QjXaSlir39dtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C5CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120279360.25730.11208750812151835102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b8352bd30773f54100e895ffb551ffc3cc613f1101b35f1932271530f9dbf3
Date: Thu, 23 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761202793
