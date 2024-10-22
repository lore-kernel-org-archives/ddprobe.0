Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D83A1E495
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 12:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729598754; cv=none; b=KhWmXsLI/lQ7efzDW8+DQpN5pFHtevfPmJitOaA8+mux+mOoBKVaoIswAng+69mCKjCjB87r1rBE7Ps8Uz5sxMgMv0Ywb5DBLpMHqrnl2llcQeKaxwwSKFj3YXfy1kiA2/aGWmxm+OxRpOHkZouY0FZ/F4GyivXWSnUA3RlzbBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729598754; c=relaxed/simple;
	bh=RuW89M9Mwh18IkoTaCRipyMWscyLyy4guFbsUE+1POU=;
	h=To:Subject:From:Message-Id:Date; b=OK2T0Zsi24jJx4gNvlSGOl5ue1x4kxIwcnYxSMSXI23aKrQx2OD0M/hhmhNkQdK+He89ce0OoOH8BRgQKCXGd65ejasNM8RwCdD1nr+L3TPa8euxUMiFtXwNH5QSNf1lBZmdn0WYv9H81qkhsVGMeWHNZUkzU0st11SzOprHxo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsHSa1Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsHSa1Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B44C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729598754;
	bh=RuW89M9Mwh18IkoTaCRipyMWscyLyy4guFbsUE+1POU=;
	h=To:Subject:From:Date:From;
	b=QsHSa1Qo1MQ2RfKSBZqJN5D81JhsTbkc9sFTTq1UVSKI0tNrYXG56BbFtDIY2U9ZF
	 S5lJhsuwrXfarD/b7tYVMKKcOQIlZppfdD9g51lBD4SwenuwSZuxNlo/lnBjIlyYzD
	 eQbd0COErqVrzl+SfIcx7bTw4pQjRWUf7ngMqGWj+uxT6egoplL4r6yA5wnmYd46RH
	 9bQ3WOSitat6y/7Li6y6gtoi9Jps32I17rBzKcXMEf3fZOhv+SWhBUk3JYao2E1195
	 1sq562w5WuhTMe6X8C2uOCO6E/4S0WvJ3bxQmdPRA0BSg8RExoG7ygtk2wVPre7ylY
	 FM97ptGsDnryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF584D3C939
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172959875376.15769.17230620452252509585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15816cd0752a0c9eda6615e85652aec64b1c68897006d2f85e5eb1fb5ecfcb98
Date: Tue, 22 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729598753
