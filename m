Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F0026A1A3
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759348794; cv=none; b=Eq4+7HztFsKsqUyl+Q1ERnLMYEZXXs53Ehky5MQZ9IbwgnVcj+8qZRJ53rd89rTBrhuABhz6GK7BuEVJdGAdeF+xo48AdFVzuOCWSNuUq9rXBjTHuJAnucrYZRZUtvOf/IsgL+Yyx33dkaJZ8YdTmA5Q7B6h1YKdUU2JQUAqfpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759348794; c=relaxed/simple;
	bh=7zQN70AyVvqyRoWmNMTCmgyy+7YGxCRTpRxHOWaQ84U=;
	h=To:Subject:From:Message-Id:Date; b=cTAwqOFTG2I6cx+DB+HhAuWl+qoVbguBUXXBucGVEr37syLhmrtA+MHYIWbqMHZ8Q4CKSErOK+bG3oxGdKgXyGCahaA4MEKnWbNqpevX7Q8dyl2vK5i2NVCLbgdubwauIA7s/x40OT353zRl003wLXpv4wHGFdp/S5nG2/gp8vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBk72yoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBk72yoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759348793;
	bh=7zQN70AyVvqyRoWmNMTCmgyy+7YGxCRTpRxHOWaQ84U=;
	h=To:Subject:From:Date:From;
	b=TBk72yoRwkKdPGA6BAmRNceuoqsF1H+Fsd5equ9lDapGpJ0n4gPGwNHPXwRU05l8x
	 vyS61OxL0/V/oGL6OIbP73NAaqT8kGKfcq00d2vvi/dwPDkyv6k0MCTctlvWvie7KA
	 KcnwYRTSjnRxO3tod7fMUib7iUxIpK6JOJDqhggbT9XpPhbp4PrPPVNulbTgo2/cRn
	 Q4cKnfBJ8SaR2X58w9e72NY7Ye4Hx9M9UiQmBBjZXvcuRksmx2oCrYFCxb/z/WvhOc
	 sRr+kNTdX3kN7ftDJ1FtHnDWxQN/Rg4Sev5th4eHlOPamzIw/Vl7vO4qZYmZYGcyNF
	 cwFOK2gq13cug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934879357.22763.9699053460218401294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fc6a5d2f0e5933cec48f6b73d561e2f59733e1f5674897c3bd679a463da3c7
Date: Wed, 01 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759348793
