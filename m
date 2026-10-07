Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B833F39D8
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791360035; cv=none; b=Z1ZE6actO4JBLJ9vodwhB2s3lbDhQVIMiyL/2gojO/hm8ZMkMNHs9S/1RJPf8ThpM7tAbN3s3jS/6lYISjyoIqa/LlVKCEihbba7tpNvnDVD+hL65Yc+i4To95zBvOCFMtPmx76H2nwZM8wLvN7ckiVWsOXV1PTNtgzedl2xHiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791360035; c=relaxed/simple;
	bh=6BQwcmplOZvQIDVeHcS1iYpgnD4r1DgHclLl8SlaOg8=;
	h=To:Subject:From:Message-Id:Date; b=hfaFIX9icaS3QbxZUZLZdyZJWckdaAv/Hm168H5TNjMLDOMv28vt33T/bXx0x3Ingzcjbyk6R45f6fShQEyMsuqSzwCh9yARCDx/pbcFA6KfPHawse4SM9MSUoVmH/V4lzxb9IaOhJojTBxZy/QrfKubQgMVAdM776AqRgV6esc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6TUVwUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6TUVwUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19ABC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791360033;
	bh=6BQwcmplOZvQIDVeHcS1iYpgnD4r1DgHclLl8SlaOg8=;
	h=To:Subject:From:Date:From;
	b=l6TUVwUDd3CShcx8aQPbYXK0IaIzyL+coKhSn08D++pOMKjbjps7XxtNNPeUJ+5uB
	 ZqI4C1fZ9gfGQPhSTD1XpRBP1nL3eMRpxxwYk+fBpERDdHwpAUGC2wLFeCGEEKoMTj
	 P7NPCnVQlXmiNxeCa9pB6NeoXcwdR0Rp5FBmgNhTDDM2TfX4j7FGX9I/mes29rKJDl
	 VkoAQJLMkFZEm1PCw3zofXDmcn55zCIMOQdlsRL111V2rvLgfKba9t8hq9CWMybwDg
	 luJ5yC5NsO204vP9p5K1j5fQStQWeaj2PiA/nb+LfVOcDxhyhBDZdHlJtlKLMdk0O5
	 P7UfSJVN1Sz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD451CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136003370.25156.10335346483276090206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ea494216e3775c549d32d870030b2c566d99ac7f825a81b15bed27c999a2e1
Date: Wed, 07 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791360033
