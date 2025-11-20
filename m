Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6FF18FDDB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763664713; cv=none; b=g4tZNsCBTkW2q7v6STLXrX3yrKmM6BAr6q/OoBoNZ8kku7dW7Tsr7epAdmUBtteajmJKE7e1oisIT1i9PySZvIa3zmnVOC0ltB6WguG+RHZ0Rmihd/xv+nLvfoChdSazAIDg3lWxxqI8wpfm/GMwSYW251Uri3WKAm8Kiu5ynHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763664713; c=relaxed/simple;
	bh=MJxDiT7DIlQJPbIG2tnoRe8hzcp7k6FtqEX+hpTmTxk=;
	h=To:Subject:From:Message-Id:Date; b=tq6VdjahU4dIa/tk16+AoIIN92u59LGa4ZNuFta22vI6QD1Wn6RVnONYBgM+hqHsp7ffDfmxeubBKCZTChSfGvVcGRr6h2uZREb3ppzBVUmqpZUW9aVncj9JFq59KTrUytKkQFCxB0lnXUTTLSbMDhQZfLq5eRNK3hE2XIGinnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pb9nTQIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pb9nTQIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1523C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763664713;
	bh=MJxDiT7DIlQJPbIG2tnoRe8hzcp7k6FtqEX+hpTmTxk=;
	h=To:Subject:From:Date:From;
	b=pb9nTQIw83mSK+qnGLM9QWN5FPS2yeLmc+8F/5S1T9IvzHMKjcrYryaL2ET3aH10d
	 MMlgSZHNQuipgu6DgShEKQjHEU+g52cr0HDNDo5CBTOLoRoD5seWYKlc/sAZ/fs+F3
	 vrughM7yZiB5xuwYozMkPCs771hb/fjff08Tj9Ouw1e9uFumuvlirz564qtJtY+NjB
	 2PTKHCUkHyylBsamLerMCle0aWE8kR81lswqTufY4W7vlPsnihOzkq1+bbkEfjo2cr
	 xlfVzphrU2uvMjqedq+gdHtJjRkNsCl3gSraJwrxIWER+8V8HuqKunAUHCmlilv3f1
	 +rhCAC3v0J8iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91571CF9C7F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366471358.23014.15078852592490949351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada8aa93965f4f47964910cc9ee5d759c2fe6e28ad28a3d085954e9a5318ad49
Date: Thu, 20 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763664713
