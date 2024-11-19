Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2AA1C1F3E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732058154; cv=none; b=sq03JhpxBOOWdJb3s99BajxaBEJ6iKMA481Z5woBICEJoNN2PgWBSkilK40Qz1xldC+h4Sz9X3XZpLB+Bbj0sgCtLFosYV4KkFm2AKG1kvUWU4gsVDAWyNGGcJycrLRBGp2MFCiYsn8zOZWY8wN4049CVi2Vuzake07bLXMceKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732058154; c=relaxed/simple;
	bh=rQiFd1EQnUkIxV343okA/R6YbBeL77Ks5azEnqMVWjE=;
	h=To:Subject:From:Message-Id:Date; b=U1dQ6NW4eHoXFrKTxKQLzex8lm7xj6eUwqSumCC0AHwhwIg/mBERs6+Wu/0U7WeHYiL7gBI75JKwrCg60cNLElys97m/U/M+CbCQUR0Wfd5d2DeCVbbSuQY0M83JvfsyGRhQbKJLvW46Gy/Qn4w2t4qb/1x6FgUWw427/k2rwhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPY96sDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPY96sDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC24EC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732058153;
	bh=rQiFd1EQnUkIxV343okA/R6YbBeL77Ks5azEnqMVWjE=;
	h=To:Subject:From:Date:From;
	b=nPY96sDOjV3BL0hVGn91Q5f0CEK10UfDvGoO6pAtx82adr/81g2Ql7BLd1F0RkDRN
	 Ldm5xnNX1KCxC10xyl5VmCDFrh9PEVe9HFFhVjFQ9Vyslc/ZuQ7yYfNvniYBRLqk8c
	 UN59vjmI0WDeg3Mo+wFLz56OKrYSnq7ODSWmvNdaggVRPNPguxMlAA/GXpmBSqe9cM
	 /x693DuJlEfrVAbv2Hr8nXNBlADGJSC8xBI3Bc263wyh938+EjTed/Oc/l5KU+APtN
	 BQ2Tj1j/r4lyJSA+5ShrR29bVFXaa4ZUhuTGTFW7LLzPcBD2U7QNcEvjQlYK92R0iq
	 px0yAnyMhzt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A01D6C2B6
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173205815360.22847.18235492525714354590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95243102b31d5779b5322c489fd0465e776fd0efbcfbd9d807448925ee3e305
Date: Tue, 19 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732058153
