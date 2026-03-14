Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7302E06E4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773507894; cv=none; b=NyIzOCflbuTeFWO7JPLmlvUe2CFLilpJaBhHzXpRpMyp4tt2acZVbvG04ZVMr83FvewSnMvKD2cu9xrnkIhJUDFMJkesah5dd+OOvAAF+RR8ZmxNSNJBcvmpxm0JpDqTIK0spcKZE3u2zgWZbpZ3BtWrocml7h3kK1K3iHr8H4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773507894; c=relaxed/simple;
	bh=M8Kg8PLt06Quu6em7pastg0fibQBXQrL+uiXH87kJ7w=;
	h=To:Subject:From:Message-Id:Date; b=Zy8fhnMY9y5BkvLUBmCIfPnDOas/DoGLVrKgboFntOvdqzK0SetvqcUU1BMGQmWrLh9FVp1P7sShKLxsNQAXCucF1sNC16F3R5VJt31BElz04bvweHanWV6o4ALOB66APktd3xC3RPgTFF6TH6lGAu2uDO1bkJTQfa2QH4FG3+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bW5GDJnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bW5GDJnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2135C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773507893;
	bh=M8Kg8PLt06Quu6em7pastg0fibQBXQrL+uiXH87kJ7w=;
	h=To:Subject:From:Date:From;
	b=bW5GDJnJA6XJ8MCe6A1BPejNiC+5mIMinfdlAF2SpD12+psWlEU6GwR+0CDcxxRQf
	 hcKB9H3jyB65UOjvFeqvhOGXIOIte5n09EYu98d9OVjoT/qodiGFYXhrGhvc9uyyPI
	 iXboj00i1Hpt9DeI+mMDycICWMWCHAE8ZtDXoXrYCXPoK5KyElrAAtKyB9Ns7Reihd
	 vMDNq7nRR0C/lBgwUhAgmP18kH1/2PXJhtNBtezEALq5SeJjQb6rKfCrJ/31EPWiI9
	 83odctwHTj5XwY9vWoJNKboBaDluTJC5WFc6twr2i72kpqmsrM9JbvuQdY4EMVly3x
	 5BquxkZZwZeag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A910706EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350789358.7640.10598445561448702595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1288f78f8383680cf0979347d80ba6dbf21fba742875770527563ad0bf53ae45
Date: Sat, 14 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773507893
