Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78D03BFE2B
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789911035; cv=none; b=takJBliKOcffYn7S8fHNjX/5MOF1tNKuwd8Vr8esquenvFuZZP51iBfLaftt67r2OAydi81lXM0zC4cNYdgE6raoMK5gBnVpRrQMqSNcvv4aJZke2Qry39vF7xi4hlxkz3jTjFhXGQduRXVv5v2zgYFoVVkRvdJM5hLXK6WJcVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789911035; c=relaxed/simple;
	bh=3vlS2oDB7GwSGXJLmDtI7iO6u+XV1OBnkmFL4iRw/Z0=;
	h=To:Subject:From:Message-Id:Date; b=LbVx47IQx43EZzQ3had7i42m1Lzbr61P/QzgCFk1vlZjYs59KUwsqwXM2JjS1E8r1PIUw0p8C0Ju0l3lgFe6QhuvqR6C/V5eR96QzUq7jkAyRQYeuPLRJOFrBiFIMQrGCW9M0U97USLsa6LEiS2M5es13xLXiH2fy/mVkntgjt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+QQ3DaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+QQ3DaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33EAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789911033;
	bh=3vlS2oDB7GwSGXJLmDtI7iO6u+XV1OBnkmFL4iRw/Z0=;
	h=To:Subject:From:Date:From;
	b=T+QQ3DaCZrD+D7KV79j0dyXzxIkM8F2IEtasTQnKb9J/vn1b++vHR5V16oEYHSe1G
	 /2fKOmkZNIq83VKn+VzsMZQZqysUMXpxw8ZRxfOouHEh26o8j6SHlPHZLg+D3Ad+PB
	 PJviYxjLVWjXfrh/e8W+hcyZys5XFX1dkFHZve4I2iDkrRmgDR1UKGwoRAM0xWO6QW
	 /BLubxNddcRTYzbAcp0kH6l/M7aKdfyMkEi/763mcdju1OUzz2DaNesby9SmKoU209
	 sqOltnNqsng7xQtkP4n79UO1rzOfR6XCv/j/C25e2A1WEM8UFX5kRnZqGvUKG8XOXI
	 trbgbysCLEfFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE3C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991103368.13907.8574922414868127764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0754653d48fc89fff07920e66254439dd1f2e5e3a06227de2491c12799de8b1
Date: Sun, 20 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789911033
