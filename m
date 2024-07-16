Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4840B101F2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721130323; cv=none; b=P5CJsn84qxQQDz7Sd8Uc4MdbXqRVn5Jrkf5UBtAKiyg5w5bjyq0iZI9w30M+duEU0uTl1pV1g29D2+FU/NEySUIvJhrFiSmzmIoi39njH6TwinBzsLcvPbcwyMAoAOz6gUDvkqIoVs86KlIeoVLXt/EZ88I4DoTZmStgOlhoTYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721130323; c=relaxed/simple;
	bh=PLjYFzvKO9Fp5reEn5czQsR8RAVkr7x/nJ4mmCN8gbo=;
	h=To:Subject:From:Message-Id:Date; b=F+lSeUQOagKy6y+S2+rvNH/Lg1DtqYS14Hzg/ATVUaY1x/vydX2SfCHXi+VDeF+Hgq77Vuej5fyxz418zuOzK9Y6lAPi4UzFD2+coycn/xh3gAjASaey0+uTxKvw+xhdwMFKZNG/QHG+5MQBXt/Sh/J2egTMoYGEsc1j2Vl9e3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMigDqAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMigDqAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D445FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721130322;
	bh=PLjYFzvKO9Fp5reEn5czQsR8RAVkr7x/nJ4mmCN8gbo=;
	h=To:Subject:From:Date:From;
	b=RMigDqAo6Ux3U5yFyHIc0UeKXHlfiqsxRqGVnXt0UktYis3onUnZK4QxhY2wj2zH+
	 HcQ03M9SbKGAO2XC6McC61/FqHT/6jsW8jie/rVWdp8eIWy4819BdDLXB1ik0Z7W7A
	 C68DEbSxkQQ1lwU08gXIvdBUh9o7DvKB6CTOuVXmUH4YYn9e86Gg7Y5Xd42h+zyBLF
	 M5jxD4wjAxQ9f9MYnQcLRn/BDFF95sLW62d6RJTN1XCPs6Geb2zNZ9tmUTQDi+oOYL
	 zGm4K6O3kKoiZbTJAS6K1F7tTsU1nJecZSbRC9HGkCPQRO6Ofqdcvd/hQ0sUcOS1p5
	 uBdrjfBivE5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E25C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113032279.11261.15811008686132415024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c132bca7afbc4f66836ce8d1ce22d897597a5b88078aee56881d1adb79a98f8
Date: Tue, 16 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721130322
