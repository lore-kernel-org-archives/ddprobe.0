Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3DF2773DE
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767126234; cv=none; b=iNnn82AAqFQto9YjiTJOCE2RM2ZKypVZlttMmZr1UuDGXv14ilfD9ZnBmS7HFJbEtSbsOnvQ0Z0tzNR3Shey8neUozvAxrpeXZK72ZKbf2p4s6oIs3UxCTzuYU3swwpu7pQ8nCtz0b41/EKyICmw4Mvw2HqYptgyAX2cmv6Ram8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767126234; c=relaxed/simple;
	bh=s45aooXom3pWZnELQYilOrj3wgpBxGKKHdzZ903IynE=;
	h=To:Subject:From:Message-Id:Date; b=QAfRDpFtwG2Xe1QZm+b/cSctIIC5FbBeUX7z0aGEXgKJajiLK+djVUf7frzNLgyyOwGk5cj5s1O2vhVRmi3tKkCpA3/CECPJZ3z+OMabI50CVML5iqiBUlh05OjiQB4V6L4x9aXfalYrVMlOiUixDwdFH4is5niz3yTZUJHByhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyXupuDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyXupuDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E732C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767126233;
	bh=s45aooXom3pWZnELQYilOrj3wgpBxGKKHdzZ903IynE=;
	h=To:Subject:From:Date:From;
	b=hyXupuDT202Us23j8/qrm5xPPHm/LWGL/5ymYItKoN4UF06KNeMWPL6TmvZb+jrK0
	 6Bptsi7+8nrnfDbdIrnQTY/jv+BFXFT8Z9zDCFCjICokV8hXnSt1hRW2BjSvVfebz0
	 b7ffUL8r8LK3e3B65dvZloPvpb9Hhg3huP3pQU0XIN4qljgb1drRV0hDoSCo+m+f//
	 y72H+mINI5cPfHkQCJbrxH3ZfhHaDdjLMU4a33rQFAbVibONKcvIKL/4qjuG5AzibE
	 9twRHRc5wHDUJBy9PtZR7wlHvxAKo6xssapia8Xltuqt4QT39YTZeW5nFyJWpbhOgz
	 imxUA3PKDsnOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90442EE49BC
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712623358.13290.13836514545477207820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01498287ceb7b5be80d1e6e67810e52289f1ee9452a4bd89ef544fe59af140b3
Date: Tue, 30 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767126233
