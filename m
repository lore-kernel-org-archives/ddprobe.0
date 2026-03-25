Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1351E1C84DE
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774398294; cv=none; b=tST9uKybf+ELk0qNlCKUMoj0DW7cyeVotwLJRmK1V5RHzUJdaJKYToz11u682mu3U0cF2lNQxN38o0bs5SFZt5b1xss+T+gPuTkTICZFiFEYMfXXvv7Nt0U/6i90IkQh5it+lt5Av/nUv9qNw27c8FlSnoEqYVfI8awuTQAkRMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774398294; c=relaxed/simple;
	bh=OooaFL1hSG4WOeBAMcf1MO3mPfCkyosaoPdcYwvSXdc=;
	h=To:Subject:From:Message-Id:Date; b=TSeHcdrSdCrpfaKW534HGLATmoypD7OafNmYzzl44C4gkn6M0j0FtELOFQ7QEqLjIVOggrDCcgF3jcFeWNDeIgbr+hzpLW+mFCSVzthUIqrxGo4xO+zD3dC8Cl65aWTlvLnAs3dOgT2ekmfwu2LcpML0ZhlHEcCYMzu+mkIlukg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dImSFMh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dImSFMh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A5C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774398293;
	bh=OooaFL1hSG4WOeBAMcf1MO3mPfCkyosaoPdcYwvSXdc=;
	h=To:Subject:From:Date:From;
	b=dImSFMh/Mg1wrdQ41tvhSF+BGKtp+lm5yBb85PZaJ9eacJOUt3pdzD/1rBS2VoJTs
	 Pc8NgsfSZnFDFMsSs2VopcXXBlpFT89BzBNmSB6upKDWyUHAc1M3cgVTSSywotYoLI
	 Bc7QtO41YIkeb7Wm1ovI4ZxaduDFjUOMdQI2ydpk/3pTfMu0eC7hZTLSQl12//ogWN
	 GKVSfj8QkAsuCFX9QXzAN4+7D3mnvtNeP6kNQ1B3aR7dDnwCawk2s9UL8kSpEGZu48
	 hsk5PxHiB/0RnjARh8We7YGVs//cZINLGIvhAsdTyKqR9JaVB70jCwcPWIq4S8aeHu
	 +o0Yz2PYHKyCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92879F54AD6
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439829359.14905.13270838432647930130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9d0a2e1235a4dfdfe0d1216c0c397b6fd69c5dcd55cdd3f336ba264c981b7f
Date: Wed, 25 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774398293
