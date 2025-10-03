Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36446134BD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759499395; cv=none; b=e6mP5r54i5KfrbngAV4cki7uAcpkqh9iulHKIZix4rihBETv3kGXXuqoHEaGgJe/UGJQHpeybccqjvAnpBEdC1Kfxy0xGWo4ypWeo9y3CelvVt4S982GVRFE74NmEzU80QCOyLDHUdPHik2Sz2LD80hcDhdP+IHGp4vdPF0bDLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759499395; c=relaxed/simple;
	bh=fQxdD477zZq0eo9uI1JP3+S0bR5aXmKAWWcf2WBTQVk=;
	h=To:Subject:From:Message-Id:Date; b=fGVlvCxjr77gJLR9LIHwXmMwbrPIC3MWTP1jzRJDwv/2Mhp1f9qZHzIBQt9h6TDF+d2WmGlkU53RWSwoBgNPMe6TWVSgieWmBgFBhcZ3NZMfP0gXCfvtx/PfWtlViilp1GXZMu4jvMiPhnLILKODutjYdScu53ie5e2c/D6gxTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q65uAqfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q65uAqfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D82C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759499393;
	bh=fQxdD477zZq0eo9uI1JP3+S0bR5aXmKAWWcf2WBTQVk=;
	h=To:Subject:From:Date:From;
	b=q65uAqfpPl1aBwwuuh/h2q4Dv6sUD4ZFi5e7vdc/s4AGU1u18S560jzm//gJHCZBb
	 Aq6iF7OhY17ZPlgD2Z2JbwlVCxd3AJNDOwmYQ9n8FVGb7ARxIpC71KeeT3w/H2jBDE
	 uhtgWvZRWgtT04GVLrsrrwrUMNhg8tmgFjv/xI0qUwnrFrGHRCbNbmLgZaNb/wUI3T
	 ikf9ZO6ayCPBtdFwsfFwxo7A0atk2/oNCzWrdXdKD/yc/fixVuaSRAwYlvJtOHpL8t
	 YUDJDNTN6psVs9QyDiIQaMnXVJzvW+HquxCtjxz9C2r2N3fl/3Bg7VnA1E3/xV38qd
	 YPrdnfuBfEn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDDCCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949939357.10293.9576330814969599493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99b698a1a8d2cc90c021c8b1959c90e4dfa3bd899f9573313e54f0db04df5b6
Date: Fri, 03 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759499393
