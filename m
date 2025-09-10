Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F28530DEBC
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757501394; cv=none; b=LZN48BrGf8bV9BOfvKVi1MUvOZE33lJ042si+Rq9nh0E7AnmL1BaD9wclpOwnPrvVnT2XZ0Da9MNZ/zIQ/I2+vRdcFB8nNmgjkUUcs80a8etbRAxrxW+PQNeqMbH9tVIZ4XDH2gL3XkItIGtSxG6RQOxZmcbvXYAU2Nq1Bch8Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757501394; c=relaxed/simple;
	bh=HCYNGy6L+U5OIEvVlJsZva7jKXzGJFjaHHgKQiWNmE0=;
	h=To:Subject:From:Message-Id:Date; b=a1EwpbC2JU6qdC7sFbrFwwUarJ3tznIbIZl/haiRUHpjb3XAwfXEt/uEaye22FJuM8cBHv7C3cvZJXf3g5kfFLiHRhC+wWMXjt4Eb3d1yEPIdGY16Cw9dUNixJU/QhTMJY9N+0RChN59hThgxwj4fD9fPaWnfx27/KZ4KPeIpcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1i7jU+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1i7jU+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6893C4CEFA
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757501393;
	bh=HCYNGy6L+U5OIEvVlJsZva7jKXzGJFjaHHgKQiWNmE0=;
	h=To:Subject:From:Date:From;
	b=j1i7jU+Mz07njV9ytmgJenSACt+LjuiIFOfDd6OytRE+4hWVXtkEEqidG/H3LumPk
	 9Z7+1WtMuRKfEQHgTKbwMUX2pWl53ne+bVh/N6rxSDL1cRy8JBN6Ipysf0gLHkUgVw
	 tQ6Fzok1KLfPKbQHqyALMRz4/pljiRETd+qe2yHRD5Bx+ihT44FV86Ykx4kEnVSNNg
	 i5eiWRiVTwcDM68Z9yHWscbc+MXkEMIQwMBHTmqn3652l0q1Ikzpzc1vFz/4F41Srm
	 C/E1SCGhNpRGgSXXTrsOIIP7VMn17kNm5RfvMfg4SyeYkadWfM6qpAyXKpAFCmXwvw
	 co7oEtabao5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95405CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750139360.14814.16083650788977365430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15eb2efa0e58e2a400d9fa457a9cd2d57a6186eaaa13e0679cc8983408d3e6c4
Date: Wed, 10 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757501393
