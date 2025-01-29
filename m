Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563801DA4E
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738142154; cv=none; b=qok2b6XN+yKFoiBZjIAvkxICQ3esQRmThzvEwjHxO+u2DdYnLby4aBUoqgQjNE3g4+BaeDYn7mmYzkKsZiQ0htUUkJfdUiHIjVQsCl65TL2b3AU+Ye67Ce6eELSpUnmjTO42B5E1/W6KpIfTRS+1hugqBubr4bFRXQYIAoPTtgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738142154; c=relaxed/simple;
	bh=Fk9UI5kdtNpu9d+VUk9S1cubHf3mdue/LagbL4FgrvQ=;
	h=To:Subject:From:Message-Id:Date; b=kxJXy08YZR1BNo6MY/8D+FZbrHylSiqjx6bV19GTXr7I5r7twtc9G/1Fc22zTm3da9FUutAQcap44q7pJc0RjkB1EBg2z73Jyqg4SgxEoi2Xuz+Bco/Ef3eyY/LghixC6W43wxFcUM3k/KP1vHWpfsnVmLlZj/OPdKbwlGPDrYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1kuNMZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1kuNMZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A25C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738142153;
	bh=Fk9UI5kdtNpu9d+VUk9S1cubHf3mdue/LagbL4FgrvQ=;
	h=To:Subject:From:Date:From;
	b=d1kuNMZREBnhgNzWBGaIv8x4MOCqje2ppChl+4MM88QOT1Wzmx9UMM0GPAP0njeqh
	 SSkQQ+ORGecX3RMMAEiVjWN3Xlv9zaY3B9qMDoJdBgn1GM4zlCLL0n3O11LgOwlbGI
	 xI8RfczeVXhOtporgA49AOXPlp3H9FGj3Kh4qoLkXkXzy3npFI2lvFk9PytW/xX6sJ
	 pArvxp5xIqiTcE1GxIxZR75g8zDCd710QLmy/dSbpftYuZBeUck2sMupRVrM9hgw6H
	 34ovNDr78N14P4PclXAm38s9pZGisA75koS51L5SeakuDBSBwhUFHytQjZBus9JolD
	 3mVt5G0VClxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6D6C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814215362.28953.268377581355964152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684a19070f550e041c4a2a1b36b43eace2710765d160bf2f10f5266f4eac462d
Date: Wed, 29 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738142153
