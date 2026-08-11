Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D31742123D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786486234; cv=none; b=jSowmikYeqpnH7+EJx5IfHLQNk69FUX9gBbDEiMeVyWlYn1RxzvKXu2i2d3999xELUrK3gPkAe9O91whnBPMEbrmdghLxgm3Z/M+pOCWWEfY1J/VD+0Iud79F8E83zvL64b74Uakt3Ea/AACg6GBi2TCA+ZuvMxqMjLCYVlZMyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786486234; c=relaxed/simple;
	bh=LnCbZ/gP3qRV0fC0Ktm622ATwCC4abkUbNdKacMjmDA=;
	h=To:Subject:From:Message-Id:Date; b=FN+DPPDxcjhBu1zaGv4MIF3Bj6m6kVf24qSv4VtkgcpiOWoQLFojefv6HVoPL1zccw+ffsEN9iairM6aZqZqCsHlfbGbwp5DRcjqTsZRjWV1fSwna98SjBADL9Zfvn7h99eQ18FR5+fR9hZTH+tjKsmTFWtLsUVIMPUXGfEPzfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rb/os/+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rb/os/+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AA6C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786486233;
	bh=LnCbZ/gP3qRV0fC0Ktm622ATwCC4abkUbNdKacMjmDA=;
	h=To:Subject:From:Date:From;
	b=Rb/os/+RVV+m5+C+3PoGEa+pMFapkhmgsHzOapjZuM+nBoGkS0c9f8AeLetWdXjc1
	 BDQ1cl8gON/qA6Cx+CZqjA7fLKM1GHIIc6WE3WYCwO95yvJJekuIiaPq6IIMzbaFwL
	 9PrzHMEjx+sjtXE2KHAYiVgCRuAiJi7d2iUpuXK1+FhFB133fPKuM9wmWdZm/sHZMe
	 lXB/ihxrzKN7xbJVq3ISKDHd4c7g/R3T8AANbY2LVyrr/5wDoEr4CcjPDEUfRP9dXb
	 wpC9iR5siYbYE3kjm6R8vxs6c4xkxFCzqZxMn3e/ppQRvyCmBXmMwNRn8NHYi42UGA
	 ju8tDRc9T+9LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE10CC5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648623369.8027.4349409642290894492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53df9b5843e7de61f0bea305c75e1685f1aa8417498796bc217d245bb9f0c631
Date: Tue, 11 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786486233
