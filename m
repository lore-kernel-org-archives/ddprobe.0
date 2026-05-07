Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502D3A1B5
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778114855; cv=none; b=n9iyk+f9t+qxfGAYO7K2/zuDYYy+HinVfQ1gQZA31DqwMaE5cn/DdosESw5vl7AM6ldcEi/mkrBOBN6lfRaTJ9PldMF0TUGYnXdMu3wSuvnBO+vDgp+DXXgCP/X+bC+DFrMIqR2bvLbkmumUp8+sHCB7xF80DlKQp2n0CRtUCso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778114855; c=relaxed/simple;
	bh=pFSTbOhQoA8lxD1aYAR8D/w2O6ZGvOxBH1krxNWVl2w=;
	h=To:Subject:From:Message-Id:Date; b=Fn/KkKoDwTkJpfGK8RllgsAt5e6BvPo/U5A2Wi0r+PxPNK9128ej/wHDfMy4RbujGC4BCmGWL/7m4zqtGMRlngTbN0ZJnOuePzFZYCQylli0/4P1W22ved9JSyITkQyBiOLmJFYty/OSja1pxnCXoQO50na/A5ZW9HL1DBFyfDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyAD+KhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyAD+KhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC31AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778114854;
	bh=pFSTbOhQoA8lxD1aYAR8D/w2O6ZGvOxBH1krxNWVl2w=;
	h=To:Subject:From:Date:From;
	b=KyAD+KhS7ShdJmgvHomuIvHOxYH5S8SoFU4Tyvy1XrO+C7NZMA7qmTX+CMvzkXED1
	 u4FMtl2KsfwVzagydMTET5XVmnctilEvFkjMPafohcI1s4UYV++PxCuwQTHnfaXc2T
	 0iZPKEXHripnVkQp+nHcQCGUolcQOqjwP+sWC9wPx0Qohad5y+5XXnTirMos/ogjMf
	 MreYQZnftBA5l0CqpfL6tPtuOHftz/xsqkR0VrLoxoJctQvFEA1Vuf7cRQI32wqkio
	 FditNeK5uvl45SYg1DePcekv/C3BWs6e+y+DMQNHzQTyPQjBP0xQZC7wP0lqqzUbgQ
	 Ma0siYtoQj/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BACD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811485368.23206.9158292128776122706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7a14596900081677467d3a0cda6277bdc6b8ec0546d5cae4353c3af23518fe
Date: Thu, 07 May 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778114853
