Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DED396B76
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782246994; cv=none; b=a24AjBWEsymrlbir7NmIHbR3HRUPEKW9a0QpH6/T2G3hHARJNgyQy3AopHauy4sE+0VPl4CioFq7LGqEwtMujj65CoPPVyxDCOlJ44L/MZJ4pJWXDv6l06F/71xhoDwOXiZj1ovcMF2VIT5weiBlDzF9zwVBCw5UqgXMvAjPki4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782246994; c=relaxed/simple;
	bh=pp6whvQaakk2l3hqiXtBLMJb3J00A+RojuPI70su6iU=;
	h=To:Subject:From:Message-Id:Date; b=X1ch5zuSeNAmCaQX2BtLXmxjXW9tkv1xLwr1Ga0IZAYYMxXdZpJ7JYsscZgcfouPaevzZumuV/Y7AJL/lg76zzqZGM5TnNEv3Q8OXpI2qHOM7Qj+5WTHQ2Foe8SNbdOLCVd/IrqoALy7QCobr1vRCsRs+5S4IxsdvrBZ25shSNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYZVJJF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYZVJJF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D658EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782246993;
	bh=pp6whvQaakk2l3hqiXtBLMJb3J00A+RojuPI70su6iU=;
	h=To:Subject:From:Date:From;
	b=HYZVJJF+gXYA17RkmRTCNgVa+8EwrE106knXAkabQutvKx1k3Ixd4ud5sCyKC9hd+
	 8mpfVAGuprnsYVaHcWK/wNUC0cXmAZfN+y16zlWWa51Zf6VkoBJvxbzJ/LDIj6MvQ1
	 fjAROzz8YsF1DREP7fhb1AZ5una/lWnR8QLx5M0x2DDC1WEL5UUjvx/VJi4DkcBkLL
	 EyLhorrlkNdfZjdEyDpzuMdOeJ7V+LY/tlER2wPru43ieG5Px3i9fTMdW5INr/HDvN
	 VIhwdzsfrCadVxb0DRPbPNSW3Gsn3Jry6WpnuMwDIbqALO/J3MKiPB6Ozd340bYVTe
	 i1P7BSgRJFZ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EB8CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 20:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224699372.8750.7605513076717416983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a34e45bbf0c1e3564eb903aa6342a9d4a80661553d10f5657ce3c64396956f
Date: Tue, 23 Jun 2026 20:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782246993
