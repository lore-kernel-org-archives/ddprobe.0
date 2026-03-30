Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B203DEAD6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774896294; cv=none; b=WJ/bsUYVyZbcNOpAvFc9gNKmBGy0QIBS0DCOl3Q+rTFNfLlr0aJ+nIw6fCM+2wYoOkB+EOYk33B4mn4OBOkmFsiBr55+dA8rnQLqSHDHewUlO1+a3PhuuTa/MhHmdLCzDu8lYRN9AL3yMP9L2MCKhQREJweFzR8NRQ3QS92jIPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774896294; c=relaxed/simple;
	bh=6/+VOZpVpMuao3nzhWtTWyFK4TV4a9HSwjXDy4csetA=;
	h=To:Subject:From:Message-Id:Date; b=lrgd3tv/O6/fQPAzj5nCINuoMqFcK9K6IroqJeZrs/xKIlK+o6pxIkshCawPyPtXqfCryZ+nX9kM7zsmmp82DkAZhpja6ZnR+K4UsceV4MwOK2HmsHxExA6miWK1hCWVk+Q9YBr0b5GoOdI1JizXA2jByPLyo857qzqZHXKjpOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d14D7LSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d14D7LSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49DEC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774896293;
	bh=6/+VOZpVpMuao3nzhWtTWyFK4TV4a9HSwjXDy4csetA=;
	h=To:Subject:From:Date:From;
	b=d14D7LSJLiaSn6u59ruzoVKOMKQrG2yxTK5+eve9aqE4g5oveSXff9X8x8Z9h3t9l
	 v1PY+j/sVd1ejmvq2+WZ/TP/ec+fAzlcS7Yni6bWLq6cv998q2UkcC+IX/S9SwPXlF
	 atNvPt4CH41hifthIuSvN4ZIt7tztEPmLcT98BjxXr0RKaPOHvBqzXBeol13uqKUTq
	 46VgKHLRLaB9wQlvRgPluR5A/1SzJhQqd7AfQlhia6ZoEzEFOHoqmjNpdlLRDJ97ox
	 zpKPfIcx/K/tg+NupAnW2GWLmUjpOgPTU6U5arMuEwiATw2Tsty6pyaA8nnO3OOywT
	 MZwdRWKlkDwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9720F1061B1C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489629360.23162.7619857605739357857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943153f56d6b8e4e0fc81a12b7767e2c563601169e3f67e549313c5ba12cc5e6
Date: Mon, 30 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774896293
