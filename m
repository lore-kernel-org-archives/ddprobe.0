Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632473002A9
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786847434; cv=none; b=N//IuIdJI3mOf509+nY7/smRpYuByFYa+g1zqJ4fWld/xkBgzBzlH+PjDCerTZQ7uGtkHsdKKguYOuILOr4zFM346MevtZ0mbv8L9j7kpWmiMs+6yp3hcB2k8Gkstx2oz2JkZMhuw8S/ZooiEjhaE0BdO/dMDlvplINjcB1cIPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786847434; c=relaxed/simple;
	bh=PWr+3MkuFtma28X+p3kNwCC6f5wVDnT67xLKA49QCR4=;
	h=To:Subject:From:Message-Id:Date; b=Sl80/2YLhgSt5wBaURu9XTmAaySwHBPfC9BYtHHpFWp3yyeed2+t5sbH6KOF6DS4fN1JGXylT2jCxpbz6J630BHFAVWkeyS0KhdmTbK+/Q3MUxxYkZImq6sEeCQyUdfmP+XLCW9gl1Ft2K8KHND/NMV/LU384fM0672tdcbz0Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcyvVUe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcyvVUe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4DFC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786847433;
	bh=PWr+3MkuFtma28X+p3kNwCC6f5wVDnT67xLKA49QCR4=;
	h=To:Subject:From:Date:From;
	b=JcyvVUe4YCQ9y3vy8V9FFHnqCE9aevmlfsg+iq1i89mdtP7VjhPUyIu9pRpBW0gL4
	 xczmhLV2M8c24X0QcVldx1Hi2bcTJoqfuwsm7TaDhDgg5Zb+XR/dSgfzacr+A610v+
	 0KeTbrfnhFd+aM+QtAr/ESHIkikt0QcLEtYipFGUPEMwFN9w/Iq6RGNKbm2sIE4MbW
	 7HH0LvM+lbQEAoERGwXRJ4cbnbJs/6r57RVnSBx8cr07oBasaJ57ImKhKK+qKuk1OJ
	 aJdpMV89qi7sZfWz24UpckqILdAN98xrFL22abXYxHdi0UqUPZmsSfJPWt1bA3Wrzb
	 UtOwgQ0NNi6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F73C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684743369.24557.3692534845379259074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2161969b9a2222f4e8dbd5b77aa4bcc47bd6036e8d0801ef9715e25aec0f7c48
Date: Sun, 16 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786847433
