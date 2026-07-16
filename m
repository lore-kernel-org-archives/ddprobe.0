Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6FE40A93B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784204914; cv=none; b=gkz2pQrhlXyZb6AXhd1dOF9nYs6DsZWqClZCY/eE14wCjM/8ZMuOytPFsxaxsH9XPejSucYxI1U4lVYKfKjJh82fK6zgEKyn9tYkMXkz84So7Dnz8A4AAfJO+WoxUIJT8oJnZid6ZavuU11IuYSz8SdJoECCQdmmZnX+majRK0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784204914; c=relaxed/simple;
	bh=cKiZUsocAU1VG9zOp6GGq2bLfmlZdEni6OXXSLN37EU=;
	h=To:Subject:From:Message-Id:Date; b=pNJb66jDhw8IQ86L++wzoWl5Hj8juYYGRYTg5fZrB/FprWG48h12gwKzPfUQOxJF2ZbaxCh3ZWL9u6iJWFsBSY7zsfD/Z+lg6gjmkvDpPpdbb1ZvXUB/xc1Vj5IQyXDbsSoE3umYfTph9ZIjMN7B8ky1cuD3zAO7pT52EopswtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrL2Icgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrL2Icgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99B1C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784204913;
	bh=cKiZUsocAU1VG9zOp6GGq2bLfmlZdEni6OXXSLN37EU=;
	h=To:Subject:From:Date:From;
	b=TrL2Icgsy8gQsb4n0ihKAGUwxnuVskOh9qtJ09M0bwxcnn/qXH8Xo+Kzgn22X13x1
	 jqEBrFOB7uN21/+FsXitv2RdmAw4nzzjdYJJAFpyR9CwQnftnwGTXzL+cenFozswfC
	 EsNi+6qrCdA0u+T7RlzZ3MO8jvFc/ugdFYX3sEFGPcwi0ENtFpBDVaK5nQ1TSIFx5d
	 v/uUhd0WFNAOu/Tx/4R69HUj+A4iNnTArkgdpdO5xuLw2l3Os5Bsv+0uPnN0ggzJkN
	 Pk1/kodE0zCpMfCXuoMEPDBn367Kt6bRvA7EXlCcnyi7/8b6lIMxZktfUY+GQ0D3K1
	 mOpVbz7Jqu3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D34C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420491368.19960.9007638794400323974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457125e9b4f36254d8167fb1289a90f979aa6d3bd12984d3d8e491f14181676c
Date: Thu, 16 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784204913
