Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202731448E3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752461394; cv=none; b=EjBr6q2dolJgtXDDNeEaCOTh/OKYEfpwdGKFKHgVVWh1yQPlUBtyFsvn7Fl431bV1pC2l032FSbXihbDiLTIAOSD6hspHPh7sMLSThL8fQZEV898BYWF+NzRZdwiqmU65fagwXJLTcM0WEwgvD9w+ZmN+sVSVxB41WKZucI8BOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752461394; c=relaxed/simple;
	bh=E4Sjh4WWP3j8xMa4zkorLnDsZolnbefplK/GtytWpV4=;
	h=To:Subject:From:Message-Id:Date; b=I3sK3E0BjBzyFPDuBr8uzOOv5iQqnJU2XWmg4N7NwRjDlXBLoVHNFyiYeptI5DJABJsFp1uz1OuZztNMA4JAn+PUhN7doHb030BhJJ3SKI+WEgz9W0gvKXUkGHh2VqRTGxrEk8fb9dA7Jtjm3k38aeoP52mx3MvvZaSFR02J+fE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUs4XfFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUs4XfFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01C6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752461393;
	bh=E4Sjh4WWP3j8xMa4zkorLnDsZolnbefplK/GtytWpV4=;
	h=To:Subject:From:Date:From;
	b=uUs4XfFVDZVMhifPW2W6H+lDuqwWGkDnczcAwZ7RBbY33OSrQNCdmqKIw5Sg0VrwM
	 FKxQ7GYmeJB2eeXqJW4OCVOno0lrv9hEMb0Qo0jdtCXnC0Xkc2Cc3B9EeZKCUp87nd
	 WKMXlM553Enc6hP+N5Cak3uJL6oCfQynAAXd6dLWf+qiXSg3GsxQn6M3gf3tnXNaIv
	 hY2/hDzgCSpkHjsQtt91EUreweAwExM8Lrquho0+EYaOLJaTRaT+3BO/c4KliJkXYP
	 Ma//5ksWNd+i4RuN5FMHwg+NDXWX9JeMwS/Xycn/xl940kYhu97SYJDcz8+NoY1cIs
	 5mv/W6d4E0I5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E173C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246139357.7167.10196780435268673763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2cd7017e7a4ba3b743c0e08430a501b5e0b49781fb38594ff832053ef11f8b
Date: Mon, 14 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752461393
