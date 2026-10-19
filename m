Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA664A5C22
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792400434; cv=none; b=IKDd5V442IjfbBc60kvDVtihbp2TrkmPLZxiOqekWyN0VsxwlgvwToV40pnulN2yO3ldWMBVJnxUjgzp6zz9U2AVighn/skUMQOv1gG4pJRua0VWXcToWn+iptGXiQ4oA6jpF/fJO22By/1NoTyngAqwlRENLIlwxC0DKeVLmcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792400434; c=relaxed/simple;
	bh=1NOpzhZZKLKRU2p9uMph+eAGs+SJLw7sikLTd5uvElU=;
	h=To:Subject:From:Message-Id:Date; b=E2DvksKzuJMdQY9SzSGplh2Jns0RrvHT+fU7NqElkVQinTvqzCq3Cr7S8C8y7Q+Jqqx7WeT0gXTc67+be90H1C9pRO/yh/Uo3w1DdqVnE8FFG3G2Y8hBCqvnzth8DizasNrVY/CWweLvu1al6zMQ5JHBI/zYUMBgHAn13NIpxOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuwSMrwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuwSMrwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 179C2C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792400434;
	bh=1NOpzhZZKLKRU2p9uMph+eAGs+SJLw7sikLTd5uvElU=;
	h=To:Subject:From:Date:From;
	b=uuwSMrwR5q66528n7KCwp6Nrq+K7XB+qTEWYFFoIIdX0DlAJgO+dInhjb77ZPcfmN
	 lcPkXPFnYuIAgs++K8dXmE2+79l1u4FV5OwJ5lNFh6cr3UU2u1/ng8ugUc36cYRYrm
	 /MeXc+Jeg5M0J3rhffP5/dNSVgjBTX7CWFTl8nm0cIKP72IV9yWrgCIJ/negg7RXr1
	 nlqjhUL2PbMnpzSrEPcSmmRhWDIa/pohZhT0kLDvo/JsAs6BDCD/cWtDukKL3MKpmE
	 ci9XiajxjhfpnPVR3jhngYJRELcFXkKzDl1hltW2HsEMEDrHhHG5x3FFR5NSeRuY0u
	 MNnymWXnO/IRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE848CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240043383.31690.1504205634267222495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 260f92262d587989932dce9a23812fb73a55bfa3d0ff8bfcdb4341f9df6f1e01
Date: Mon, 19 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792400433
