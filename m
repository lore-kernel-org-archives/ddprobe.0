Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115EE1F5413
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752775794; cv=none; b=Pg/XSh6CNmVxJS3CvO0zC1053ZplY0HHPwjY1dieynG7WtRwr0P6HO/ksSR8iNmbsh5aW0slS/DloiVeGMVGH9VHGX/+SzQPGDI8At15VjJVJUiRRJtK8QyLD5oBnUKB8K0Drk353JUq6CRwRY8kDKAhX/pcYBRKQsDXqeiKd4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752775794; c=relaxed/simple;
	bh=9o9bq2aOfmi77tegmW0pXyPDlSbe/d2KNcMxC6M1Ihk=;
	h=To:Subject:From:Message-Id:Date; b=k3vNevjznQn1/5JEAXylhR1PH1ziovNpcezS5zhUhoBX8FoGU7U9cjTK6orSmuo0Ak3w37XAJ8M4jZgnEr8VpnXiTNMEz6V6NQBvi4b17vLA5kQBM8HMPpfkI9ROT/202mmXHmMYRkKKDtDnssDNaI86fnWewh80W3StYFZEsco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwfWZAzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwfWZAzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752775793;
	bh=9o9bq2aOfmi77tegmW0pXyPDlSbe/d2KNcMxC6M1Ihk=;
	h=To:Subject:From:Date:From;
	b=hwfWZAzSSdpg64Ja11fXgTL0YT4t/jLpNj82Ikurv2O5jJ2sn/nk4YsusdYfrigpR
	 9IqMWrO3amzodo0ltlVT0Q+sAmW0xwePisXcgfTi+9K7x0RAScc1Z4bYR2yaMRXJlT
	 Ud5BHCeOKqJx4uoK3gkHdlrOOAG8k2s/NmkIeNqN221njl9uxCbMCkIuNkdnJNoBXf
	 E9ZkLVyu59bmbanBRulhCk83VR3HgS8k+LQTwI0agOg6QK3QmCHC3e9MyFVoaEtZMq
	 vaxhIDNwz/GBs7Ekruii8BP/hUqfQt/HwnapcqajkLMXukOoIccMuIlx18EfciFr7p
	 KyDD73NHmSiZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED94C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277579357.19009.17425423721790947213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b51dd3ed4e9fee07a00eed0ee874fbe5731148c1eafa38763a6931fd1a98d5
Date: Thu, 17 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752775793
