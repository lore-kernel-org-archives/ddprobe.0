Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318F81C2457
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734689754; cv=none; b=onAjQAp3uoFOBQLiw7MG6vrgEO9c52oyL3Blotzhy6u+cbc7fEhfdTBAO2c4JNfwo0oR4/rKgIiRHaV4h60wyx23eEKjMhlUbr0qvXlIgtg6unE+3KUMsBcoOcF5rukVfrqKLZskg47DPz0JWzvynekEO14fMAyyMiVsScPW/nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734689754; c=relaxed/simple;
	bh=lOObbpyl1AZnXgzVHwcCA4aG+urdLuquFRFmWA2Ccf4=;
	h=To:Subject:From:Message-Id:Date; b=TQZfHEOQecxGid8b4W6T4hUmMqDYw6f5WYCgocE9ynon/n8N0mYrBgvWep+4VDeDpd2nCfYWswzIsr3eGzPuBbzEDUi/IFNLyY+qCaKtPO//1jJ+JVgN22y0HwNojJWAoO9H+e7+rWrLpuRfMVYUgSaw+mJlXMmwmgn21KfikTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXGo7d1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXGo7d1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE601C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734689753;
	bh=lOObbpyl1AZnXgzVHwcCA4aG+urdLuquFRFmWA2Ccf4=;
	h=To:Subject:From:Date:From;
	b=IXGo7d1Fzc2G3zH/6X2o5Wz4Wlb48E+bKFkf4jndmsWEMLzNbW9QjCqqkJ++I4VrR
	 jq4Ata4ySXoFpT3WCagvbu0CQu53ZKBw3cQIkxTbPQmnnAQZ6HRhgkGdmFSLyo1yec
	 iqm0YTcyPsYzxs0CyzIigIGBdjaxZKTptQmwIRXtbS3iP1eEJyxnPSwTetNC8mdTYh
	 IXkgJZL8sKQtV4gS8NRhrfvh87lNRKxZuwzZuxpeKXU7BGnJN7jg87QJbs2eJZU+wd
	 uRUEgaKyjkBzk8EbbFv+9iNpSpG05+PMLI0kXesblroQLqUkeoo3u8+Q3wl+QSZTeF
	 V+lwm68vEACsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93340E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468975359.11939.13368172709926637694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3dfa4efe21dc61480217c0004a6a032bd4411d433cd07b2d91da713fd9efc9
Date: Fri, 20 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734689753
