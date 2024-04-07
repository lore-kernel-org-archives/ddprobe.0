Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A784086F
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712521696; cv=none; b=VnOIGYSWZXndceFHpUvN9eqoy5LpU4QefYoliscEbuh1pxWVMw+TYoi3VA1p3+ZZHJgYJ0MLUkzG7TWKr3BZv58y9sQpM9S2eVYN3InafA3m8bCTUzGyHeL9nn8fAo+mn7FGHoU35rKro/K0sXxa3InA/H8LYjjT101bzOSmHuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712521696; c=relaxed/simple;
	bh=Wp7cAY1d1ByJoIY7INLpHgyvavaKpg7NTxS4rNfCHxE=;
	h=To:Subject:From:Message-Id:Date; b=YVlnvv5eGBtXzZu+mW3d7Hr6SlbCRWawyn1dpjusXM6OUOMg48+8j8YUliJBQk7NLHhIzWSqhIvYu+3o0L1hTViE3IiqoZI4aoFdzSLXMPlQhvT/dj6AHD5INd1/2BB0YBiXZUBOZbRpnaQn1RF4F6dzQ/dObGD+uLrNIrICUcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtT5/DRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtT5/DRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94525C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712521696;
	bh=Wp7cAY1d1ByJoIY7INLpHgyvavaKpg7NTxS4rNfCHxE=;
	h=To:Subject:From:Date:From;
	b=PtT5/DReFItEmlxUl5tyz06OXgBq1p3EhibFlFFVPYoh8tcKi+evo5Evq4RT0SbkX
	 ca2WUzMvkgTtXjyhpRX8BOQbnKmWQDMW2OzimWfsNxzckgYYoYX1jmYVWaebkedxDn
	 njASRemB51ySUdEI3ZVJAHd7LluH24FN9OwLH7JB62PGeHGUiIv067yi2fTX0p1m59
	 nxzOqa99wsHvHLLZzsIIm65t7NztiwCHk6N0yQLWzrTkTk8r9HrjMuJDjYew6G1kkQ
	 9MdHu2II9uVXS8kPjVM8XPvRAKm5q84jhsxBYmIMSI8pyUIIN3sNvcNgAnsavU5/zN
	 RDtax70adwR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C7A3CD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171252169647.1968.9592177806773571389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e42ad95c4da0fcc95746048b0f7d72d80228680f9689d0d8d6813083c6aed93
Date: Sun, 07 Apr 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712521696
