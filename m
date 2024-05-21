Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E37F
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716249743; cv=none; b=WpCkTgnySfiSiVD1N2q/CytXjBcS3IVoEtXUBYIC1mgn1MrIWqNqOvvKpgyrKVT1TGDqGP5KPP60X8RuDbruwQNm8kVVHN1lr18XYs3AekCHt1rhhpbtFUPXkSkT9oldrJwCU5gCoC2qsrakMngrwIvgdWRp0B7OmTvQf5U+ZT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716249743; c=relaxed/simple;
	bh=VaS0DPfC4AevAXnrXaZN6ddESeMp35NW4Gn1chfVF/s=;
	h=To:Subject:From:Message-Id:Date; b=jDWXKpONrkvUzzv3Mk9SKSu3RjPQ3gUtj9Al9nZ6rV/dufOtMKaGsJVrrIGTDTwELb/rDq9NhNZp+N6n+s6OFWVQXomh7OBI9kL2/syxgwzF9VQasZ7s56c3ViEY9sM3cvbW+3vPgGiff9bpMJPtzHzip+LMD6Oj+OtZq3j0jn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lc1s5iUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc1s5iUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E65C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716249742;
	bh=VaS0DPfC4AevAXnrXaZN6ddESeMp35NW4Gn1chfVF/s=;
	h=To:Subject:From:Date:From;
	b=Lc1s5iUR055AqTCLpfCCPoJmoiKOJBpzqQoS1wuryL3HEAMu6UjwYTpZPCj6ig80G
	 RjQ14gKrzNr21J/jW+rbYdXjhoIF3VJ78UFIe1L3a3TVVbIZmgaVUNS1js78tFaIJi
	 T4fOrvq9KkwLf0FG9Dp0Ve9ncvW2Aq9sUkGtDOXi+fSfBH4r7k2hLRKw3JiogxZ1H1
	 79jTy6w7JfhPwzbXk4P/gb7yGKNbCGSa7jHea6+Pp7B40t5BH0pfogeh3YpVPeqAqc
	 nggyxFXnk7q7bsGoLoqBzerkX2/Dhub8ND0f+WaLifLkkwNYjsCFuyJPmFQtCD8hL6
	 xZdkWvPsYFFNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDEAC25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624974280.16708.11650669853622344020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d16b84a50446c431646b78ab65a10e7ead96da32c9efee848f1bf7e8771f62e
Date: Tue, 21 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716249742
