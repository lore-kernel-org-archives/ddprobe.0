Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EC31DED5B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783971514; cv=none; b=tPh5toPSP1fnc5hjYdWKtlc9eKXE3Up3DUTeVuWnXql8hPEDxJd0j6+W46qNobJFDj0tTT8uCbA88nHWCFtMjAfqarDiUs9XlTqqZq95Q7XrZ10Aa7A97WwFbm5KFiAF1PSC/lFkFcTzsbKj1Uk8pScn6nf9PlYUF/M4AmZjYkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783971514; c=relaxed/simple;
	bh=YJnSUrji02dfg++flAhilCepupJzb19fiRXLB8RByco=;
	h=To:Subject:From:Message-Id:Date; b=hB1I3H+MRe87rwL47A0+NlIFhkO0qQcTOtSKG4QlTOurtqK1YuvNSL0gkw4wi3ojpSaaIYnfBEEXDGiBNy34iQUIYUfOaOTjONMO8BeXMzRIwoGhT6aZHiqr/gGFBZbAI5Pb9NRUg9feo2KTwLaGlS7mNj3NpjHg8pqs7IZu0g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+epF2AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+epF2AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5291C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783971513;
	bh=YJnSUrji02dfg++flAhilCepupJzb19fiRXLB8RByco=;
	h=To:Subject:From:Date:From;
	b=Q+epF2ALnKNTFuQnaWbt/HGrWdvTwfOJEXZ6mTF2MxeLSHoxCv5QWc2ScEwJWhp/3
	 ZBZW7h/6uV3+WwQ3LBJgRjyEXgW/JjC37B8u05FkQgcy4sENIihlunf1zDHhBh89jz
	 FCNAeHq0jj5U9nhazoSGzIBegN+FabS7DUCvDvkXNKe95LJDrIGDQO9QQx7KVS/wWY
	 80Au3fW8CvZ3mFXWIo9U2ll/7jtOfOgCZniIzFLakplZnyi4/h2EW0BbFqQn/hRh7r
	 sUN+kzmgytc47miQopkBMdxMrv5v4QhAiCTXPLkCkJfxQj3d9EIVaFvGL7lN8qv5md
	 CIbTJeYc5c1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A63C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397151371.19318.11969442126228053863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b98b5d01b6b4f34eac32ae6e672664a138d52b4281855b8e0bb1ff228b1f128
Date: Mon, 13 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783971513
