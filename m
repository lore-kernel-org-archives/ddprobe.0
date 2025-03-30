Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2B51876
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743326394; cv=none; b=PDGO1LlkuDb2m4NEBWpu3c9WuiJPY4zP1d23uwnee7kHTaqsL73SLixvrR/HHb+Pk/4j48JUw6R0d6LkKMrYe+X1/O97W+mX5zlmnACOA2+MfShaimYLaXmMH5ZmbjH9cPXYbpK8MzOPfdMdrKQpTyf9si+4H3qw1V9M9EdtYK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743326394; c=relaxed/simple;
	bh=vBY6X3OVxjvzfjlQQamsXm5uGsTyUbiM0lZIiCbAiLw=;
	h=To:Subject:From:Message-Id:Date; b=NDr/Ywy94Dp9fmY8Psd5wr3TAvpD0ra6P+AGfmHs9tewOJ/HG/bXk/30R4KJb9GRrKL/cLugc+4tDCXgAVMjan+baOPpBQJnDijY6WgV0guPOiUjktMJowzurZEiJgqCIoGDeqRHkk40OmKSvTf5n2Rj4kk//pNfO4ZlK82+qmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQRxUA/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQRxUA/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E09C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743326393;
	bh=vBY6X3OVxjvzfjlQQamsXm5uGsTyUbiM0lZIiCbAiLw=;
	h=To:Subject:From:Date:From;
	b=hQRxUA/BAYnSEgYkZlpYRUVCfA2GugNHO+IQlAMHTIa2AI9cuVflOuCw82FbLH2iS
	 pF9eetKfwcD839lOR5GdTkswl0RcGBTcNMURajsT/y2tZ8ls/PggnK50XtNMIt2gO5
	 gWC8vZdclQqx1cIg/wrViCzyV7Tgx7AVxgh/jGLErtHvBozHlZtyIDug6nJXiA4Lft
	 wjRHjvya2gtJzi6gnFGUQ4kT0RNP69AC05GG1UwOvlHpz64WdgMC2Ib1XDnpR7w23H
	 49XHuhur+bZ9xHfi6wfzolegX1RqhtpnT67KPBeWQ3e/KSMUwiIy2Osaf7sP5eOKvY
	 AkRDz+HuRECbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9845AC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332639360.9985.17234790874749896310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5aee54b6d94f8eaa8bbb75597e0ce8a6be0a409c60cc9a52823333f3023743
Date: Sun, 30 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743326393
