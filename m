Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F8438F255
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791877834; cv=none; b=WcWEPtrPKPlzo9pPZSxd0y9L7p3CubxBuJkk+A6r6sXRwvP03XI4J7f9yzbKZaB/CO9tHSmlvbi3mRV9kglsBusaKlP9VFmVGl9FRwyp9eiEfU/I00E+f3Xa5DZIG25PkwRQ3Jy2Pzw8f//ZwSZdFjNUW8Kr+gms3vMRLgdND+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791877834; c=relaxed/simple;
	bh=pDgU7JFIUZllje+9fp+1KrWRjdec4rf7zGsuQyZvV4w=;
	h=To:Subject:From:Message-Id:Date; b=ED+mfIYIMMdlAvAnD3PiMRz0bCuGrwp4FxKzr/0bLm9iBDEe/vL4VNAXXCd4boU3dzatsnQln3diAt1HVTZzO9hsSDFCwPTtLJP8fzw6HXm2LYtk002rvvYLiDqRK6yexA26Cv0qt5UaHrbRVe31SDukvAMmQMnXyOnGZmFZkZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz11vlun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz11vlun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB76C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791877833;
	bh=pDgU7JFIUZllje+9fp+1KrWRjdec4rf7zGsuQyZvV4w=;
	h=To:Subject:From:Date:From;
	b=Oz11vlunF8IiwAJPSaWwrJfEsX/eYRpnhr0GipREYFTnL3srol4u/eVN4exx7gPeK
	 o+QHav05YRfsCSKigYlyQSe7Xsvk8RCAvnpn2lSc7rtgkjQzA8RBP7lQ+g0b2vU1r0
	 t+/Ta6F/TuDumNKcDaUG2TthDoOTj6sGRTJlsrpnw2YapB2vV0gJ5uD7sp132BiaFE
	 0qtmFV/rU0EqZra0Ijt6PwWUPOXiCJqRkiVrYggoW2tjSWI5W/vXsiXiTDi+fyBiQq
	 Q9ENbEyEBohfdWWcFYOXd1dVp9ZJYD3rqeIJUntLiGbGeA/1Rl9AWw7UiRDKIb9fwt
	 ui5uTSOV2gL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB92ACC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187783369.17699.9965046568841898157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad055543f21e1fc89387ee54a4e534b41537f7e220dd72cb97caa0fb3234bef0
Date: Tue, 13 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791877833
