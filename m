Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499A03AC0C9
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790580034; cv=none; b=sQTXI3jqaliHacYDgOgilwtqwBmml0+oDnplcPdg8TyKAPOBQD8PhJaDbxVwvIQ+7mYB9BSaklaVHps5emcaru5HtbtSTz9hr5PM1ihhs83O/FhSh6/yrs0ldwf2ZOOyZhOhwRG5Isc+SQsezi04+r65WxQhM3QUyDPGJ/WIz/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790580034; c=relaxed/simple;
	bh=+66cD+9azPEPpw661Uq+Cp9VCS3s8e7igIriWkw+MUg=;
	h=To:Subject:From:Message-Id:Date; b=eavpbDRyM8onv9gnhkgmdOfn5yLsgdEdPSSsStz52pbzlubHYLkvTcde6GBL4reFvfMYFII1f5NM2C1bHMdT0me+V1zV88qY3+fQ9BtcJ/mJS+Lvd/becJd5sXt8gQu3uhfxQKCnoM/+nbbXr+a7cM2jt86WlQ52uKkZQKa2fAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GORZjqOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GORZjqOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4612C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790580033;
	bh=+66cD+9azPEPpw661Uq+Cp9VCS3s8e7igIriWkw+MUg=;
	h=To:Subject:From:Date:From;
	b=GORZjqOsiGY6VT9KYsm3ZKremalJLghAEWaX7z4waktY+0EkLwZxtOVeVqyaZTDBy
	 HVGP4PU0NcKUGhlPytiDuyoyM1gU/cPcjC6BXkfwzCjs6PQYX1BrPAtXD35WL6BmbM
	 g1CklCct11bQRmVWrRv4a2vy5900VTzVv9XTIcmdtmuxYlf5nbwDc4g5QmvUmuVSjE
	 KGI4miTxtJlTFs4duShh95rAGVqgFalEg4DUKcX66+dc8MlDHiVRktVYn4wjtMW07M
	 7K60pFPWMWZpo4EQO3tTdOB34UML/cHw8hp3TzR3oORYUugNEL+0dq3cFWNx9d38BX
	 cItgZNB/WL8PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1A5C9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058003370.14113.8656880002490183862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb23973259c69a246d562631b7a2e65278be8db9f2507b907739202cb73c1d8
Date: Mon, 28 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790580033
