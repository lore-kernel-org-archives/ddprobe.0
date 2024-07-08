Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7BF1EB44
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720474584; cv=none; b=eg7gyNQrwkUTC89hVQrxGPmFA17N8tlFNfuzkJF0ZGmMpd3DTCePsS5ybvBZ2NsBJivSXd7h2eLoooGfoymDwL5R0LaQupLxJDFaJPMzd3n/c7i6XzzAQkUiJxDpB24qq5fitpspxNiDthrP2MEFpQs2FwCPMyFhVdaCtBPVGzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720474584; c=relaxed/simple;
	bh=SEpzFEWlzU//H7a+oCQLAPK/CJ6T4eJdL7pLfexUY94=;
	h=To:Subject:From:Message-Id:Date; b=B27iUNVs1GwHYSu6H1/bex++lw3ntdiuMr9hYTngzPG6YnGRsbrDy1zEeZUc+oE1uf4iBMz5J8uH7SmxWQqANsQp6L578P3PA8SpZ6v/RVYQiGFJCx3x7YKUm8lrJmXZoMXJDYvw9VAoKaFJ+eP81TTOjY9I/qOvGFec9eSwVVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHk6W0zC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHk6W0zC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A99C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720474583;
	bh=SEpzFEWlzU//H7a+oCQLAPK/CJ6T4eJdL7pLfexUY94=;
	h=To:Subject:From:Date:From;
	b=BHk6W0zCaP1Fb8IwzYglJItuonoTk6koiHFEkCR7NdzCY8t08gpyzRSrH1LHLp8fZ
	 qr6by2ZqBue98hNbsK72eTxivyppWBJ4hChiaLPTi5pzSI78hLM4n5m+bSnmMfM4TP
	 OQZp2e6Fn5bdPIT0e4prvDNnjOwGyBGU8BaJGwFvpuhGJ8wJlxTgV6NLYGv/YQ0Hnh
	 9WSv/hgOYG8hLanK0diVb3382GuoV7Pr9HIJzkLc23QwmgxLFFMPbevQZ+7l1Vm8Nb
	 RohCILZJ/gGRMK9d4gJ+k02qR64EKKwQUJKRA/X24dL9SoHul90TNONSeRi3RS55Ao
	 26tPIFh0Gy1vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF1CC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047458283.9117.14928242759172711250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d9601fa8dbf56bdff0c31aac4d2b5cb95217597ce38b69e6d12f91cb7ae351
Date: Mon, 08 Jul 2024 21:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720474582
