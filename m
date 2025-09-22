Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388242248B0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758523794; cv=none; b=YpULn5M4/5ghlPPFJcvW0QfO150NH4f+Z2/ObM+YqJm6dQoM5eLyk1FXBE9plpL9Fn8dcSo8gYF/BevuffHKmfOzSE2KfF1pAnh6EY0OeAAPwSvZkxyRcgvUziD8egjDSyQdXg/SM2xICKu/0I6L25HlkhlgvNthX/B0243qZ9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758523794; c=relaxed/simple;
	bh=qdffS9h5fgcPPpTwtHnOYYMIv5kjrs4q2NG6RXEhZis=;
	h=To:Subject:From:Message-Id:Date; b=BKUyFfZUORLKvm47xONm2VwplxDCSPVSxKOJai+jmHp2ANFlW3dxbEsHC+4cEmR3TcqXh7LjFtM2lkNBl2q86O7dNOGQHXX3liJYNsdp1RPQRPUqWdJBtAZbZu5LYzH3w2Rbq5/erDOp6YZVutGjwB0ee1ydUw1LivnLebgnRco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ijc8sXa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ijc8sXa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51DFC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758523793;
	bh=qdffS9h5fgcPPpTwtHnOYYMIv5kjrs4q2NG6RXEhZis=;
	h=To:Subject:From:Date:From;
	b=Ijc8sXa/PpIYxCSVi8b1NxQ2/xq7Tohq/opOK//c58fBXSGDoD6a68FifwcK4ZgYH
	 JAMutW6VY5TH2tC6VSYS9y7SPs7QrX5x0SyG/itpucEkv4B0yyhqxiyoEQlcTkPAz2
	 6AjzlI05P8mqh23SAAmqP+Cv6JFFVrI6eLgjzxLxJ72q7RjQaljBdGxpnohkrQcIgL
	 Aquo1IEZK7RITcozKhloOuhV7qAHYWyebAS4jS1IgY4947aEI0rtzHwzdYQ8nfaWMy
	 4UKBQmG9IqMlfx76T60miMCXGc4aE3m+uBLQQ5XJbC+pC7RvJq6TZiD/2LqXh1h2f9
	 63Yw6Z93vmRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F91BCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852379357.4050.10432221454523698971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257f90d6efc01875258cdfa57b1b3fcb971155c72c6c2a9da3504097132a2d6b
Date: Mon, 22 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758523793
