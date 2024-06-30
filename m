Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB1F1C02
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719711263; cv=none; b=PCGMQA0+TS/bmn+g7ncZOZXs24hwjrKIdPQ2zM1L9+ChDwBoHqnUC2uyPKnK9QeJDGNGV1zawIfxP4XDDO0mPBY6q88H76ux0cluDZ2ns+smr36phkPlma+rDuyb57PjVvFa0dn91HywQQyATRXHpKD+Omn9LKcsCEpoK4WkTh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719711263; c=relaxed/simple;
	bh=PYjGKX+yQq6k9wu8bIS+imxXB4KLgrKv5UYXrlUJ/14=;
	h=To:Subject:From:Message-Id:Date; b=W54pWvDpY8zRlLRC2RyXd5Zt517BLzok9D1xP4/N29ueuylduGfjfJIdAO0L/eq9RsiG7KDz3QeFPeFT2W4JnJdpCLJ6e/N40krnzyDOB7xRFKlzOhEtKhIy2kQGax5i6O8GaO0/ykNNH7+9If0LAyXVmHvNt1FbDABhMJALjUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZBCB8Po; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZBCB8Po"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5C8C4AF07
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719711263;
	bh=PYjGKX+yQq6k9wu8bIS+imxXB4KLgrKv5UYXrlUJ/14=;
	h=To:Subject:From:Date:From;
	b=gZBCB8PoXTA9Af5zSiS39oS6kUeUuBm4snNmWuNPW/6hpQ38RGg+PBSlMVNQFpaqa
	 sB9dsz3Hn1up4acxKED52xa2bS0Kak7R5QDbwcoIJFKc17kKxc0Ayic11fcrBpxpRZ
	 pjWbzW8e5pFkgpDD0eiEHxitIiLapmKHj5BlBVd+1cpJkBc372Sqg3P9z817cGRTa8
	 Kd+gnT0X5H1qPYUpBRQ1YkXceoUQ6jXyeALwddf25eg7pU0UoLKOZYwQ9WiBiTrjJ3
	 JJrF0enhF/hFuiQxmy3KRJb4uV9XO8EsffGasAprzWTU/PZjgAvdrTzTGwKtd7sTXJ
	 HSGS4T8wHeryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87D2C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971126279.20933.11165907837211012050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1116aa7d7e8b6e8d8deaf928c2f703822269721c0fdcf779b263573bd5a911
Date: Sun, 30 Jun 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719711262
