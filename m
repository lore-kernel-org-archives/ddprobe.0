Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B31A271A71
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759064994; cv=none; b=mcd7irMa3D+lYhYs/o8pNpIL4vYlPKqlnk8JQ4xMNajxTUAZ/R6ro6nDsC9wgVWo+703Z/xqX2QZxVK4zUTWDIBUlpgSH1rDPDJ9+awWe5z5S9xlbz8y4W0oEdO2SGBaJD4NU+X1h9VXjJqdq3tlgG63JaAbX8FuKGrvLxKtO78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759064994; c=relaxed/simple;
	bh=AIvSfOMGfyvlWTXquV/9w6aEPeZE71S2U0cyp/nRGwY=;
	h=To:Subject:From:Message-Id:Date; b=kb3N3jz7zsDBcv/fY/PmMXzemubiMeOb7vvlw5ltYiVYrblQHHCM/le6swGX97TN9boFMcUkotZjMpFEmRNZVO3+WiI2huUAe+9Uj5nULmSFW2GrjGImt6G/8lLJOPZwcz4jPvodKRlg7+CJNeglv37/ugfm8pGdCvnDQCoFgBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMK7Tq9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMK7Tq9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759064993;
	bh=AIvSfOMGfyvlWTXquV/9w6aEPeZE71S2U0cyp/nRGwY=;
	h=To:Subject:From:Date:From;
	b=MMK7Tq9KrQDUEkFhKWvoAT72WKV0UKnoRsiUbuKShoHCgX2on3nW22HIgs2XvgDVE
	 tQyTkfCzv9r86TaUCMtKK2HOuafQlqmCf3ltdzwRZQtMczdV1QtHdgWvrYzUwSrYeI
	 7tDldhx4+HxkwxxfapSalKvDXDVen2AMtTIcsNCiO2uMls74xLVNhnJOULS+hqhmwi
	 T6U+zH3EqjKHDem9yfxogdi1zAVKKYJX1KGXBFnj1PjQqCaf61yrcQ93h2PLymTJuM
	 0KaEi90Ht2hbeJv8tjR+PEInWq9Y0A4Ez3D0T3qPr+eGJQN1ci3t13y+NRsVntIjUz
	 a8hf70XJnlsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93515CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906499358.14221.18007638148749673500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d33644fd01194ae542b39123480f7e7f0edc702cc798995c7ca4e5037a9b049
Date: Sun, 28 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759064993
