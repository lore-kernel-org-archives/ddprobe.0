Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E690364EB2
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787935234; cv=none; b=qXatmGhuT3+YRkItIywJeYlwfzLvZjDXMJvRYOGq5P0X7Lo7HyONCSovjGb2NOnWZZ5poeXegR1CNj1aKhm/grBEKE2zOctC3tm11INPTg1LtGz5c9SGAgRF/zQ7X5FQnVTUu4QQReJoGeJkYjn7F483IsA2Cm28rSjiRjD8PfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787935234; c=relaxed/simple;
	bh=lz28247JBK9J+zAedDoesDFPOUmAwRcgy+lk7Q7Br0E=;
	h=To:Subject:From:Message-Id:Date; b=B4vL7OWL4FSvYP7R4cir+6hDSZEWxrsOuy9SAUTZl0hyvoINkCs3UFzxocSpQUbkZxSlFsuUAyeATqNTL0r3Gnt1DGeSyyDXiqbAdINgWJL9x7e+wxvGz7DubjzHEIVaKjnWSzBetUkadWban9DhuVEfDCs4sZlyz/Sv1yYDORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUU6H8wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUU6H8wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB288C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787935233;
	bh=lz28247JBK9J+zAedDoesDFPOUmAwRcgy+lk7Q7Br0E=;
	h=To:Subject:From:Date:From;
	b=qUU6H8wkjuGz5Qg6Er99JNJhg1+g1KSl+9W2Yh4/aBQQ2QEtceKWb/2ZUAzwWln4R
	 e+jVp8JiHne6YW6t59GlIEWOQaNTFMrdBO3I1NX/M2YmtC68lkneJ22Dc7IcdAtWt2
	 wC45OskWz6I0olwtaGQq1H46Z3BdSSAeYfH36KHYOCrfUy9H4IZhbTRBolj4v+ELQr
	 XjG/8sZ39YWik9YUCqS0I+cXbSiv+xLVS3EJ+rKSurgVk8JZ3mcXHKoQBICEiHgE6u
	 RvwUuJmdE70SSgaqHBvwyjP+lCsHIk7Vhi+Ooyv8oo7vzzMy3nYeborejMFrlvHlO1
	 0GrALqZu+dmtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F97C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793523370.12875.13967258661766007530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a232fde41fb3e75d7f4501cef167cf0f2477876d0723568119f27b7dd2f3af1
Date: Fri, 28 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787935233
