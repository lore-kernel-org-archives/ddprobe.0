Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B51E3B38B8
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776091654; cv=none; b=U1ERj27xZiKdB11qngfc1ojJ/06tgfv7pgHpjMPb+4sirlPyfU0NylvJS0omNbj3kSyY4EuCEUv54D38BTa2gcJg49Z1v/UC9VOHLnwwEot9NtbeBjOhZ94da0W6SoM4r768d//ZyJZIEUgcftXu/121fxZYO+z19GnLD/WUruI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776091654; c=relaxed/simple;
	bh=qF/nlPlJJ9a1H/Y0vGmWBDJQk+RY8/UPWA0RLEb3xCc=;
	h=To:Subject:From:Message-Id:Date; b=EC9uH3XmCPRUD5qAnGqY4c6D5iFZZ+3v9wpEvvWyKtlX12GYDuZjWOgm49pOvuTG7MYft8l34OkedkerTsawoAMTRERV1i10TAIsw42cc6kpznb0n0i3apF/uKRswih48sdP2qA60N671UM7XvsgLKDVI/+F9TC8J9edQZBWVME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rALNLynf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rALNLynf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFACFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776091653;
	bh=qF/nlPlJJ9a1H/Y0vGmWBDJQk+RY8/UPWA0RLEb3xCc=;
	h=To:Subject:From:Date:From;
	b=rALNLynfGH0lI4Pe0dlB7pCcbjYgziVQERSI3JpSktqyi+SyQKf1gDPNoC80BHm2v
	 ToOxOq2Oafmec1dRVxlv84eUe/mttNinULFhyHU0jEM0lMBMbeBX9jv8sIWjaK8pFi
	 sch0zkpFgcP+hd5Mhe3GXOKiSUhf5ZC5GEV0jemZNRzn3IOrjpUWn8mc08wb+71riz
	 I4QhakdOGlYYsrumWDjQ9MUGaJ0cKobBMDCwTJXwjG+Hg2ukNf5VFoAR6vp8N2KIwt
	 Z1aUmNBP2JoEE9st3gttPeXe7i2UDXpIE6WtoQdIeA9fGgNnI1u9jFOMxHvXtgsAu4
	 Nq18qFa+nRzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C1F34C5E
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609165370.23490.733682063363387616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8405ad748f1cea06584ddf2b7e7e6a629829f45bf0cd1cfea918904642b007
Date: Mon, 13 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776091653
