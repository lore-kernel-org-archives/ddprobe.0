Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3976828FFF6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781011534; cv=none; b=UnvY7rHyypz6y0AlGp4xYs6bRFdF5bZ7/SCAm56XRZFlNbiNeJPJUWh8gBKuxzWrkml/fABnsVT1EXw3UFMMLc5sNIKts96XUZivOp+cLauyKTqCiQ8hth+mQii3CMRiRgr0I0F2xAC36Ug0xTCxMbr6ap0NdARHPk0E1G2ttvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781011534; c=relaxed/simple;
	bh=bCBDVjJEckRnujxTTsjzVuSGQS76KSlWfcSpms55YkI=;
	h=To:Subject:From:Message-Id:Date; b=lRYP6FIDj5kEiwVnYqVNbQxpiwSe0glgQapRNOv7cbCwqfiWCM8OlEge1pxOyWVq7n9QMQ5V0tJOdQeTqZwtpz5o2YhDaMdrNjrwfHEdlWU543YYMXSzsciBtoBxk8WvurnwuLGHNaGCoWALnZSPHKmFp7qA5SKna0wkZU2ix+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t04bs/uP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t04bs/uP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB902C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781011533;
	bh=bCBDVjJEckRnujxTTsjzVuSGQS76KSlWfcSpms55YkI=;
	h=To:Subject:From:Date:From;
	b=t04bs/uP+qQ46zltGn7a1dfOFtQGMvdSFf729b/FU9wDE47PVUSvJ/B6wJX55iVkj
	 qxQLXOsHaHBbw3h5Bv/bIaQsqprjYdof6yST28j//SNzEJVGnPHzjSxaeYYmigPOA+
	 CJR7101p/t1j9HmNaKxm4zMI1AOGhhRtXPXuJCesSIW/R7oTURRWqPFWYTz1L+dOlv
	 VI4jr2inq7c6rZaAmJqrkWKl0y2D8puFXsLy/SrdXnk9HugymgLdbfaPfTHwHoziU0
	 Vnr71yWz1SQc3PJ2TtjRByAd0pedEFcV5cdl54C3S4pRGoSNNll80hxtLeWz9MV0wF
	 Uy0JayB6+SWLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02FFCD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101153371.29559.6835879097252848645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6578cbd7f7fbcd3dbb25fb4234b4d58c2c9f2023e65e780a0836ca0ff7a626
Date: Tue, 09 Jun 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781011533
