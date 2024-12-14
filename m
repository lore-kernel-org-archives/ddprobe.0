Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AF7169397
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734186354; cv=none; b=aEC1WTy+cho8Ldv59v55LAeQvw5ELs9CMcvSYIj1MvLHXnsIhrXQejRWLPwsl9x/GWT9+blHVgOzj3kquccbQVOIL5ZbmEv9yexqHwFS2g/k51YBW79oxO4HbvhStbUy5hPk7qie7mO4ZpWRIK1HFVPejFGv30SAOKTEUai41I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734186354; c=relaxed/simple;
	bh=QLIrNGeHh9t5sbjM+8WXXJCj/VXrrCXd/iPI2aOrNYI=;
	h=To:Subject:From:Message-Id:Date; b=KujviqLr+KYf/5omgpAKJU0N6sbMT9DWFZ9ch+Wr5vzgnkLKH0cbfxO+DxX+OoJfBBcYrEU1VPfFnhpeSeHB8VjzI/gmaOaR5Hmz4tzcMGLLJu4hbtzxdww2czH1EKO2wvmSQDjVTisLuAdnSJ6FIwhf8fUHn09+MMI79wzaaj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vkw9Nltr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vkw9Nltr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A164FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734186353;
	bh=QLIrNGeHh9t5sbjM+8WXXJCj/VXrrCXd/iPI2aOrNYI=;
	h=To:Subject:From:Date:From;
	b=Vkw9Nltroigrp/k27tL57JzQBg36H5vMVR4h52AsOmhYjTl1XPPxjrXZxVvOoTJtk
	 xTDLImm72KNVKnq72BwFF+Vr6MTwJyx1jPzSnaD4p9SMFzNIugzWJxXvZwXg+ecT14
	 G2vyAGuKuiVvSjJR5qN7Q5OtN8PfmnyX5ATpbXrPCBpZcuh9Cz/gbLBSyyWhQevXC5
	 ISuJruWNPHuyZi5mYQ+7zNiSfvuVDcifJGq7x+w8H+QiBFgY5vFmRAzXjaqCPqUZig
	 zvi0wDnbNm6EckoBcKZMWiAfl8t1LfSyFaZ0VIGuclho100mHmlaCLv2l1+EggmSM2
	 HUTM/KekIDh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0DE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173418635358.20553.17898446921890408160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd797ddfc5210eff9c394f605a419b773ef24b647f7d22440ed8316d9163f94f
Date: Sat, 14 Dec 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734186353
