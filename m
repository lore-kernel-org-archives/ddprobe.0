Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5FA2F49F8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768551233; cv=none; b=dvEtHug046whDfZJcxNwDcsJovLQe+5g4bMUCYX6jvXbRAtZQqwYFY82jpCzWMoDRFSq6EUcKQxaKpd7VeyPxutxuQtRq4rExnTphDaemWMVffQ/M3uv0lZ/dLl2Ghm/YdRNawHT87woM84wxjzRqYTV78zZByTsGYVCfRq8HDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768551233; c=relaxed/simple;
	bh=H5BaT/nqU2miZGcYv/SO3EsksaLrYe+j0uhqdN8R0nE=;
	h=To:Subject:From:Message-Id:Date; b=JExSBdhmbafTrT84CqtZYhqLZfPRjz4ViMbQc3U1pcvqErPRFdTA1eWggdke6yFevx/rf7RS6kJAYZs0uAjHpBE5cnw5y3Shf6Xa4Zg1EsRkrRVzZ8Sc04LTzVDmbJZMNJT02Wtl6EswlpizqPIEcYHvFjzz2tDLl1NNTQ7ESyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGDAly7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGDAly7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E084C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768551233;
	bh=H5BaT/nqU2miZGcYv/SO3EsksaLrYe+j0uhqdN8R0nE=;
	h=To:Subject:From:Date:From;
	b=pGDAly7N958awtXdoAYwj8WVhc9P0xdjKutGtelW3qLOp/pnrzNYZ//AIoN28Gpfp
	 CKN8A22Z6A82ypANGFne7DlZmIVegA2qNb3uX6aZkKJNin0ZuN278fzFzvdrAzByMa
	 6lLgggF9oEzEG8+rC8Vr+DDdEnwMgLBP8T99OWJhB8TNiMxdloH/Oi6FF6TxjNwfEP
	 uGrZxgbXIA9HYW6qlANHpeQRiQYPB7GE7XrJ9l75UrJPPXfM8HROw9at74/4RE0EsK
	 y5+L2bZd33xfJ1fMpf/N89R1xvFo8Tfb4YQjiyqu1lR8weALJ6Cd7kBMAXnWKr3ORJ
	 b2eC5ko867Jiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD7D4A60E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855123358.3878.2186789343793303188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8799b0eb9564de2ad148ecdd86ff6a2d8b93d8c9b54de9ce826fd128eb429dca
Date: Fri, 16 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768551233
