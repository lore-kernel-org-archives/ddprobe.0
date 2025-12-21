Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B07128816
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766303034; cv=none; b=ghtURKHTQoq2WHsKgx9co07BajrH80NdZbMV6LhDeSf/Y9byUWhlFLGgLmk25cMl4+wmJy3V6mAxCsPTlkZZE92QFukOYKZQkzeSeriN4NK5Wg0k0R10KoVcaBvrarGlteb5FUCs7a4cTIacGWP5eYuBVyunea8IOooIXcgokro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766303034; c=relaxed/simple;
	bh=11ERxcoHfV54RfIdPNpSd06JGwv8Zn7AxcLqAduiO/w=;
	h=To:Subject:From:Message-Id:Date; b=sJuZXqxvll+WUNfIDkQmO5Y3bb/RnW350cb+Re1YfAwv5y5ecrP0Q7yXjCUU3yeXKbRK+Pwoe7jEHNYTDlA+kSnzV5TfQRKk/IqKZwrz+/7sUQnIgM9k3wmO2HFZI22djObGIxy+1f9L1n+cBwpGdt8XxgrNHfrQ+GlHkZfp0Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6BeH9Uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6BeH9Uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8770C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766303033;
	bh=11ERxcoHfV54RfIdPNpSd06JGwv8Zn7AxcLqAduiO/w=;
	h=To:Subject:From:Date:From;
	b=P6BeH9Uh1NReRFHpIYxWLYazzY8CyIF7r9KyUKsxP0775IeDCdkblXPpDA2kn1Els
	 bDdCtHoHsCgSoKk9FOpSNmcNm927BPtoqtrFFEWH49fObk732mYvkzb+/nFHJ76jGs
	 +taRvw4Tg1mBie1fFbX2SoKvYQEG8R69BN+bSMVq9qHjd+fi/Tsv+zL6xi3fzpG66b
	 1Ftq6a74n49xJl4oeeXOfRujBbVaiJ1tvAPiR5H4Q5uGAuZJOQyXj+VRqUn4nPyKQC
	 LkO1lV/9Mb0rRMsuWPsVUW7unnLR0g+LxpTZ/J9j0wm0Di2hd0JGYBHZm3TYudNLjQ
	 JXj1bSkclGBeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99308E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630303359.19245.14452695750035543632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237e87388df9e1d330129dcd81723623125864fa13286cd27be8e28711e505a0
Date: Sun, 21 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766303033
