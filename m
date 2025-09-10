Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC9023A9BD
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757543394; cv=none; b=QDO30ui/TohbHOaIklGoqNttrEArHp2TZLG1ZQJnQYrv90nDAVbnCDhlsXaF1fMyudW67aRmw9ko7FQLlPTxGTS2lq5AdlVUTwxL4z0Fw+oumhjwCHQeLFviEK9+6It2NJDj7VSvGX0OyB0crmmiKAzNWBK/yxHLrsy/PrBxMIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757543394; c=relaxed/simple;
	bh=j4Mq3QjTslAUOn//6Gwf1EVb+aN5oyiYYI9dxs33zJI=;
	h=To:Subject:From:Message-Id:Date; b=jOZNQz0FYQPAyYlFdE7vftb3pON1HiiPSAEMmQDABYVa0ASNHeC1JLCiTSp7rlIEHMiAHw8S+Xn+HzZMytzWpmMaqlv6W3B1+32UTC0690guAhauYNrOR0QRPJQB4Xrg0aRjnbve5QpkPhlCwOqEwBMPvl1iUqINtloEErUydiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/M9ZChD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/M9ZChD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E1C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757543393;
	bh=j4Mq3QjTslAUOn//6Gwf1EVb+aN5oyiYYI9dxs33zJI=;
	h=To:Subject:From:Date:From;
	b=X/M9ZChDaG2lKGcLCxgXbBCUyHS1i1HeFnZudLbfPQ3P5eeqnba7O8Yq30oUrtdHA
	 cSEa+EQymIgbGdSaEABL2OP0MgQCk0ONZp6YusSkmOIG9pVFObQ8d4rICa+gnsRWJx
	 vIXV93gDaYn4I+J9fkHcgG4dqhLuVYJqS/1O3yvx8DI/UpiHNruTxSS4Jrj0bYVuKD
	 v9/gqWI2JiBWuMRF9hz8rLOUtZLF44EXmNTxKyRk9YA8Gia9BP6Lv4l0WUw4lq3A2L
	 1I1ZTxCcl0jkHHE6Iyqw/hTVDJaq/qqKP+BLgPyK2BNSqn+gBTMEDBzFCKtIiCNFiZ
	 rInMjlqh3s+eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DCCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754339358.13668.16884497974575817322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3591b34e433a4be44b06087f45a72fec5e3b2fc1b02e629eb921d0f7c98694d5
Date: Wed, 10 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757543393
