Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EF36136
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750623594; cv=none; b=ad0owOnUupo7WbWES0OX1RtFdfcib5DxvwUsS/OgJluWYjZ54zW1LsGY4ZaXH1OmrPklzZN1FK1DIA77F8zI8PkJ7XrpIu5xz7W5cIrMzBHPFSD8i7g3Pn/r3MSSpqlYZoX+/5J0u7xsHzTT39pSFUQ9FPv+p2nn4jVZl2bGmGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750623594; c=relaxed/simple;
	bh=PVYUeqz+CJF2qE6PCq7lDkC7ZTJo3frE0BdY7ZuBiQw=;
	h=To:Subject:From:Message-Id:Date; b=AJsRLCNc5Nj0XdPO9sFNn+D2XVteXJPjgkMfcYc4t80zocy7QraCOUlLBRtePZOdRXkO3FSq1MpR+7ed4q8JYZnInULgyo4IbbKWsRicMqpp7D4Ut+TJ/lFVp2kRk+Jxsa2KWsFyBcWPxle75nPqKj7zAapNFyu1WxlcopuYg6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvaXBmAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvaXBmAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25ADC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750623593;
	bh=PVYUeqz+CJF2qE6PCq7lDkC7ZTJo3frE0BdY7ZuBiQw=;
	h=To:Subject:From:Date:From;
	b=dvaXBmAkwVEDTEQNpE2Kgzp5qoW3JmC4SooPDdRrj/Vp6jxVCxhxUIA2DxRWnr7Wm
	 Bj/bCteQAG/DTrIVfUvfye7EzQa6prju/Mqg8u1Sfm6hrpMPHkJHxpN2O1aH0oYxP1
	 aawa39jdCPomjuVeiDy91JgP4ufYy8DQnYOY+t5Cu1VS4z5+ObYb2LCQoE+K+rcd8l
	 zEBAhyXnu7Q/OdcJYBNZ4y0JJ7e9ean8E4A1Kxp9ruA8z7kjxbCquzue1XLtmxesH8
	 E7x+OupLGrAY/SJOY5OJIBtNeLiiC4dzsOJvCab822T5tmZVs+mqROYeGwDgqvnVIb
	 wa4BAq+Z3Q2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9210FC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062359358.26317.17400382094657852701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001c693e9ba37c9f3e68f44b37ce31bf0adfc8a0cf26b5235b87369c8e1de3a5
Date: Sun, 22 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750623593
