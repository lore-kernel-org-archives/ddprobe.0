Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145E524169F
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753177794; cv=none; b=h7gJSywgAvmne4tqo5uClX/pEVzhaPuHgpiihz4SckIBsDfXJYHIQ47KTpnzGtMK65Kj+fMWPnyqulCREmo+AWMI5UqenSUmpCGgLnT6eNC2JNvtd0wL9PqFix783giWwuvBaMcFMdo9WnEjEcWRY65RCBOxWnpakibIAcNSCpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753177794; c=relaxed/simple;
	bh=eeme6zdxnuh2qFs9vQvTMd0wQCmweG6A57YorLFzYDU=;
	h=To:Subject:From:Message-Id:Date; b=n1ZKptuXkfavLpFkjU63/hY76D7WZIvKoMj79neZe5V5Jy5cG+Zwbe28LbfEzX9TiddeTGrqqaszOyNXDXOSA1hPNNLmIjvcXUpVdePG0lAy5n67m/zC0Y/JbjwicVPfAusQ8yr5KzrggXv19DP2KLstUSrfiNLM2julvtz6ye0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcpnYTc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcpnYTc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC4EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753177793;
	bh=eeme6zdxnuh2qFs9vQvTMd0wQCmweG6A57YorLFzYDU=;
	h=To:Subject:From:Date:From;
	b=NcpnYTc/U7jNenoW95vi012nKOisz2lbzO9/tQnSeS1WWvE5ibJbaPmKulVRp6aoa
	 2sDb16SHO+S5QGD5A/rkzd9ABRcVJ7m5owTGNIy2jFb8SjphPWG+2haVBYw95o3qX5
	 MqMPbWfbsd/KInrbsJlN+0WyUtbuj5a7/8uH/gHADzIeQbKk7XCh6bRGQrgzHNqh/l
	 AZ3VqK+Emp1H0SzO9ZfPzS/t+dSZkCER6UfTOpnrzBH+nJtjDomQYXQ7XyXWbWx0fj
	 GzJLcBxoM0SncZtQJEijrczShyl6AoQyUwTQ+b+S5Vs/lnoU3s1rklrkHN4i/z2Ql8
	 oJozYJOaFI06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED04C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317779357.12304.1357873605744502546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0377d7fb200c6a3bd8a3a98abcc9990ac30f621e1d010e1a614d4f64ad4fae25
Date: Tue, 22 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753177793
