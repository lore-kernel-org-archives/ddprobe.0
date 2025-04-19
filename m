Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF6EA47
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745071794; cv=none; b=txpT36wnVa7LTUXgY7vRDGkm7LXaBj/+kHs2yboInPP+zmyLMqSFnrP70AZs/yOdUbxTBcJ0DLyhrBwUbSSlArKeT2vfrGEcQYBoG4iQAhLZ1PmGYtgBmtxrujn2uiK55n3liqLiWAQr8K1FRynNSS0PsRDxXxfiABfxS22pFdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745071794; c=relaxed/simple;
	bh=BC7tdienxGFMgxwFGmfQ6YJEaR48lUc81Dd/QoO0aaI=;
	h=To:Subject:From:Message-Id:Date; b=QEDNllirm/Pv+JSiqNS0udycOqZ1t5XaCL+7SJWbDr6daRlKFm2h+e10Im19gauN5GVijW9KF22WBMeffJm1GmKFallStr1foIUnpEvhdm9N13cPO/tkWcQzfEGwv5lEVBvoDGQzXKyv2XoKB7zKPD7azQ8VS9xK2zfOM68uDsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyNwCz6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyNwCz6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2849C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745071793;
	bh=BC7tdienxGFMgxwFGmfQ6YJEaR48lUc81Dd/QoO0aaI=;
	h=To:Subject:From:Date:From;
	b=MyNwCz6s+R27AfPgArpfo1W431Sx3JtDWp7354XToPveSZ0vqAYlJevyrjwdf1eL9
	 4Zsj3VT6cpGWHzDaAZbUrtRYoZzYHcwK2FDMhrqS6sxOxufkSzO7urypPGgzeLsOo3
	 P1MV+/mqPqsPqBc7+xqFEwr+0dPhgo1AXRAR68SMnuCKEVzBo/x7d4rAL2V+t5PtbI
	 PPupZ/+K/241fWZkWQ5HK/IwMYhr5wdQ95S0g51jhFzcAw3nYOsaObVqqZf2LbaIim
	 uR+SVsph7D2gv1aCLHW98Ywd5hoJa+Lk1Grap8ToAwWrpR+tBGOScACiJRni6bv8Bo
	 ZpGAc9LHMaFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF63C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507179360.2618.12633504966147879976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f6e34dab8dee2ef8236dd45bef34b0ad456b173ca3d04b8ed6009e7e25c037
Date: Sat, 19 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745071793
