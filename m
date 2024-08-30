Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08E116EB5F
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725007554; cv=none; b=SRGHCyIESIHbPgZbd4Ybx+pU90phOs1zoyt4hb2/nQ9QAR4tNBwkgzUJdufBtUMHG4Mq7X5wdP57GgMoYfzXD3tDBHgDenSXeLV5aNfMli75QLae/6zDbXqmKs2si2fHYdjhcBR8svgEV1lopRJWbcfuhXUqIN5KYVhoo7PrDBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725007554; c=relaxed/simple;
	bh=wcCKV52Cemlv/7V5m4usAVQzzgyHQ4ufo2I1bG+pvls=;
	h=To:Subject:From:Message-Id:Date; b=OgZtEw8gO/T7c4DekURsmPf1oSDIaXJwtWKBENr+kMO4q6soVU4OHhiPg1Qtdbs+opdjnnk5poMW2E9v+M5Q9fMcdEM8KnLA3pw5V2v3AwrwilV9vIJSmt8j4rQf+NQ1bKMP+pg4GXJYjp4EuyBmfpLnEHqKiZg3df0aF3ZncM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cS9bUiIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cS9bUiIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57229C4CECB
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725007554;
	bh=wcCKV52Cemlv/7V5m4usAVQzzgyHQ4ufo2I1bG+pvls=;
	h=To:Subject:From:Date:From;
	b=cS9bUiInJNBy/4rWawzqaIbDGonHybuTaUevwxXGrGpjUyMfHX2VgSdAlF+i4kKOJ
	 yC7PObNNZ0wm75Nlmvtm6l870Q/R2SwzJXI9g9626SfHUY/JacfIXF7HUp0OEjoE+h
	 MsP/TCbmzOv37YPQmNgbg194UvMu15P/HtKWUdmitCmv7FtQifxr1oQuhwS1kcI5SM
	 uB0rCNVaxTJMG2r7bkQsMB6baTk3m2re5MudAH2dgV3yJTiHaBUSAv2VQXCQOzyn+0
	 j8lqMxPB0aBFIm/Nbhg38Gegp0pBGBrrp9CWDh8HIMZ2dSMhNVBqAt+eR2g/UiLtfB
	 3JSSyho89LqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1D88CA0EF4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500755389.23233.3155567753735102982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e777a2fe690af4080d5b5ab7550dd251e4f628c09ae318b9553f9d752025f0
Date: Fri, 30 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725007553
