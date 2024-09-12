Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297CC1422A2
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726115754; cv=none; b=ii3bQF+l6PGFJ6y2Ct5YC4R0OIdSoiL1oJVTQRiirc3rBuFKlxlLZ8Xlau25ZjztIxSkzLHq4h9TXgMsIQZpGR1w8b/ngB83F1DUyukDyF2LriXTZ8RMfD9yEsr2XWMiA22Qw03/gGaQdm/GlHWjJl3Qqgc8hl/gT/TG/Y0dqnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726115754; c=relaxed/simple;
	bh=6qSvDGiOxcxdaYG9Jcf7TKo+iPyjkM3nL37AuATOAhs=;
	h=To:Subject:From:Message-Id:Date; b=rS8P/WCUfYkrq1NyZfs5jXxhjyLZovOek8bckvRXQePj2RYuhNrcfMEMUh5/aTtnaRtSC673mJ/BD6IwWG/eULD65QNGgVIQ5dI3BZyvrDBx7IFVSwtp5DH81ecg9TU6BjjSquLvJ8Y59uDE5peLzqFTYUJJZCPv/ejKVUBiVAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA2bPDjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA2bPDjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9FCC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726115753;
	bh=6qSvDGiOxcxdaYG9Jcf7TKo+iPyjkM3nL37AuATOAhs=;
	h=To:Subject:From:Date:From;
	b=DA2bPDjMuVnd10tNpB5FxNH+iw/IQocXvjsWdR1HWkzURQTQmjmPTbwonxQl/9+mq
	 ncZL21QeLdXEJE9YqCrMv+j2qgCupMgprV3YIdRyGZ8w+/grXyhPLc7tUGqfzAi04G
	 S3/k04FVhbudA9QY0GtejEOGMGjwi/MfOfOgX/sKK12QAd0t1Syb7zQ8l9yQ8TJoxj
	 nvoy3BetptCKqeeho3NfTZDR6CKytUSPv4tqdXOMRuwo/ZhkkmGJX6v7A/erRz3afH
	 IinUZt+I8ZHA2Uu76zzCsHgb+IM07Oaucmomhv7DUlpTVMP0tbgDNDTUegll5tzjby
	 oJSN2cwmNtqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36E7EE6430
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611575365.12510.16219597006981403923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf37c22328de243c06ed3ad586237ff1587f18512a2a3a6be6a5f3bcac3eab3
Date: Thu, 12 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726115753
