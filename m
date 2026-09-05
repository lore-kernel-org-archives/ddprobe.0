Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C5A1B4257
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788618034; cv=none; b=csmc+WHN++cKdI6n06YqIK0A2oGhFbnwitF2SKcpA96vt5pDZC0vPP+W0GKa9Dz1zGafXQzuhuo3aRVEuG0BZ0zJZOieouluiCiw4XY31RNkjeHHa/9n3z0bm2geKt8VHQXPGBwowMoTdR/D7np7Gy/cAwFy5WvE3FQ0ZzjDERI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788618034; c=relaxed/simple;
	bh=X5SsHPVGsreK02QBirr3LnmnMETL8h+Ifzx6fw/BrZk=;
	h=To:Subject:From:Message-Id:Date; b=M2Ienp4r2Sm4/RxaEFHTe8Vkrb0Q1yPmzwWi+qKM7gHFdBRCNme9VOluXVJ4nDVd3evwgBrBYZN9BSK1tsL9gNROhCPEfnmgdy54BN7dPY6xjBXL7LfA/1ckuuAuYRnHK4lQX2oAmOHOW96XfCF0ZAUWOezzNfkUWx1dNvV9njM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5zhrXjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5zhrXjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BACC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788618033;
	bh=X5SsHPVGsreK02QBirr3LnmnMETL8h+Ifzx6fw/BrZk=;
	h=To:Subject:From:Date:From;
	b=M5zhrXjguAZiwG9EpbDFN5z8HcFgK7z8fWKCSENqs+rY+s01KXmrpbCSCCTQBOrcT
	 Up4vtgPsdq8cUQP7ujRnmKhmGd8BjNKo1630b9d/P8P143F6yyZjaf6h9hMSCv+w3f
	 pS0CVgyRDntrpTR2jACMaQr3XNvdQo5lwKdeYCsRZf35mSxtfm3bOUfTxBUEUFQDzc
	 gCcDoAzqtTRaed679ohr2MSxTtuI73M1LJA8mTbXqaDXX5pZR4326D2smIsCWqEKut
	 KTCS6pbmNaBiWaX2wFT7VC4/U7Ip+EnnC72mGbj23PKobOd1UezaKyoeinOUwDSv05
	 zGqRrq8TZkh0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1099C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861803369.5436.14234694397974669927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c8551e59375c38fbd16c0f4e3a3d95a14a8a9fe72003c9efe4339031709c49
Date: Sat, 05 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788618033
