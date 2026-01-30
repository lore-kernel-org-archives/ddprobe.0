Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8342DFF28
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769734434; cv=none; b=JVE6SFLprlCQbaviK9FjsbY07vMyB/qsK/Xd5NcUygEY1cIW2e0KH6rJOUDWAyhBHg+DZtubQ3aAjylipE1vNltEL9aQA+Zay8ZngThF1OO8kPlVxa/Chp48WCfGCHnLv1ghuVw8OLrQxR5BNiqRE4YuKuk75dxzoA7ObuhdQA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769734434; c=relaxed/simple;
	bh=0BgIi7F4nFISV4WB2AgPkDNIjgxKC+qw3JfC1xeT8eY=;
	h=To:Subject:From:Message-Id:Date; b=TGMhgr5CHT4U7O4Kbax97fYHrL9UIeGttqWSMCW+ULrMoXwV9fyN4FbiIFggmwKM+tn4G1AgIX/YNLMV6aY5j2FKyHyS/dul+XeWx/jrkme989HHEBDedbVkK1A5eF34V4pqnn7yBsZtZ95woKj53T0g2if3ygXstR92RtAkCzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTi8G6Kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTi8G6Kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A62C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769734433;
	bh=0BgIi7F4nFISV4WB2AgPkDNIjgxKC+qw3JfC1xeT8eY=;
	h=To:Subject:From:Date:From;
	b=UTi8G6Kbls2oHI+x2Qv7NWMDt877GWvTeV6gUWOUFDqJXvDet8whiESY2jnpBPKBl
	 FULkE+4EpPXftIVVpZ4WcVdWvRtNYCYPH7KnJY6qirNPdNqaZeAvlSFMoHUJ8g3hzg
	 G9nVodrUXlQS5ZmyeUX5MBKM7VG3dj7PcJmjj/3OJQm2+BRLQlRsjDft2sfka+4A6e
	 5w5d4/SB3hfs7ARR7VZOmF8zQk7K9MWS7SGKY5oSEf0c7vddlVi++EYmMUwSwTlZAI
	 Qq6SYaY+MKAyPIx5CevFtqeeGNzd0x6VjtLKpuUzPGkUdNgMtOonMK0emHl99FGmpc
	 axMC/pWeLqY6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9369CD73E85
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973443358.18510.879582765540350396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e953c6c6dddbe3a9b39cb010cd27b0dfaab377b9e19e690f7cb135e234fb21
Date: Fri, 30 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769734433
