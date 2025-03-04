Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3522F1FC7F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741085334; cv=none; b=uPRx2a41xsIyWTEBzd+/gbLi7+Z7c/PRjwZOfn4UdOsslyCsh2gMmeEY3C0Qzm0X+7xRwu+CCDBjIFka5YcC5pORsi+t6kPBPYQl0UsSwX3XkFPue0jgrDYCm4QGNYhh6hCRFRwCMYSQWkNxpbe15yP4G2q5dqzSwP72Pu+S2EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741085334; c=relaxed/simple;
	bh=iyns157V1g4PpgB6U+jlW4t5jkplx4qc0FOLk5XCLLs=;
	h=To:Subject:From:Message-Id:Date; b=OsQpiuozRY20LfEkD5lgOUbBLzUKkTzDghNr+0SGCqIZQtzt1fIBzgH+6e+svvQRcjo68C1/UOUhbTrZarcRQRaGHpHuksfzga2ICEtP/g5t4RM3+ZPyIBxMss8bI9tCqQ6FR7dawelF/sRJgsH/5gwZ+/ZflIf7zPr9sbIogQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSG4U9GL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSG4U9GL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BC8C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741085333;
	bh=iyns157V1g4PpgB6U+jlW4t5jkplx4qc0FOLk5XCLLs=;
	h=To:Subject:From:Date:From;
	b=sSG4U9GL70yACtVJQ/2El2cZ4tfp//sqPYXSx7YF6CI4ExJK/IlJFHP/jEe/Bwtp8
	 AX11DESvGMVBfVzeacOzhjZJ9yDW+XdNlbAYb7pwzcQp/ogSzspfeXfWQcjGOqKOTY
	 mTr5bJJzloUh36hTHiAoYxu6EdOAoNoLrrM16yufJXB9alMt92AZOKohO8Ops6owsq
	 d9R/latUN8Dgw/KTHdWDWj7myEMbn9/SNSgWsc+PhlnLRZ7qqTlGnAZ7TYwmR1rpce
	 fsvX7CRDBR8qRL4v/v206Hyrup+jG2HsBIDAdDHIuymTG3IUA7G/UUlm/U7/TLSZA1
	 UJlHN794JDliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC3C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108533358.7613.5743920704145188335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0761ccd5147d1b29d9c9c0ca7acbd85eeea69b4fff74e76661546957dad2366
Date: Tue, 04 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741085333
