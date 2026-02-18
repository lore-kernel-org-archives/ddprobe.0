Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0774318142
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771402493; cv=none; b=jmkL31RVOHAYMpXVVa1TQlTbxF9y4Yt7xD3W4dyZhnzIwB2o85ojuMLVoocye24fxpUBSRTpsWGTZ/xf92DfYBPRmQoZHbGc/fuzJN6gtPXyMLZkX8sAUnTmlXBpUI1kYY7bcUnjsmEeNF5ZxyB0FUoOoPnRfSsJweRdTdJdURo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771402493; c=relaxed/simple;
	bh=bRrN8sAgftcxCOfu9aasExTfYrtQs6Z5u+e3pT/LlCU=;
	h=To:Subject:From:Message-Id:Date; b=T++ENm7SVotTcAdrtO4PMf2Jmkzk9VJxNDNrb5Rn1i3u8pXBaGY9UfDJ4HXY7aezT4WoUtC1uSJl2aH1002gVSje25xrE0u5Tk+RUP0rFhmqWt1TS4+R6imTbo0eK0aiWm5NuaSAQx8/MXJ+winBg4yEwhWlUryG9NtrZn9Opy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlcdHrU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlcdHrU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F1C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771402493;
	bh=bRrN8sAgftcxCOfu9aasExTfYrtQs6Z5u+e3pT/LlCU=;
	h=To:Subject:From:Date:From;
	b=mlcdHrU8c5uG2vjVw5ifjK1QHmSgpfx9aTwcS8I6+BT3JTijyw/w5dykzwrgHtVjQ
	 WvRNVAIidwMDVdJ9Y1lDsWTPab1H7uIDR1fKf9PvnokPxXPQJFiHEytZQv1tqQ5Eog
	 1ledXZOS2tkhuS3Fts34Kzss6Dc9LkCw059+ZKVTwL7b+pU4484pe2CZlTNaISJi3u
	 Krn/McflriRyMABISwQ9UadjCBkUr35YMxGeGzHtuax9kv7QU02lHhkimZCLDEfd5c
	 4Q+LNW4n9dghouSrtTqkVdHUIdImSujgu/d5N7QSK8f4gh3yQkL/LIW2JOp4FF9CZg
	 /6dzgjWk9oYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B8E9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140249358.16237.15140295061892293428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfce768164c237f2bed4e31dacc2bcc27e52442c6f2a9456fc623ff8fce3dbd0
Date: Wed, 18 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771402493
