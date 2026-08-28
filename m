Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2331F09A5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787887234; cv=none; b=qvnqUd25agWGjM1qpP8Iodbrq/AQLXSALB3g3+MiGu833DHKPNkfpZhr1Epl106SN4d0JvTpypqpeOl8+2EBV6T1lS6O0KFekoOP27tHwaUtz4ijEkVdSgwF1KWE1luztYhtPcasbBY80UakJL4rQL13pIc37wPncXGFhibJTbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787887234; c=relaxed/simple;
	bh=HwjSM8pSHI5CUR1eXHMff6/xxV1cnK5SDlK6TQwgEnw=;
	h=To:Subject:From:Message-Id:Date; b=Q3l6YAoaPLFIr0goaXaVO1Y3xxRxkW31j6/K3fw54fWlaYKzwlOmOYElVJolKBqK6Glk2EjfaA53tbjbk9tjfPbsQGzYUxNr5rdc7gom6q2J+Vn9h1HeTeBGaQA5cgmOrePxjtiUi2HGiBqdts7KAuexznDWotLBRPxXB/9lUSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg3R2jub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg3R2jub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D40C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787887233;
	bh=HwjSM8pSHI5CUR1eXHMff6/xxV1cnK5SDlK6TQwgEnw=;
	h=To:Subject:From:Date:From;
	b=Mg3R2jub7MkW/MKRQUg1tCubkYEeAe8k72gODkifr42VOydzesjCSY9/BASsucWO7
	 EwMKoyBsYQgl3+tegHxQ+3JgBXWLFvqk+RVvb8rQltY6fjRRwDGscxwC6ynTq0bVmV
	 CQ8WMIAnDoqCk3ZAyeILk4izDemTx5nZaaYw75Ipzf5HZPvB24q4L2S9ZVRwp62glR
	 nDxwXwkSgsKcRq6nGjCg8184kuw8R+2vwHQGPF+3jXFE/kfwHvAAWEzMIgotvrEzCw
	 0ikGY5Rdmjh3E3X8IMFq+RHCUgBPlvj8Sd0mI8aNg+3BxUjXOYIS+0Jcr4F+uu/KfV
	 Ty7yXC4N7SdUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AE9C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788723370.31599.6592074580847866372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160f3aa3066c9c21500f0722410c2f0b0e61baec9b2d840a0ecc030ba005fda6
Date: Fri, 28 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787887233
