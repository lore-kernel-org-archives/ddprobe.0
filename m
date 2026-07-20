Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380CB412BF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784551714; cv=none; b=cviUVFITlW7xKtNQIyhbP5BrEnm63VAar3iV+/KBl0WYwPJz30yvzU0DliCBt0ZwHstsXxiiZzPcJmOUCgHLS602EvdgipYiKSA+HyBRbI10CqD5xvkYJD8ipWRSgop0zdBYyvbF57WsmxA2QFtisf48KV8eqokS30Osq1D9oyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784551714; c=relaxed/simple;
	bh=29uT/rT7Mr8LMg+pWb9s4PZkB3S5c524y+qzrheZ7ks=;
	h=To:Subject:From:Message-Id:Date; b=gcrNMycpq40iPNXAGZc+pkAMbyQ+DnWC323kqkGa2NvEQAxNnNXs0OmT/I+rZn5JgnUj3atAMd3OBdAyMLWumVjdo+nWMnF/H0JaAnDH47v3lxWPnG2ea8DtCwGUcIRXlRxoERwLv4vhBkXEjJ66LtG/4qV2ry4iOxBKto/aW6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuQ00Y5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuQ00Y5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48EEC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784551713;
	bh=29uT/rT7Mr8LMg+pWb9s4PZkB3S5c524y+qzrheZ7ks=;
	h=To:Subject:From:Date:From;
	b=iuQ00Y5MaqrkfH7+tot3m2GBodXK3daysG3B+T5JgQvg1E3BRNeXHWLxGOedNt2Ts
	 kFM7iy4IBQyZy7ZE2Gypqt8izIHi8JpOkieBR0NHozcfgFwnU/FoH755KO1ysjMdME
	 olEtXDSjsxsC+OX+6WFJl8P08EVulHeOJppASKuahL6NViRn/X0s+1U/YahAX3W0rY
	 jrp1ySaCvXRDci47OTv2sPayIqr+GdqqYIbZHGNmFGLhrVdGRWCNqbQ/YgWVdLXH0z
	 l6pTeIMs+HgqtRJ23LpIS67Kp3+rNoBCROTo8SDJujHyF/vyEJwug9nimW443gD2Pj
	 Go6BNJQ1jtbbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14A6C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455171371.2919.1084962716714822004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cbab3908282018520b1ebe6f88da6583dadcce5d3c5f7f3a865a24556972d4
Date: Mon, 20 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784551713
