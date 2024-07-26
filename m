Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295962E631
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722010554; cv=none; b=n39yJXx95ZjZjyMvw/I23/ZVV6WcgjYKfsh8B7mhmVpAlPuq52uXCWFbZrvGpy1D+0B71nFNdwH27vQGKH1yaTATZMu5PdxhA+Ncrv98jqO3J/wI+Y9rTCc/W8OY1izEBwxvGsyujr3oMgvRK7TDL10l2zEpbGnv+EU/7gROoD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722010554; c=relaxed/simple;
	bh=N9kGNXGo116k3vp9jbkn88TA96fFkqvoh0fFbZy1hck=;
	h=To:Subject:From:Message-Id:Date; b=A+It9L934Tky+5sDW9uMlnRz96opZ9Tgt6lLNixnchKt3aD1uoZSTHi633DgJLXxhfDXFlZL9n+Nhuq99T8rVMee+kMD75Y+q3GTKN2L9nHJGvDvQbF442ZxPa6AKpkQui5MDEJ8ixDgCKRPNS6i0zdepKiBCT0YyhlrlsQkWbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcjipRUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcjipRUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB783C32786
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722010553;
	bh=N9kGNXGo116k3vp9jbkn88TA96fFkqvoh0fFbZy1hck=;
	h=To:Subject:From:Date:From;
	b=hcjipRUNWIJb6JGuDnHzSNEcgwaI8zx/iZ8TKyAxaUijZ0CLOpX/MyxYICw3/ssIA
	 hBmhQYTnTNMOSpA75ibeXiyN4rEtaTFZ0j/9UxeSpJrNE9mgyJWsj48ys1vdSab01L
	 F2H+0ojaGfWMxexfeHMst1mpTZMt8RLhuvMece9+o8Wq3c8yEZNMc0WRnO04g2HonB
	 UqvWPiDSJE4nmX9pqHdBvXqfHPi6yzFodeRscERnPPlk3d7ZmBZbaClQ1cRiWEnZa2
	 OpJI5GWMpNHdyG5du2efUHQWwmO21GBd3N/5sVpqfZJDApJ6PSiFmuwiJJFHNKKeo9
	 MfsSxvF42lB7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C4C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201055360.7914.1838566111406742658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7686a6ce98a377216a3e6f63eb281d40f45c670d04870386db2ea08691b65915
Date: Fri, 26 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722010553
