Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C71533ADB1
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772175294; cv=none; b=RT03sa+3ekNhBAOHFJQ4k8OATcPzOx27ZAq92TrjlyK6cLKXIbrRZyonps4dXFS4F7VNU6s/Tt+LsJfrXHrglpx+K+x1vJ7j/w5xj+uE47BDtzwmY4envLFVipH4Wu5e1xXkbuYeilNNrqceBwESNZfDA694icMIG/VK2+jAtFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772175294; c=relaxed/simple;
	bh=EJcS4vFCN74PsCf54h+KERGZj/Z538w9e/r2aDDzTlo=;
	h=To:Subject:From:Message-Id:Date; b=NXGyy/T2Hcm3r2N9ryp419aepZvniHO+0Sv1c49oYnx8/EbAZaSqVG1meYOgOpDbAp6m7a8Y0MKVcmbZ7wO4+Z0V1rTxDYNCzA5k2P0oi7q0eucvBWBKT/t4YABDrLcdnJFcDxI0XqjobGscX6nfVu+a/qB3atdtqtYhvJjlIE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkU1wbnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkU1wbnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CABC19421
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772175293;
	bh=EJcS4vFCN74PsCf54h+KERGZj/Z538w9e/r2aDDzTlo=;
	h=To:Subject:From:Date:From;
	b=VkU1wbnGr+3hBMKUf1/bjCPqzeUlqAequkd1ZxxPpSPX16RG/ppziy4w+6V+gQ0A0
	 AeNvBOA1Su20u8eLAU72h3lMK5fLgSt1F5EpXy8Xc3K9jilF+5orvO07QVVtDNgiv/
	 E7UOTajlKdzdFKklMckM3ic9vzjwT75rf3ZzvCNyW9MRH7z578jxl6G/e/kfOOWOd1
	 sBXn64aE0yicHZlbz2qXC+aGp/RRe0j3cjbVn6MT2Ig6TZsbOIuudwn5I3XUWR0i7U
	 YG+5LCKG5CRP84ncyJf3j8GF39XpAKTdCTQibp0TsINYL/f6uTrhr48s8hPgM871Lg
	 H5ERtQzSEx0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF0FD4618
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217529358.16952.11779322518837816824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82edaa296f31c3fef6932af753bb1c0220b189b4dfeedfca6d9c3f618bf87e8f
Date: Fri, 27 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772175293
