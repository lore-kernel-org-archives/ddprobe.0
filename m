Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD863AC0D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773300294; cv=none; b=q0PDyG1gUkg144wJj/Z6hEvsDVCNqugPomsCbpeP9tvmQRMOv3XZnvYFw4oOR8i1fcDB0wSSLH3Lvg+jx6Chf6p93NMAVqmAFH1o58yn7G+bYIB+lSNtTMkvQOhw0t7NzC81dr05ebWPAg+HX4sSV8We3smxIG+8iS/tfDPiirI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773300294; c=relaxed/simple;
	bh=7ubE4aL0KV7oV5Ua4TLNkUp/l9Q4X/w72pAMzjtcXho=;
	h=To:Subject:From:Message-Id:Date; b=N2zf3CfwhVW2iboDgHH2esYZuSj9hm3LWSRwMRKwFgZfpUWLIBOSOHF/1ndm5wRuH487S+EBUNPprNU33VOVkFnd1J0tvAyTzqYBiIXMTldpN2oeYLl3bNODFjDZrlhBKd8ys2z7AebSIOTRWs9eLYWh0DBFf4hRiMkFxvpPvsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBC3Mnkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBC3Mnkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1710C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773300293;
	bh=7ubE4aL0KV7oV5Ua4TLNkUp/l9Q4X/w72pAMzjtcXho=;
	h=To:Subject:From:Date:From;
	b=HBC3MnkkbgACpEfQXZwHU+udSvM11YeJZMGkcbMyBERgw1eXRRDr/OoV5Vme3BHds
	 9uq+KWWY1aIWN8w/Hb74/PdXc7oweoJ6D2dFeG4KokAF7RqXMXeghq42d3IIe6kuu4
	 zCreUQFu5HDeKP/S29a8zJ2OdIDMrC08LlfdsjILUUrxYQsGT7422iAjzdbPRTJv6R
	 H+AA13VoKaUtixBn2GRVVFPFzX0RgXi/r3LrfgdtcJDC924lksN8TnAUlGLQYYuhs0
	 Jc2mwZ4Hc8xbc1ylr+4bakeQ3wrNnXfpkiITwijWKD8sEJlZ6v50f4cWEsqWrsDCjg
	 yf229mekhXjlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB1FED2DF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330029357.20941.6797431189565797015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19626620c9345f9d50c80a67ba96826583055d387ed7b6be2648133b727d5ea2
Date: Thu, 12 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773300293
