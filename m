Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657CA2BEC55
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788057034; cv=none; b=PTp6j8kUUzjgaEpJAilppWRmXZO83SYdTdfUyw33em+yrvmL9vpjm97HGBg0B3mxr3H2xuCRBFS78IaH8Ckey064J3AJ9VG1ev9rlIY21a59zr9fJVFsLgVJ+cCkcdTrm7KjWbTXD2VvveGO6jN8nHkSAcFm813WDE3kuZv729s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788057034; c=relaxed/simple;
	bh=BoM/VnLln07LfXuuPr1WTttmLibqk/gAs63c3Ln+NVE=;
	h=To:Subject:From:Message-Id:Date; b=ZKncSoO41uqWWcbry72MZ38zhUeOfxlh1mRiqBuayK9HAu+fHIp4N3D9Rb7AU2Rhgaw6PW/iJ5j/4bfAYavRvB5mj+fCGD4k4d/xjmphgwKt/r8jUwaJZY3w8qf91m3uqV/xzguNEYGSV2xTOZIuhr9/Sb5AUOPCSSqkE0ucrs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adhhQ8dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adhhQ8dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D923FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788057033;
	bh=BoM/VnLln07LfXuuPr1WTttmLibqk/gAs63c3Ln+NVE=;
	h=To:Subject:From:Date:From;
	b=adhhQ8dExMV2SWYgaGrBbDCCg82T2q3oE6EgHAhthK7fxmH+WBJeTCYdOx8k4wc25
	 K2DF6kQqe+3yRR7fMVXfnxEGcwzCyZyrHFBliS0MhlZMmbTCQKfCDukVrzrEGmGrRh
	 DJ9n/+6Ui+a/1r4IcR+lVrZp8qKakupy+KyFTRtpEvnHsfWlMsDaItmbAfbD75i6sR
	 DPlEyvC9ow9poJN8ekX5n7LsBCchqeCdhzd/hbMlwnHPNtqzp4KW2D0aLquOzS8wEZ
	 hEgbncoevvVXJRUHF2KHLvIuXLXFk4IDpN4NuazVBuC3jQpY2/GUQ5P1F9DpcMVH0v
	 9sr3rCz9u/+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CEBC61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805703368.10219.6888853439080967650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74034ab4a7b31de600a159341d6349d41928b6a0cc3e1f22766616b81743b18b
Date: Sun, 30 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788057033
