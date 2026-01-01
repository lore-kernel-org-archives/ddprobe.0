Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30649239E7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767309834; cv=none; b=tceBlYuXXASRaWbiJ7RGBgnqPf5YlnRBZYO97NIotzJVZAaDu0Wrj+YCwW7XHUo6xkB1/BDy8/ODFofY5Sp7iCShtjq+5jvQQIbey1d0budYGhlSZUr/pgMiWPXygLumuS8BNxQcETnVPDIxRFCvFin8v+DioACKoVnCRGGOSss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767309834; c=relaxed/simple;
	bh=jawhaJB43ejV6Y6hWtZhDbBYsk9bZguArGKM88w30UY=;
	h=To:Subject:From:Message-Id:Date; b=ftZr6UyCPy+0jVKOX9UgwC26VJKzzuGm/IqcgCMSPXSHjgqFkyStHOXmbAtLn/5x+gL03YYeqv4ybw190EuA4YF0FM/UH/vzIXoEmtV/lrG0y+YK0p3/2+bzhn++AFivoD8APa+2P4beVngyHevRvWkXIR8eK62xGecyaPrqj28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYQS4wmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYQS4wmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767309833;
	bh=jawhaJB43ejV6Y6hWtZhDbBYsk9bZguArGKM88w30UY=;
	h=To:Subject:From:Date:From;
	b=MYQS4wmy2sEILliWPIGG/o40ryJHtqHbbXxo2RRzUdYEfWinCRUMOYXxDA9m4KTW6
	 HmOoTaA7NHgf3DVGTpyENw0qvI4FjEhzTCPENi9F48kT85LVgyIuJpmRc0PReP94U5
	 8VaHClPqMMcGl+Q34eL61YF4Q5nO4Y8qbXlUNMvkxgpzY3ZOxKNTIyvc3ewM5esF6m
	 NtrGbYO4H7CHsOLfdw6XUD4MtCAbhgAOOPzPUq3ZCyVuLW3As3C4yqffbL7VcdPA/b
	 i1ZYmY0UBip5bb1qlFPeiTilJxvBU5zycfnSYk7xRWRDckwv+K2bhwhn19l69kRN3K
	 1xpw2MlXrKcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CF7FA3722
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730983357.7418.13463952041583734557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48bf9a2b8ff02fbda9d88ca0b93b4db1c52620eaccaa1a6b2cd42669a84b2bb
Date: Thu, 01 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767309833
