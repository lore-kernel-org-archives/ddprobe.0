Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D124921BB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784135914; cv=none; b=fAatXXOSMvNvHoWUDQ4fqXeZ/zXgWYL6ZAvTRBZ6ujkZqllpM+ZZLAUu5ZdjzRbIGGkF59R0+2/55Xw7dvEDvmC89hXarrl8raUcZIdWh8zjylPynoJG6CU5ZDf8hxhjGpD/n8tmruRlKxgEL66cqXXZpngsrWF9h3TITii1O0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784135914; c=relaxed/simple;
	bh=kJJCOnyELgUTiamkmjwlF+cNxi5Xncj+sUOkqIfX61U=;
	h=To:Subject:From:Message-Id:Date; b=jlxqCDCkeERpMPgSZ+O2ToDsT/Ej9iA7A+vCGHOg95IvVGZvvtHBDz6hIuBs5/9T3OmKW8uUoT41rWaLPWmeancKNjpBCvDw6uMPFJkuJBn963IM4Qtsc6WAFpz6kEK1A1pYZfgfon8ROstuppuMBhYjkH3LW8/eOFBw9sUpdYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3/rhVmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3/rhVmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388AC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784135913;
	bh=kJJCOnyELgUTiamkmjwlF+cNxi5Xncj+sUOkqIfX61U=;
	h=To:Subject:From:Date:From;
	b=c3/rhVmJyWGWB3MNVcIinJ1c45wCX8TW2tTvHs0zFNsgisSIb8twZSVItZKVUZr4U
	 ntCuODXXwzwNd4veUcUWS6FjPjnAc2+8uOE2RAgCcYvaT+T1MQwGdnkyTZ+ggzh+kD
	 AnczeSlw0oSA9JzxvCClSIiGxDCA4+HFXkjKtD+pET+8yEnnivLedIJVnvfF7K5tEy
	 CxeOMZTkY43JKAYnfkfWus1g1sm6jF4j6iuJ4t1M49kriOrUj4PHj2v05veXYG0P0o
	 571Vq1f0TUGRIdUcW058KAfVA1P5bwxGByWCB/wp6Ir9seqc1YtFJd1PmQPShxNf13
	 tmRUJt0HEl/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8F0C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413591369.28904.2032025811049314472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b90679aa384b90f071a17507ea8aa69c34b146cffa46a61ccf84aca1b2aa3e
Date: Wed, 15 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784135913
