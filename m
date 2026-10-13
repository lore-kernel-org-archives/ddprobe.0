Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE24F393E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791903634; cv=none; b=ll89ttHKC5V9mlSq7MXh+v07GooXeK7TbCTjJ4ZNG9k6um7FlYCB7WKMmboLAadCcm1S9F92msg8s/Yp/MaBrthPKuk5xfU2dT39MkBPyTEBobfjJfHiZb9C+L1aed3U1SGjSlN3gImAqweIAvFVTNGsDvi/7zr8OsUhlSZlv5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791903634; c=relaxed/simple;
	bh=gm0aHnSbAGxpxsTpqswR7huMg0QWeHM7/TzP+wN5zzw=;
	h=To:Subject:From:Message-Id:Date; b=cpuaFWloccGcn6DvVKYqIlLvhLICzAZtRcGPKwLl8hUm9i8cGV8HeJqqdN5oTGEayoM1cbVsNSTaohokorOdXQXUKkjgQuKBSOmBpGEZENxo64ZWGixprW2iILmr+JsvvT8MBJhHA2hwKDai999pMl13WAlJ/DCtiPe3Iz1V55k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs5jw2L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs5jw2L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C04C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791903633;
	bh=gm0aHnSbAGxpxsTpqswR7huMg0QWeHM7/TzP+wN5zzw=;
	h=To:Subject:From:Date:From;
	b=Fs5jw2L+irOblfOd1cTRWv/VoNGqa9xps08XQv7l1nA8FV/k5mHAiZ88zZ5wYTb1e
	 VrgK9UwmUNZcKDTx1a9LxyZ8r9fI731WJtFJJdxLl4OAmJCKjgVqtVUzozn3+WeHO1
	 mYurYkS4RpK/8dCIdwv70/igKGGjrMhJnYZEqmfWPr1WgUL8p52M2RwcroR/QWdf9L
	 ORETNHgFtBTjKP7twZSonlMcV8y2ztTXpVEm1qDF48DdzPqMJpbCrqUv4c4csPT7eZ
	 OzB2dZh1f/gAQ+JZMMulYo4SN9q/R5B7Wl6zloNYo0rEBSIm5sCLx2cwfhWwGJsVcZ
	 czM+xYY7tJRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0665CC6B0E
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190363371.31763.3664611376533025696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9492eac2cc42852d1458ae785ab78e04346a9764b950b1d2d00a875d1d50ac4
Date: Tue, 13 Oct 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791903633
