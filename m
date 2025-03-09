Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A43A1D554
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741495734; cv=none; b=tSS6uaPn+9BkXt0gGAKpUOb3Y1ZFA9FBzZ/dUec7fZ961KM58ivqAtV/Pen6dPjxUcwo2r7FRSsp9RmwTWXZsU8Sh9l/fi3kgeWMLl7mYewZks96WmtipKnmE1AG1mRh20SsTf0KZ/wQQzE53FcCdkAhzmfQVdPQAlqRNVO7LqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741495734; c=relaxed/simple;
	bh=xBbyXrgokYbklfwdyeT/py1UQUNurpRmOkpyyGbVscE=;
	h=To:Subject:From:Message-Id:Date; b=KOH3X3AnwdU3gcDEgoQe3VCojYKj5B2khEGltKPnA1zTDXzkH6GKjsFqx/AHwLRiyX2tAw4KTksY1uqgvjwvh+5DQxpghP0/9HnlioR9zZDzYsmVSU/8/afPygSgjaWg2xTjY/zaGP9usOX85Dn971SMcX56seNJic8h1WJHhFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUaGOCR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUaGOCR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EFEC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741495733;
	bh=xBbyXrgokYbklfwdyeT/py1UQUNurpRmOkpyyGbVscE=;
	h=To:Subject:From:Date:From;
	b=pUaGOCR0fB+2UWCSXYKX4Hs3LdPxBKri0PrgTGX1kss555yK0LXqo5dEZj7rBzVJc
	 hj9r1wPw/NbQO4ueIOM8kjPc4mvX27NsRpmrrHvdmuOJJ52Kmr2ljgaKjiGaDoXxbs
	 Sqx3GxAn8QC/st+QDg3Fc3hiMzpJ7SFVgfH8m58AL9vjDbs4/gz6IQtVYNh/P/dvpu
	 i80nd+bkb9jYXykDikYJo/pT6f9axpls7419drxeI1/KNhkJHkvbLZNwQbpQZtnPra
	 2xr7ABlSYgg80DvOkdlgJBkt4eF+yYCY0IeW6XQe5r3Osvg88BnpZu+VQwcmjMP2OO
	 UopL228eF8U/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC78CC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149573366.12703.6294511397363198807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcbdab4f1828e28c0152999055e7a2cf7000a5dedc8cd9c179f4c747ac33ee9
Date: Sun, 09 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741495733
