Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1022571DD
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778207254; cv=none; b=kPetPtBbhhpPLxz/4JH7Y+kFZexAu2UIQNGKhPKtlMV9gNgtBWLBLfR0VP0XPFA5V/iLuz7tQ1A6US2yoGBGjY+bWEPkK/AuWR6kEsu1glTXqw0UhEYGDJgsLgnEvhaKxLQ8x3RyROGU5MgU+pBDGke6pRROQ1wOijbqMazIMh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778207254; c=relaxed/simple;
	bh=BPMYoWRFRYw+HTVsBnTDZXNp12KWPMwwocxCLZRV3Hg=;
	h=To:Subject:From:Message-Id:Date; b=EAyrNE8dQdl5L7rpce16ZXTQzRD/qU8I3vAdf/hzqzmDC9hytoq8Cs3bsTJgMCIzQna6P4Na6Rhm8UdbazxYO/MnloPLOP8zEFtNMBZ33mBg1zhUonMoY+urJ/pqn3n0J+/vCuyGZw8gx0Y2dfgngaqLMNOlm1YKAtIotO0rB0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nU/b37/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nU/b37/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA98DC2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778207253;
	bh=BPMYoWRFRYw+HTVsBnTDZXNp12KWPMwwocxCLZRV3Hg=;
	h=To:Subject:From:Date:From;
	b=nU/b37/cRPARuB918SMb3Spqqesk6j1VsuW/NA0+Nk5NAH9U1/+pKsw6ozhYa5Kt8
	 iA0LFPJxa6tM9bEWT1gTgeuSJ7cmRdrkBJvRWbJReYGqpyQfldStNy80DAD/M5mQe6
	 QjL0MT6Fs7OEmDCXOga+KgzI+jr0BnqI18Q0y4VOcdVxdDwDkDPnrJFE9XLftsiiyP
	 x1Gs8Xcpl32wh2I6SFKxGRO8/RaTXxJqz0qTde2cNT5qvsaKJKRY90EfS1EVE7zJoE
	 GbXCL2XFXID96/EpiBd9xgpBWu/3rMKLLl934zWgz00irlkIk+zEim5EJTN25sWkEb
	 XQ2WeiWkyIvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89EDCD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820725374.8293.15962406593088504130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4730052d19faf8eaf842c8a7d048430b64879e10e90c417d7e1163d234ee6d36
Date: Fri, 08 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778207253
