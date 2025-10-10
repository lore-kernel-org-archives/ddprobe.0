Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351A41E7C12
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760096394; cv=none; b=H+a46vTc28Isvm4YvUsshq1ERQ7EHLCek0/Jr/hmMs6vypb6dJwSLMs4B7e36bjl+Du0SlIxKgdGp/a3Wd489fdwo4zJqezedXsyJos5BOW2/V60ReorbEiF3Bnmzp2aQ5Y5A4d57nnMBdwbiD4Ef7Fcu2/zgA4PbBrQLDxe/GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760096394; c=relaxed/simple;
	bh=UsLxkjSC/p/KlDQnXmtEVrPKTquvI5TO+C22acg1z6U=;
	h=To:Subject:From:Message-Id:Date; b=tPshZCQRqlKeW9YBGCom51AUFb/eOWryavk2Cd+1icKi6jbFfQQaZoofrxoIRbgW0W5bzA2NMjunwwc7TshUMEbmAITYd1QBt8d23CtJMmwv72sumVX0dzcXT/+nSvj79QMDY00kUxEZXpuWxYmaz2UmspiMH9cjhBWpUxxj4RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRLqbT/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRLqbT/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5862C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760096393;
	bh=UsLxkjSC/p/KlDQnXmtEVrPKTquvI5TO+C22acg1z6U=;
	h=To:Subject:From:Date:From;
	b=jRLqbT/zb6euQ2RZaW3z5aKo+qzPVstFZcy3D20gKCIFsfvlWNe1iwuwikcPcObJc
	 XRkUnvlOodktyOBPifrUCauiiugc7UgPHZCiagmPI56SFqY84djIjDE1Q6r5tdfTGq
	 xyfEs57PRE3UOPqSeIsODb8YL+eUtvH5FxmlUMFKW39y4xRw1XgtL5d0mgRIzld9Pw
	 kLpBokOg0/sdV4jC4u8Xxv/IFHmNMpK7Yu/H7+5UcywYi+l4TJc0+oDZAA4tqpifWn
	 3gTqS1hxZvzju9B+FXnpNYv4FHzpEqLkQZdR3aKyzpGfTt7X1zaF4bVSMcLTPv6Bs6
	 u+b5yoSE/kRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E5CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009639358.28912.1410064610197703592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49a28c9d0f1dbd4ef79dbc986027b74afb69021601a51894c07f35809918a55
Date: Fri, 10 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760096393
