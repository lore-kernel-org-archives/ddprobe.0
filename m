Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2F315E96
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724808354; cv=none; b=NzNFqTtpFiUBTNhe4YjRSSVgFyJa57WgFMnqLH2XJzpY8yGVA2xKO5XDGLDSq3QiJDKUSb7Idm5FGH9vCLnbCWmVCuZ/ZG/MNyP78ypCu9MyYSNeJuVpY4uuYKNx8z/n/80NiFcm63XhkIbxDve5Cp6MCnh4IQRanZs1nGPrFpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724808354; c=relaxed/simple;
	bh=B1P/FxnBEKp2lDLXF+sFM21FXvd4V/5h1zY3kpdDxxU=;
	h=To:Subject:From:Message-Id:Date; b=OrRRI6Dp/8241gEar0vRnwacI/GLOkh5Q8g0d74u/Udj39RDXbftLI4ejaaID68sPlLD/yAtaKu3vG6R5wjRlEUZiBp5L7lZ486oB3aP1Fc52kDs/bi11/w8g4FZfrus9MLVEeeXW2S/pGpBELIkkpDoTUudja1n9+ZkC6VMbOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilwlsfH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilwlsfH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EA9C32782
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724808353;
	bh=B1P/FxnBEKp2lDLXF+sFM21FXvd4V/5h1zY3kpdDxxU=;
	h=To:Subject:From:Date:From;
	b=ilwlsfH207m8Ve4vYgEzwoQtnj+A80ntfIwrYcOphjF2kWiU5r1h0E8X01oltKCNw
	 v60wtF5s70sUg6xy9cvU0wosXt5dzpxZpjn5EvFm2heSTt73GHvMwnXbZjXTztlMJa
	 5b1Plf1pzxCJD+XJNruOfYc16GsQHyKWMcBfCJmANMX1yAFi0DblMYqlAf9FaSrVlg
	 /gcY7+4yBlKk69gCYZOpR+6xpMcXQ4k9Rs5fOhDjEwjau/Akxd30olTw64bbL0Zl01
	 1nLvis9ck+fu9aph2XLXfnjpvCQU/hPG6r8Joj8gQUSrZixhH2D29yh7/s7/iDw9Bj
	 1hWvm63WMT6+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998C5C54746
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480835359.4504.6996878860780347663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e61db63628309fa4cefd66baffdde575287865496e4acddf2aa09bda063dcd2
Date: Wed, 28 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724808353
