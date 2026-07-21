Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1464D388860
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784653115; cv=none; b=IRMtNr4y0rtt56GV40f9znSNm+9F+WANziedzML2Jh20//zeXSb4B1be+OxvSwkQL8eSp9M29lp9GMGyvsj3Mhbyq1sRXroVNz+LfdD2HHmB1Z7aRDjYo1Ektq/dNZml3Jjuljjd8jKw7/+RvIwa+pf/OqJzmmeney3Z/Q5CPyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784653115; c=relaxed/simple;
	bh=xYWIn+3adops3s3Uqvnw0wxBveved29KkVn9M4YzLdU=;
	h=To:Subject:From:Message-Id:Date; b=KiJWpHPycscyMOfRkMutnkQcJU9MSywsiEGKsgIFX2yuAIh0TgfKCahuOmZga13mBRbboNhqD/zs2GeibZz3ur9AeG99+4Jt3spRHF3xWwCbvigzoIpwzGozqPCXWk8DLkJ7DozZ9nM6gUD5YA1NniVUHErG6BdB3GjqM8CVrcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpH10n7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpH10n7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DA5C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784653113;
	bh=xYWIn+3adops3s3Uqvnw0wxBveved29KkVn9M4YzLdU=;
	h=To:Subject:From:Date:From;
	b=EpH10n7kH8I+/bzJ+xeAkxYB/AKwkyh3C0r7mLnUeofeV96nM5518hHp1Wjxbxkkc
	 vuBxLxiHJaiSjuOlnuoXEFwWXk38lIK6UUOE07DpRs1QCfPOeGDCkXnn7VqZ/xoFFU
	 hMwatl2z9PzUw2AlGtxlPNG8If97IVljeRRCbYkbzdvLU5/VXGrcMP2J2WAjGIrey8
	 k1HdtzbaW2wtX6qTzH/XysnJSO9J/40nvSSwJGD1l6Bgb/R7yOA6MDKpCu3YJ1GfHu
	 KWGm7PXRPq8mZdFmuMJdKknHaFJLcIygKQfb8RAd7tUAP8cPGkA1pLlo225OfKsczE
	 OT+G1OOHswgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD178C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465311369.24621.6664683770792938183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a5c929b40767241cdfc768f5fc7be3168a53254447215fc46e547c27a1d265
Date: Tue, 21 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784653113
