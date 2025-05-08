Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D9072612
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746746393; cv=none; b=hRvYT42jP5MF8Vq/ZXHCheDtIjkiuTLmE+gEZmKy7DTVqJby9kJHDk4djH4ikvTQ+rOoGx1CkbHsAmtcTjGynlWyx37U/CK0QqAj5qcalGk3A2mD6FFRNc6pKcXxlCCAA6GrlvWEaqPK/ru7LmHKXUvU8T3/I301AAHOM+MD19I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746746393; c=relaxed/simple;
	bh=MR7Zgh9jA8jdNCroZcZjzCuTiwk12c/2bMlljlc3d+8=;
	h=To:Subject:From:Message-Id:Date; b=AkrJ/rk999Hl8ZyQVgC9hvttsJLVfW1CEddBUwx8cbqMRICu5L6RtQP+NRKlsktgqpNB3QI5tbA+FmOEsyBQHGDqzIUpZekKtqsLwn6E2pQmx/vHFpauZaa1rqYBvRNBl0nvv4NCfcP3A264Io/3YuDNDz9Q6MlLyGuTuLvMbbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHpFC3V9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHpFC3V9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2299C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746746393;
	bh=MR7Zgh9jA8jdNCroZcZjzCuTiwk12c/2bMlljlc3d+8=;
	h=To:Subject:From:Date:From;
	b=sHpFC3V9xfkfsFWRaIlnoPJJDEju2gNy2c1cVhQ7VRGan3cdd54LeHKqkpOnRi86y
	 obquYGPZDxMYxnc43HNcX2OCRAunaWXlrjKZUIeq7+OzGOBqYR6HzZB9vCRC0eyT2o
	 qPl5sACc3iQfjSAdiEwMZw4jvoF3Iyo67Ng2FDnVyrmP9rr03f4R4DSNe2uRiFcX/5
	 YOaOT2hW5M5/d6iy3vlX0lo4dSzflGUt/kRPEJE7HCfg3iS803xw5XwDNU7ASVqDun
	 TNH9CJe3o/8pv3RGv3do9nb/7lqPGOW7SpzvQEGtqwg1750CFxbpK8cPcINW+xmmIY
	 SM+Nwho71B9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92592C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674639357.14033.4727603850527919270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26114669a16484ef8ddb84ae28cdab3ccf3708810dcd19aaa1f2d33f2e968c3
Date: Thu, 08 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746746393
