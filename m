Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F05E4D2ECF
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784720315; cv=none; b=ZPknv9EoRnXNwHH9u/ogAuRfuvWFLB8Xj4IcSa0M02kFV3MzwI7ML5e0tSzqYWeHlgHkNUW24GlwdSen71TqZfFthzqQZb8I7YtVwFoOJIHvmiGgpCWfqqLZhwuu4TB9feOA8kP/RtKCOcqpRwrZ0BhtSdzHjYKxSOhxumxbNdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784720315; c=relaxed/simple;
	bh=Sp5ndAQtrD/E0A/1A+W+8DBoL6car7of5cY+9tXl2sQ=;
	h=To:Subject:From:Message-Id:Date; b=auqWgu2tI+IrPUMCMf2wesG8wLmnc/mKnvpe65nP1ulm1zwqBXTESlHkc49tvRdkQy+nEgmfMeV9nFVGMsTjPCXen5/xgh+7UN1snRYEYn/PHohpEcEA4q4TK4GZwJMyUV/V9buKDFPfT0ZbuhsRlnN0f/40J0pPnkaT5wWg9zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFSWtQg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFSWtQg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9493C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784720313;
	bh=Sp5ndAQtrD/E0A/1A+W+8DBoL6car7of5cY+9tXl2sQ=;
	h=To:Subject:From:Date:From;
	b=nFSWtQg7kDN/IgkIBpValG7prPWgo5HTBhhV7/Hzyg0vbe9et4UloxE5QunCi2B2u
	 y+lFIyawSSwfZXs4IlPhrzjq1MfkMHaSdQTPOpxdQv4AKLWNf2uzfC+UDlsL03fsjo
	 GurBb45ceY98OpIgy6Ttcy4Ws9fLMXrOkrP/6GzJSIDxM6kvtzMxDpTVMeENreQzWd
	 tvTtqsQxBJEWtgKDxGdLsPpU2fq1j7otS5+FEe7q4iJC11uS2xhIWWUyXtr38VMWV3
	 yQHUjdLf7Jkt38x3fRgVblapRT653fj5B0r8wJ+4f6T1sAbfPglq88+9sCgGl30tG5
	 U7tSN590BqQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15CFC44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472031371.18546.13426657908271739601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280144426b0bc296776ed566402ddb91efb90be5e486cfa2c56df3e183a248f9
Date: Wed, 22 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784720313
