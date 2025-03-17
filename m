Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED861E1E00
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742243394; cv=none; b=H0ZkmI/u5YLgzwiWUo9NUQKpYvx9hbmIRTULoRAHEP1EUKERq/XyAdt9VqcDz4RUVFHr1fD9G/ldVdVOspBErm9MYcLQspd3vyCOmCeatZabB5BfQvGW4tmZWNvnSf7AE/ALvCrdfFueaA4Q0cWZKpCygXOkuP1kKjSfyGEaIDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742243394; c=relaxed/simple;
	bh=HEqGm40HXEZdSQxeDuVPDVSCWYZ7G7kf3N3cBbajp+A=;
	h=To:Subject:From:Message-Id:Date; b=mewnBz2lt8bkdXP5sJ6pxWDi0iw8nY4tBuA87DRNuu9Enco9wkdpfu/nEuKlE/OorfbqyMaLvTdlFcoCLl9THBOs54u+uPh+W3Vr4VXqqAR5YKZ5OtSKwEMxoeD15HA74acB76E7alYhB47HhlRn5Ib11TUGjJahtOuBoZIz6gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvybF0Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvybF0Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC55C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742243393;
	bh=HEqGm40HXEZdSQxeDuVPDVSCWYZ7G7kf3N3cBbajp+A=;
	h=To:Subject:From:Date:From;
	b=KvybF0Bg/RE8xcNTFlD4wb+rNuqIY51ZBi72R+F/vf9/3QSbKqBSxYFWk8mtZxW7n
	 57QDcg9g7HIbzmnTN4SUGPD3SXEw+yUZZqYiPU9ddJ8/q+9U99z7kXWOCXoHUA5kqU
	 1bdLZt+nE3QOrDqJwEGYvpusrW9LPdOs2nSkLSNMo4gfRPmmzMVvLtBeOzxPdj8hFa
	 9L0bmW3+3OpqpRHS6f17Vw2mLqGvqEbVxLQ3Nx192qH2EHnj51JCRE1EZrmxRYilVq
	 MP6LOjFTU++OsPfXwxJbPcOrw7ZJLgoJL+wNOSjRJ4g5IF4EXSxXFDwRxQ1KlYQNwt
	 ElqTy4KSRxi2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95794C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224339360.3189.2346567695985517459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5073a1c7c66a27d5e1a666e4ece3ba958acf53b5538c2512b243539fceb426d1
Date: Mon, 17 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742243393
