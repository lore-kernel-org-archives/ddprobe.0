Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C4D2F28FC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780787674; cv=none; b=HV71EdLZEF3egH40PpUIPYs/jqcDQRZRuu1oGgUGKXDIw5OUHYKpMkcs0rhPNWg0NE9aYhwLACjvaMGIqSIot4N1O9JoNPVSDWEJ9hI6cjIcb50HFUGRvu83bbCqLPCmVf0XgLAyWqEPDC7UXrt9xXPoNMCxju6ytGBqzvmjM4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780787674; c=relaxed/simple;
	bh=SuBHQjD3InlvwgDw+KwkeFgEVg3lOeVlbO+YJnLF9Kk=;
	h=To:Subject:From:Message-Id:Date; b=NXSBQCb01L5bNRQyb9qLb3tzYo9jH36PbWa8Tkc3UDpRXGUXNT94pEe4kOXAKPeOTyxd8ev6geGyIjeQxsnITPwB6O67hkO2AtyppBakgdg7xfBCsy+qF7A7/gc2OPhxuHiLMxkX0F19BDzZG+DdaPAiQJedDc/OHK/bkvqwi70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls6QEprO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls6QEprO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD09BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780787673;
	bh=SuBHQjD3InlvwgDw+KwkeFgEVg3lOeVlbO+YJnLF9Kk=;
	h=To:Subject:From:Date:From;
	b=Ls6QEprO16VR2yD2ELCsrL6yzxwz1EOHghLHWheifHgh7Kh0C0nH41XZi1gX5jUC7
	 RLqRFjbFhlFXdDhp30oYAC/WtpPeKk1Dv5RZR7UH0I1rARxQovNLO2Dp+iFTCklA10
	 Qn+l2UKLhSF5FNHX6G6aAjGcsH+9tolUGiXE9xuiHjeVaNPBj6vtnWhYK34ngEDEzq
	 3tBTljNRq6yuHBxUFH0JmnQUSBWTpIf49Q02BhtGxIZ77zoCym96pGrp8Stfy3aJv4
	 aoZ/FigUvHK3bTKTE47r3osfc6fnRr49aJQAKlScUVHeoxAisygFYwL1wRwDTcwCie
	 kNC1Wjdqb0q8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CACCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078767368.1889.7895849575735718891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6cf11d0dff3243aea04d04dda6e3d7e4761760226c397c2fe9502ea6f8571e
Date: Sat, 06 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780787673
