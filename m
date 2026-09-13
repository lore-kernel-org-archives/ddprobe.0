Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5394BEE44
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789309834; cv=none; b=et+NyJYjnBVsvrLSn84FEgsourEUO3BbPcz23KVFCAiH1I2Mr0HE6OajO7SCdnoCgyiRZLCOa9spZh/WATPt64LOoihp9mMoklgk7xoVaFQyh0HMu4mJvETJlVOujpcIM8BO5wEKx8TK6gGwfoJeDgRvch6vhjt5MRgKv2J59i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789309834; c=relaxed/simple;
	bh=O7Rtj8kpWJTLwdli4Bo8O7vUnjbhyhKu48tPYaDJixY=;
	h=To:Subject:From:Message-Id:Date; b=Y0SoSnFAQ6qvtUL61iJfG5ctTpNbexvQPVzWyEiJHeN/u5Si67dcui3UFz3zzD2Qjmr9A0n6kJCcPJ1b1GhSKyUcX1VkxYjI7c40+7mvycnMdIF58zBupySmelpOgQcA7U8ML93lGkAwqZyLybhWcvaq4ymojmR7t502K3x8ECY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxntSyEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxntSyEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E88C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789309833;
	bh=O7Rtj8kpWJTLwdli4Bo8O7vUnjbhyhKu48tPYaDJixY=;
	h=To:Subject:From:Date:From;
	b=fxntSyEuGgYSGGg4iQYldX9r6ZVGgR/p+sk1RM3wXEsfCrqN+Koiz7lBa2mJKL9u9
	 CbTDm2/vaXdUBlGAIfWdOy2amECgYosk3sYn737lUD0lyo2O2kU27pHitH/mUoWkTW
	 FD9iWACDjb7Iekl2J7GnDC/Pm8chZLvH0DzSGm2AbGDVKyLlQQFCJSLGPq8IjUAmkI
	 SU3c3Pgl2PotitD2gvdyEICf0d4ML7nr+SJpHFnmbcHJgoPWmEhXZVS7NxhLqIABCY
	 uitnSMy1wro01qzM6XekLduq2mKpAW3MsWeUhQhf5j6gFUIu9JLjX3qqZZEQTq8mGQ
	 QpW+yLSPKWmqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A7C88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930983368.27787.18054880841698841651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60923e2c9dc905559dac9dbd1d79c00d022752367244c6ff5e9ce76719ad8f1
Date: Sun, 13 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789309833
