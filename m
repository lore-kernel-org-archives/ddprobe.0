Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15728429839
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768986834; cv=none; b=rtu22bUqC5tyVDCuR16U7bh/G72sRWhA/xjZwLjvskIMfw53dAWCHjfBQ+SO+/gFG4oOOHS8AwFUOiWuitGAEg8hg2dkFXLdnk9x4BS2Hm+aewHywAq5r+5zIfyuK50aL4Z8ErAknpmnel5ydBBwOLsrJRK7T9nvjgCxJnz3bfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768986834; c=relaxed/simple;
	bh=NG0l9uThVdlkJDo8XOGxM12voH8Qvk4nn/JpjMBuUt4=;
	h=To:Subject:From:Message-Id:Date; b=g3aEOr94tVtdtQLqNt3bjtUgXs+3ssKwkzokn1tM38uv7A843nr9JGta9QE4sAAJXXKXmUSSYPVA8sWTUxGgzKfyKZQ0wgxwRieEr8Ydvzn8OQDJ9CAAsAbS30BxSMSrOaJCIWhYgm7kKZnuYZ2PHEAqJ3szI5Y8Z4i2qmoSfso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXbJvGX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXbJvGX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AFCC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768986833;
	bh=NG0l9uThVdlkJDo8XOGxM12voH8Qvk4nn/JpjMBuUt4=;
	h=To:Subject:From:Date:From;
	b=PXbJvGX20fSQMXqvCg/JjfnNWx9NWtJPGcYfzL6d8//o+yXQ1D7xuxPl5izBDREFW
	 Iu1taWR/2A5gtckNr084q/F40Z74Gt2kjVjsRaurNXrQuwyUY+uAYm+D79cDAFWsAH
	 PqkzaCaE8/zYkX0B2u/589CSpxpWIAzCNHqP53ay33hepfllyGJDfK+MM7nxkUINDQ
	 stuFNk9snho/OjooqPcGiaUViksEMXhgDlmfVsm/Lk1CWMQcntP8qJxpE8dFasRMtW
	 RCnMHjfptVEHiIkrHMnFH2KIgrMaAdfK3PQbPC7pTIu9wnhxHPKS/fxGaoZEc3F/Sx
	 6dS63p3qhC0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB2C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898683361.7636.17838041572517183254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece8a100026add05cfa9e770d8023d6282a334dd9ea2fe630212495c39386c30
Date: Wed, 21 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768986833
