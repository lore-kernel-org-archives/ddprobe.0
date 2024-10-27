Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB8A2F46
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730010954; cv=none; b=VzNd6ok+BCXYU2Nd5EJDt8UmqD7W7CZO3RZ1sq/pTpsAwJsFu3EH9ycQs0O2gfPBFho1H4cryfWwGtR1EV3/yK17L2sQuBc+PmIEbCj7Oso7RF7bwHm6aBiVgLcMlgaXAhYdrnY1/YibJ/LT11woGlwCBawVrV9IEPZ+GjH8dLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730010954; c=relaxed/simple;
	bh=3JC87b8lsoTgmemKaDnLr5zel4L+8Ne5nTj0+aSVYw8=;
	h=To:Subject:From:Message-Id:Date; b=PPwnGMSHcxE5q+H1hG1JD0cZpeJpPu+Zqa2ZNfKvYXoi8iZ1Ju7uEez572oy81/oC26Ea9d7NzGLK9WT2x4cf/y8l+xLTUlBFscEgqugyWnHoykFxAFQOqb6wiMI+auDusfZSltnw2XxoZKeFsinn/0NhJTbFTeEQ+70zt+EvoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpbLpP9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpbLpP9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC12C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730010953;
	bh=3JC87b8lsoTgmemKaDnLr5zel4L+8Ne5nTj0+aSVYw8=;
	h=To:Subject:From:Date:From;
	b=CpbLpP9FIVe663vqRkwUs/NSFP1Mu5ce7jK0ffVXbHZQTT9kJz93rgT7to91dSkde
	 xAL9SkSV9fhoP3aShnLl1IjrKuetd6as62kJe5f8IubjlzVlTNLwtsFZCb/+E8Knsx
	 tauW5WH9DWC2glLhRorWFtDvpDDyuULTuwERaSJwKaI2Ofh3DYejvawbzUgbyNHiJ4
	 ITUV5j3qfxr9k/9spSSETxRafkKr4LVldVr40czQWlM5qGt6S+VMeKxuO+xYyGVAef
	 HndlpNwTzeISJvagRH8ll745PteKo1oIVRv4ViNru5hqF6X/IFaDMDB3v2X/F+0AmL
	 LUnA5wvD9XWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5215D1039E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001095364.26174.13419153594742955770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ade56bc6137936760e5b29d89d8170e04be3c53aada3690fcc7375eef1fe89a
Date: Sun, 27 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730010953
