Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4337C125A9
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727631954; cv=none; b=llq0txSnFVTPeO3ADttw2Zr9f9p7yCo5lowG74X31vlX1LKQy/Uh7utPwFMPWRyCKor3Le8Hrqj3EodtJVSKtsx3uOCafUffK13/4KoROTBgF8NugENjbhyOfSIBVDiKP8cw2cG7jRYiXZ+tK3nRWSelHpGRyz4gP6yFS58Sx2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727631954; c=relaxed/simple;
	bh=746JQ5MeYSCX10vH1XiG9UWD5Rj3QAtrus2neaz9Miw=;
	h=To:Subject:From:Message-Id:Date; b=O/jy3BgQWuVZrhPb74n6ixGMtRKxmuhRKa5qzZZXYGneKSgwnYneoDKCYseDhaJtDMxlW5mX9z9EsIoVL287m5QXD0pxyFs1OoueT0asovcpynN2O5pWfb/qD8GOp4lgYQ9BB0ULpI9kzn6kD30FutAPSvi/cFppGVRBSE9YNe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLfJqO/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLfJqO/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BB3C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727631953;
	bh=746JQ5MeYSCX10vH1XiG9UWD5Rj3QAtrus2neaz9Miw=;
	h=To:Subject:From:Date:From;
	b=YLfJqO/ApyyY+gqFqIu9d4o0BwQ7C93NBCccBkH4SVXPGEXWc91m34hcYWilMPN5z
	 y73hDJ7UdtAMqTv0EqyjERmd75r7XqZsRdL4vPgBF2lfertFrsmrX4bLuPqEC/gMcE
	 W8iZe/asc0WCBAYQPEyJdJv6CohS32C+FYSxfD4xCpMhZLRYrCNMgb1SPjqNzfs5Yj
	 QHtKijwhwAjsQVwV6tWf2QCw0Cjtd83MYKNbUvZyudFUpxlLmKRfve3txczqu+4ApX
	 p2HPF8HwVMu6gAbeVIvwguqZ9w6M9466XNcGkJkpksWSboVGl/pOEsh3xFDZ1bvFO1
	 QRfwJ+Wxb9zYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B726CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763195361.7568.7207152086858831035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57055904b167ca325db55f8b6e3918a47f8c63bbce00d6234e826a95597bba35
Date: Sun, 29 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727631953
