Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA733E1CFF
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779093634; cv=none; b=AQqIocbY+On0OAjcMf0NY4Bh1+qaJLL1uu1RjurTeXXL5FyOa6KGEN2TOFDHTlI8Sq0XB6ttwqTT0q7v7jY5ySjTkjP5eeBL1VuXCKFAtjbpHAH9WlXGTU2ajLS6Ifeihjm8GDXrjS7382b9cJMRXwTh9OW5e1XKo0YiLVrceL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779093634; c=relaxed/simple;
	bh=fg2aOdh1asROvErUYHCoD+UA1Lriu23UpYUiLsKDQuY=;
	h=To:Subject:From:Message-Id:Date; b=SbDBO0OtXk0Wyf7V4Sq5kM+gCcuIAEh6eCaNBR5VtL/imRZgsMqfJaGDhChOYb2p+bpZNNCpfGPtcc050+ofFdDhN+GodeuLAMu0zE3Iiv7LcOcPfeoUdBnkEk9TjWwoeCxd4o7IdZnrVymXvkQVIPHg/2b1FIV+DZa5JrfgCOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDJwd7FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDJwd7FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8402C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779093633;
	bh=fg2aOdh1asROvErUYHCoD+UA1Lriu23UpYUiLsKDQuY=;
	h=To:Subject:From:Date:From;
	b=hDJwd7FM96BStIKRXj2gkzouGZ7n9I+xuX4eTP1624pU++5XQ0NzHLi08YErr7Tj4
	 OOuZMZFrEJ6Ht3fPuFK2RMBbNLtGGgSsIJS0RT7k6m2zDhnzIR/dfl9hceep/dCVai
	 pN9PnjmP01SixsrQU5+xjLpGlTIGarmucfo7xAYBix5Iu++G2shdKo30neQ/Y8bWCN
	 d65osu3ZN3Q6LhAbK4txGwRq4e3zqS5x3HzQFt5/16++SRR4WSf6OOBmtMh+bzOX1H
	 upJtImPMJ9tUtX+TvKldmub882mHPLvWNL3d59vOae83mXKVss7Zkc7Jrcg9DkEbr5
	 P/XQEHpQrvcOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6026CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909363373.13850.11968948953057522276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997adec90fe61952689a23ce023d9c5370a75552db05fe4df73a63e1cccf6ab6
Date: Mon, 18 May 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779093633
