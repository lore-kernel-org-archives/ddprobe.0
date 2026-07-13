Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A4D346ADE
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783963713; cv=none; b=drzYwJX7Cb5ruXiPDx0Iqh7JgiYiYNDvNE1i0iQQa1Gj1yhg9jvPm1fmmlp+aDhSJbtPZn4jPiVkC7GfeLS120g++1eLnS7j2plTdE/AvRdie0/p01lKuYR0TIj62Mi2C/HASrKf4XusrojSCTMiKl1AX/qrbipBHlSEjWCXIF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783963713; c=relaxed/simple;
	bh=MvSL6C7EVI/JGX57xyNFhRdn3eNi379tjnfn1siUZfQ=;
	h=To:Subject:From:Message-Id:Date; b=IuEIPSorMg4xN9Jdu8nZUIiyYR3eq47vRWpeolviatz/QVbFHuhHmhUXhmXM8pwhw/Q4knbpJ9yHkZkNYSx0Mpq2ME/lFnbxraCOb5ihk/XNfOUwuWemf4qs+S+fCj79dA4ZxW+FKqxeguLqiFyXsmHTYK4gU8NAJ9pQgTQtdpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0uA5eVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0uA5eVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABEBC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783963713;
	bh=MvSL6C7EVI/JGX57xyNFhRdn3eNi379tjnfn1siUZfQ=;
	h=To:Subject:From:Date:From;
	b=m0uA5eVz18aEsuSTO93vbGtwewa3x52VUP5BxPorjjxlDFb0dvAucEmg1sczvxhQF
	 xz8J3JeWRjuibyL926J1uYdly8iaU0dzLpCaASToEUVKj3QoE9g/BI5QTEqR8fUo2M
	 3OVsD1KCTtbbhg/vVmD81gu+ZQU3qWYE5wkwBEAmIsc7850HaSz+rmRGU9/ydHTZQo
	 36NwlCOiOb3LrxMn34CCx+Hd69br8r7ujJT3dPdRB0pxwnaZjwiVJ8zE9WlW6h90Xp
	 3pn1bREnr5sfsIJHuDFQkbdPfowU7lOV3CwuU3kBkbMtIYmmsaK7RgRT2ZepD2IbY/
	 PHwb/F1QYqxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3BC44507
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396371369.21675.15771309967751723447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910bd4461181eb17a2881ac36c319a559a0f8ff006b39c5d451d3cb5130f370f
Date: Mon, 13 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783963713
