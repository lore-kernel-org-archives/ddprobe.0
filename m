Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300212580F3
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772790894; cv=none; b=QKZMIYX3622HZKM1NUwucy8n1JaeSI67JLkEa3gSnh25mdGcBSNDSviROhnI1WpZ10jf+Zwmlckpj9bhkWhenIEwpuO3wDYcXssrFvjtgD/ljf5wfLQ44QnOEgz++zu/rokFgKvqf80LSghKzeO1hFFJI/nHLz9F9EJN8dSbQiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772790894; c=relaxed/simple;
	bh=EzsQ0rbu8ghJA88Dv2x29rU+5Qdh6l0azhHNmvVvEqU=;
	h=To:Subject:From:Message-Id:Date; b=Qn7E7nBwDUxg1wb2vclZoYqg0cYeL+z6lxPpc0kEocgvDsknqgjwjHlr2yibdqo/wpQRxwkzBBpmRUNPNvpL/LkR8t6gi8EbQcnZpcCYA0WgQhPjks7fffQtBE4ymHO7SWs/k1DQEJr4MgBLrxbrm0I+MW0BXlLVrhxzyFNPGEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjvTmnzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjvTmnzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D8BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772790893;
	bh=EzsQ0rbu8ghJA88Dv2x29rU+5Qdh6l0azhHNmvVvEqU=;
	h=To:Subject:From:Date:From;
	b=gjvTmnzOLHvnWonLPtAK4IcUxmnz4XlH/TB+cBZEvuKjIMd2INo8wcPpsqCNLLgYD
	 mBQC+wjqS5F31eEZIbERYBVLmdtCVM3vOCj3gm7/zkt3S6FsBVJVIJZvPKNO5L7SEa
	 4oPKCGR1CwGmF3cxawLVuieEL9YSDvb9xb6XLbt2UVAxiiDqIyOv86OdWEJfv31ERO
	 j3OZV45KKSev+r4NUlnoM4tnKCAC0dllq/FhAPVQowRYOXsSUiIvpDn0O2JQVsvauP
	 M/cmeAPtEk/A0biN4fvnliuMtQkGaE1T0NVjsgbPI1Sv6mstmyyb1UucwGPT9KruUW
	 sBtOcAvoVyd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFBF0181A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279089358.28213.10091362792855773983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764c524de8a0dd89670b8cf9c8f8f7972c476ebc8c45f34c6e3ab139c5e9b73c
Date: Fri, 06 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772790893
