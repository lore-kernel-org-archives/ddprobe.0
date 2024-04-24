Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1476474425
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713986483; cv=none; b=KCvfzEuQbWJO//RH6GxGJ1xtzVjpvlo+8fhL5nnFaaBZ4/ntbTfLaDNdFt4MjzI+cwZ49a3icyJ7XaKTkYMBmHlVeG9q/kF46qPBmE/K0J04A7yTsXAgWOgPSZHbWDMdCWLlcg9Y0tPU/i6QIAGWTVbHHtTDJgQ57hBwwEsKg3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713986483; c=relaxed/simple;
	bh=mSmJgJoqm0YHGrYZBKnJNVj82P9bUMGbGO+MPE6TWwY=;
	h=To:Subject:From:Message-Id:Date; b=nXpPL0LA/C/WldgZvPW7X3iXOrGsnimF551dj52pS3rERdbX7Df3uLAplO0b6evpJYEchcOtzSEveXrifH9GDNtEHwvBS/5jc0Vnr1tQEDih/C0J+UsTS7P/YGKO/EU7fAuwQGCzGMUoY+qZk2rxOfH+i909Cp1TCDn6zdAbXME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdDl101S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdDl101S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E021FC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713986482;
	bh=mSmJgJoqm0YHGrYZBKnJNVj82P9bUMGbGO+MPE6TWwY=;
	h=To:Subject:From:Date:From;
	b=FdDl101SP5qXhRTwb6PPnPYupdkxnpQ19ewX4MbbDybGYyw2JAIrgV6LyeuqKOUFe
	 VizE2G3d2tQZyXQGl8++U3TP2lB0jOTjGTNs5Jz/AtvLFT9AjTiV+/PGFtuwwgVnPD
	 z07Tx6e0g8w4myuBt27uH45bhn60TKKnNSRcTmIf+FWj3INnvEsM6iA53E5fQ39beh
	 hVz4JRX1kLSsHqAxzVLqCqf3ExFod0z05U4zNHohIKHjEt2QriXcDHsmStDSoHkdXM
	 RGzcG3mi2ilz1kASP6rqanPkwhnu3bVds0NChahlgr80EQtJ6bqv5DCkMILxM4TbBQ
	 ZsXy2QiBbyChg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C47C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 19:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398648280.27359.4218469214831725760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4a30cd21e520fc3b6da03dcbf88ef132c9e7a4374b551c85c5cbe00e685f24
Date: Wed, 24 Apr 2024 19:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713986482
