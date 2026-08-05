Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4960A425873
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785948634; cv=none; b=rE6s+pk4nsHU7G7YqTJtCM7LuElOmiIzgMj6TihZ4nUrHI3r6x3GmAFCKSS7pwiG+qGHXK0ex7Kgh7DakWVQk9o/R90rNArc3VaOS18uk/jL51zUS5CedRB/BYSpA3VD5dpssgFpRLmChRz2J71E4oj8nW+8dTdKEGKg1he3/2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785948634; c=relaxed/simple;
	bh=pfffY3nahOa+tax6lbqLdmbQd+TiOxqj0y2+aez38s0=;
	h=To:Subject:From:Message-Id:Date; b=KavRyr5TZJ+I7sjSVfzYpX4OtkFpK2xcHC85d0YQ094DYw8wajqx7SiG8wOeE4z9UwLhmiF5ICa34IwMfW5TEBTdHRIatuq2OpfAtaKUL89uMpgu0ZuKvZAVM72ttPjzmyn/qDAlt0POjtXM2oG0pvTk2h30Vi8PyI2mEhJFeoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSq3pDaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSq3pDaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16EDC2BCF6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785948633;
	bh=pfffY3nahOa+tax6lbqLdmbQd+TiOxqj0y2+aez38s0=;
	h=To:Subject:From:Date:From;
	b=pSq3pDaCZbpTNo9ORg080HeS6WlP2CGQtOSUC5H1RgacstknGGqz9NHluv31OfYv/
	 15lINzKlWPorrvYGVtHckzXcr6kouWG+oVsQq5AP9ht4JZhEOTvsfkFa8nmlOyKakY
	 U65/qsb/UGiD54Pxm7vgFUKeskGBgPb4cSSUC6bE1AEDjHAPVkKY2jDqqDIZ1Pv1b8
	 6d8DOwZ9nCXoLQAZ4H57bfL2ATpbGHbTnNvVnjtfYAB0jpv2SPy4Xp0W7r3kdGqdN0
	 tSJGPHKT2DJaHUiS22HIxoaldV0mZ2WFZyNas54AONLZaIwX0kAuhETBRxs1iQ4R8b
	 Gysi7fHmUtnnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC8EC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594863370.20690.753991371147952298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0fb886734752a2f01601ebd62240b40584f5dbe2b86ddee8f7a5a31f3d5a0d
Date: Wed, 05 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785948633
