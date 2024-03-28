Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A9139AE7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711600097; cv=none; b=pyNfyABVMdh08fJgV7x45Z2wXDXUkmaDzl3U6APu+8upcXz/Wa1dRAJHRlgXIHsw9e/67YybTeWV6uMpvite+R6EGY17U8BzxF2RVMYaDTd5kiH5AsATIxDcs91iCXyxrTyILdNVq0lcHgwmvduVAz1uM91Xbe5TOW0K0J9sUAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711600097; c=relaxed/simple;
	bh=ciz11kLdSptSJq/L1IAK7Y5psAZXvjd9ZUTpSaTddwQ=;
	h=To:Subject:From:Message-Id:Date; b=juBMiy1alMqgBoboqrBC0wTt/30+rS1GbDP1KpPJldGW/xvPSLYmKfk/p4EkLXWQecnXvFwZgmdvdDcyRFTTrX824UFqwHJ41DhJ8jdOdARAC4PMcLTWPRNQhxZIW/U484wOxKRCMfcbf4SrHCzXZ375/ASn4kycIrfbUOhhpX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1fNYNfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1fNYNfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 842DBC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711600096;
	bh=ciz11kLdSptSJq/L1IAK7Y5psAZXvjd9ZUTpSaTddwQ=;
	h=To:Subject:From:Date:From;
	b=N1fNYNflR+xwgCinc19+2XdTNYEj2Ao2ZErbTWySJdS0pLBe2W6Sj2lcb0zJ6Qn7z
	 708ViDSaC6Dvy9mibxOcVnXhNvR0MKtDd5YJSY4OyYMdHBRqIPLPCn4P+803/j8KEy
	 r3qjuypkKmBu5ItlI62kY3XymLYxPtm4UDCHbIVbpc7J/o2XuGRVk71z9BMDADfcrR
	 AMTOV+1U4VM82cNubGK4sewSppYnT+xnxN3Iqf9IYydv7O6toL01FxVVZ3sKuWUmbL
	 o8AfaiSA26GUk+fpPmTB0aWr4nfxwHj2jYIMn0gJs523aQAmX4+YV8ZtN2rDm5+Mt0
	 r8hOs5Ph0LHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C02C54E64
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171160009638.8291.11252505598332119505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbf6106c2f3ef3cde353f65d7983ec150da687ebc4e198223428fdd7119ce20
Date: Thu, 28 Mar 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711600096
