Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B376383
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737333954; cv=none; b=l19ojXA058dCmQKxRnD2ZBS+UGJSng5zcUzyEMZnvzJYoYu8h83fRbEbhrrgPYiKNL9n/mMZQilUxUwhWzHJqLAdHP64A4DaiFsGlytfH8dhM2XtJuQz0zTo8TsAcaddHnhWa/l0q6Djw0y11YxxPryMY/8fsqBLmCyQA8d6hfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737333954; c=relaxed/simple;
	bh=Jrvl0e/madVzYrmCvU9ga8phZa1dOAc54xdO6ZIQDpI=;
	h=To:Subject:From:Message-Id:Date; b=lmUbxStj3zPK5KlXnjwoZGU1hWtBPVt+KruieAfSHkscXaVWA60Mk/1T6dhdljgnrR69kIcnGBDnzIjzoP8JhulVerXMZkNM59QbqG73n8Xp9HH4AgetqapOww6f9c5yNwg61CI33HmfMuY2RZsnYI8yt6KyQ0IO020Z3oMnsBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsJP9wIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsJP9wIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35A1C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737333953;
	bh=Jrvl0e/madVzYrmCvU9ga8phZa1dOAc54xdO6ZIQDpI=;
	h=To:Subject:From:Date:From;
	b=UsJP9wIHRx4Ky1YYjjWYHEASIl0FCnMRrvvXHnN8k74x/r/MUMkr6BM18fPQW/Dw6
	 buiVOtPwIqxLFS69516wqcXyiboDWF0fopLi/9a1I0uwPfDdQcFmv1FG4YsEPzohVr
	 XZQR7bbgDTHmGBucBgHlSNBY9S1G/UdnGc8IlYwA9eI2uZArDvXlfsViWvCe7wU/aK
	 ZfCKwx07SbiqunQR0O7oYULekwyMBC+XgpKJL+qqsgo+w2iUuKEnetCR6aQyGeN8bX
	 s4OtaxmtOmMcxa4MAchNI1KNDwXPj3dEf4RhuNaEBCIwjL9BraWhOQiCZGHDzxjjTH
	 k1yXdwPu0ToQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F903C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733395359.7220.4581124245258258622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc12061eff1d278524a64380ba4632965b0142fac14a8dd58ab26b180749a4f0
Date: Mon, 20 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737333953
