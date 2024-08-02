Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294331EA8D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722633954; cv=none; b=kTvPn+aLMTdxz6Aa9lO3jqAJSfSZ5WiFdOUVPi86lNjnmwgujMBINMxmtZ12Gy2WE2z+SEZvMWWKyxWUv8RXwcsPXQ+2k4NH+LZNRUgJcHVNZcxstivzi/anlzkCuy8G4cHUjCICrRNnZEyGjhLFCbYB3AyB0PE/KDi2Z/MY4vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722633954; c=relaxed/simple;
	bh=KdWmZOgpWXEk5I4hG6zIHQDIYMf5doFaacp9V8lDY80=;
	h=To:Subject:From:Message-Id:Date; b=QnW28LE85qDkLlgxdzlHBwVqj2BUJMh/0Qyr6Yd7tRcPASOGKgxp7x7zFxSfdvSUG5lK2iAqT2EqLJnzK7WrKs9+GnMPGlE3EzoHBHpGEZ9DUQnG1QiAcefja6xR9j0ghYa6KsO78sc+qMt3s+044ELXRAbXmpHbyvui9Klt9JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOJRxj7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOJRxj7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F1CC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722633953;
	bh=KdWmZOgpWXEk5I4hG6zIHQDIYMf5doFaacp9V8lDY80=;
	h=To:Subject:From:Date:From;
	b=dOJRxj7QUi/JFX5Mu9RORCNLzTxu6MH6Uku4Hn8617iK7y2bZkukOB/C0HfIKzwQ9
	 8tC+RteDDR3qf9uFmv4KGFxsXCfMyvTONZ+V1Lko2tf8tp0iDG8EIyvl0vClOO4VHt
	 VW9NnlFqEKhT/dDLwCVJjbE8tQ5AxYnO6cGZbgc3Zj3310ke1ywhOL+6ci7u+yuH8V
	 TwphjCm5UVdmENv2NjEzZwsDK0GW+wBVah6plCecEsLCBstvjiK8RyyAMcMs9gTNPp
	 Oq5uKV1FlYWjK434QtuMLGP24U/jsU+B0VT0Yk9s8BcL3/shA7xJpffjVqOmDxJSkp
	 fxLaRPUi135HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D129C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263395359.5067.7034716501636125640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd62014804625fb6e723363fe182dc6c02dd96658fc701b6543f093f323bc6eb
Date: Fri, 02 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722633953
