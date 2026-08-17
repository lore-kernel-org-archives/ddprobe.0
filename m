Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DC43812F0
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786989634; cv=none; b=p7lzYsJ2V9XR6kN30WDCZBtsIxfZscJczRlyQ6T+/beiyajPq1ySuV9wueElPZGFu9rXMoviq+Gc7hxD7Y/Ht6LPAjLh+t5SKmKRb+TU+gzqy1gf8Cr6wn1cMdfzn6+ncuYy6vE+vXhN/GPpUI4YjeEzD8W86DUme8lSfFRHeDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786989634; c=relaxed/simple;
	bh=14rP/3+vCY9n6/kJ/2KSpsLLWlWmr1SB/bYhbDL1P/0=;
	h=To:Subject:From:Message-Id:Date; b=u1Hoclq2hEm4blDkuKY7K4S9naBPrh1phg4C3S7/l9KgUHpBjfgj027SyjawQSqd/A3rLFXtm4u9nXBB4bIjjr9lqVoofRhlPdkcBIfRbxkb7w05/ioz1inIIj+BFO7vOc7EoySPomVet6jVlLBEoaqYR8JkgvFq4xbAc6tRCyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stBPfbdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stBPfbdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72E6C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786989633;
	bh=14rP/3+vCY9n6/kJ/2KSpsLLWlWmr1SB/bYhbDL1P/0=;
	h=To:Subject:From:Date:From;
	b=stBPfbdGQTw0CXuuiVOGofqIAPr/a8UlcrJUaiF6vJtU5NlOqajGeBN0QD+Z2rpSg
	 bGgAd8xFzp8NmMObefcWoBKO4dqzdb+znWZV5/ilt1lZm3PpWiWKO0KVXHA7hbXupi
	 LZ8yvIgpN4UbsJI8BkGLGFyw6XHzULS0KJEtZ6F5A+8tJqT2tvGJA8rJ/AhK/KNKlA
	 dPhydMu1owGipX43pf3RfJa1Ckn7UV+2a2A8vEaVXcyi51/718qj2ZeANkwWs4Gkdc
	 4YhSBmObhatCpf4oFNq8Xb9tOxO0ChFUy5dnSNW+W3oyNi4YN0oam+IsTOpbCIC9gb
	 VJh3oFCpPIIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3CBC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698963370.32015.17445073562939117130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18f59cf901b39c017df5e2b9320c879e337319ed2c905649ba3c64f7c5964d0
Date: Mon, 17 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786989633
