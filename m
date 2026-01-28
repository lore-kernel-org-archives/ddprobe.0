Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247CB34C83C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769602434; cv=none; b=HIbsMdG3tLPtNnH/7HtoaOVtTCkvbAYMUEiuH5SdrhArqf7hWVtP56naDROTaH0DkRMkGp3rIsiwV4+eyU+/E1R9UeIdya8cPUKuX6ANHjBsKCgb8kJYB1vb7HzP5Z4Z6mKauCkZNrb5yuarvTa2yUcxFZOkLWIHWyX6gz46nCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769602434; c=relaxed/simple;
	bh=0lN2GqGP/hRGNK3Qx/L0DkNrcfAWaxAHuePpq6Wg8os=;
	h=To:Subject:From:Message-Id:Date; b=joJMilBjruQr6eOxUC0e5dPiCe6gWe3V1aU4kE8k08pPp9sErTYF52eM5qu/mQZhVDBBBo1DhfpgND25AqL9tJfgwsXz3yYuKrLa0ZXjratsQQc7QtrhjRvtnEgz30vqNiJ5AZ+ejoDnMZbacxf132Yypu0gRtle1JOJsTpZRoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5219Kce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5219Kce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB538C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769602433;
	bh=0lN2GqGP/hRGNK3Qx/L0DkNrcfAWaxAHuePpq6Wg8os=;
	h=To:Subject:From:Date:From;
	b=A5219Kce0fXE3AuF5VWWbvpG1Y5hzHuqg5B2XWRpEMIpaWTPU/auA+Hoskld8HBWr
	 9tDFccexYVGDgCBRkbSMBt4DXzl6hEW8JuM9QZ9qPJoSfBPDLiYxAGbSbAVdTaUh6v
	 GVx2n+CdhgcMt1swKJ/JI69udvKGK0fWMj3lf+FSgaLZWRg6D42ZbXO7ZbOGj0z5bs
	 sdWM2C8dURVjnCMzHPP8q97E3G8/gfJakJNdX7O3fpKls7dzw9c1777xr6tNFR2e1N
	 eX+tqBF/yF3PkXnnhsyROCYPuJpDblf+G+tsmFFXEboHhRjVvxj1YlvxDKDH2YhYsb
	 8Yak3Tm7iGNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C0FD25B49
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960243358.27219.16044601172884247150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce766d31c044c0b6a638acb6e66bf92b1ac51db9e740c98a58e21978d10c822
Date: Wed, 28 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769602433
