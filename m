Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E7018F2DF
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725971154; cv=none; b=kCW4/As9iGZpaaMuk+u2diRIX98ziKSNQrCYCvIeu1ftSltIW8lVCQ2lc8EFUe8BUO3uK3P3aEzDqFR45S4S/1ymo2xWomIFwJku+bMf8t9P9y920pgey6GrBdW7e9Ix4ppZuGv5FXw2BC0R3OKXOmkQiX4CzwdsHXabggoyAEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725971154; c=relaxed/simple;
	bh=d14YiIZAEnfRvKWrcgQDCHWABgG0YplbajK4d7AKBSM=;
	h=To:Subject:From:Message-Id:Date; b=kHuV37xHQ2oPwL5jeat7icMMUB30kWMMcA/1k9gtPU4isg6a01Vq2KRjsp8q3/h+9RRRg9gQelvkEgT/yl8LMGCCsT2L2hzJxihKuqyM+0PJ64fYif9zjhAHwvZzGLX11WRi3kJ/SHke4PUMSLhdVI3v/8eZP75VLhj4wobPUPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S89mqJdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S89mqJdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95EBC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725971153;
	bh=d14YiIZAEnfRvKWrcgQDCHWABgG0YplbajK4d7AKBSM=;
	h=To:Subject:From:Date:From;
	b=S89mqJdEW4RD+Yl8VDSzjQADL36izyC2W7PuisZ8DlQi8s/iO6wCXCcNBoy8fxHd2
	 lhEhuskQMFF0xbPWrRrTGS/kubsmMYLBh6+PAZYUy3fBw1sZ9Xmyla+bIE8Mc58JGh
	 G9WAsInaCkfeojYRHegpLFj6mY4BEL9qfQfvRAOu6OmRXxCayljFNCjX8SkgZq/qaI
	 d/7zkXncLIec7YcWXVHhJ//Fyl4fSoxDJm78ZWNZDdwc8Z1a0aBFFDVfn7jh6pSUau
	 XY2NmPNc/DxdbZlLY2Tjmw04qVBu9sunNOxwYzs/elLMfveuOo8kBq9Oyd7yySqXXt
	 +NRXAr5llZ8vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C0AEB64DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172597115358.18150.17414447364283642999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9f6c72f7a326f23ea6f73bc50ff38a41315ea02e3a28afd4a19335e3953a94
Date: Tue, 10 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725971153
