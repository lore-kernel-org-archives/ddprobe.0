Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475373AFAE3
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781552194; cv=none; b=Acn+CM9ulJ5+fMnWT9kNLG8zqYNsaSH/9MQrIDUTWCUYFKra/UN3peQktL63aObyZo2CveN8o9xUoWmQQPIPRszgw1sWQV3TTMXaKYhac5hla2tns2bC2kVIOEHbEIXfIZCfL3O2qBCVn+i2Yy6vNY9+97PoTSYnyY90eQwo7mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781552194; c=relaxed/simple;
	bh=3ZC+9Zgqsju4ZgfokICFtnGHn4eKrKVPfalQQRST4ZU=;
	h=To:Subject:From:Message-Id:Date; b=TOQUSJQT6ZEXlGOyfwkTgwHpETyqi2hKcjfTl6ykqnwG0FCsHNRZIhkMZ9Hb1JkkSOQiz3Sm13RhcQ+wS5w9t7VRjP2QmKnGvRq6gpPklP+coFR5kGLjZOCF9OUGN7ELPsi4sbU5RSh7BHQzRVcmej0/bQCPYJ70NTqBk+D6gaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPzZyJYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPzZyJYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78EAC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781552193;
	bh=3ZC+9Zgqsju4ZgfokICFtnGHn4eKrKVPfalQQRST4ZU=;
	h=To:Subject:From:Date:From;
	b=TPzZyJYldKb0WRDNrmeQNEjXzBkccjmAA224v3E06rNOtl69xhaa58wGDMuXPeWVk
	 aELOrQXxc5LVxQyM2H1Ko93fbwZuQZysT/HdQhp8CJCdrdRNjcfEr2+6VBkHARS1pG
	 0BO+XNvp1PvIgSzJxoatM3Wz88yYSAVTGt5n8KeADPqJAEtwL4iuCRLkNWjZKnX22q
	 ECzw/RriXg8KNl05vCpXWjz6n3C3URl35y1c9EfRAo6EQnUGnVYFtMC0GxbkV1ESWV
	 p7BRqJBGG79K88LFR5YoG411ELUyJ2v3Ay/NwD7Ycwr+SdsA+thVF8IUwuEnTEZ1+6
	 KQ4P3q7qj2rhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B791BCD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155219373.18464.12557768387373650118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e69c8cf768d4c1772c20825dcaea3082bec4ea6e69f9ea97ee9da646f166292
Date: Mon, 15 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781552193
