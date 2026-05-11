Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424C0364EB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778523634; cv=none; b=I+PYBaAEBbvSYtLVYxBKvoJOysRmb4jg7KPLhXbwTs6r1i/vrDzE4JOpRrHP9BxBEUOeUAfWw6VOxwIYgxJJiyFbuR0pcDNd93GxdlFDZJZCqaA5Vza4kZI04zjLm0kUTTTGTlhBTADB8mwO+3y1U/9dy9cD5T6a9H0VxbIMK2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778523634; c=relaxed/simple;
	bh=SnCmCXC1P3Q92cKl4D/9r7t8HgXnsG/3Ona7xITCJ4w=;
	h=To:Subject:From:Message-Id:Date; b=pOgQrdXAVzScMxJm8VCICTSfIe7g+M/SmM5XW9U0w29F9iH6QVMKKe0Bt2OAtYePSPa0nCYnjf+AvrKcJ5t+t68HuDOgHpIpXZ1jNurENpF8ey0Na+F8yVgCyFUrMevLfGCBA5beI/BzqvPbXw7UJNNHgQCdWDb1LjoLzLl3cOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DivMMeU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DivMMeU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66BEC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778523633;
	bh=SnCmCXC1P3Q92cKl4D/9r7t8HgXnsG/3Ona7xITCJ4w=;
	h=To:Subject:From:Date:From;
	b=DivMMeU4TjNN3PA7cnz4quCHhDNPU8M0LKMY+yh6ti6rUpV1HtWS5zaFPU64wmPyE
	 fz+u8WIPclyRJJPDVzUoS7Twz300Yd75cvBTbvi5iEpeAfD8k1GXOmSTbsD8xRP80k
	 GZJTgYTqkQOa19Q1MyZFpOSJyZr1NMvpZWspXyjDITGjRny21QkcplegzIQlbLH9D0
	 9sDmWH95MaFM8UP/6Jv71Wbl/vuhSqL1tc8YmmuOfzamUQtbi/trd1snN1XRfqjB2X
	 S6IyY8F7UDte8RyAguwBOQ9KOtPjZvB7ShBc1crAmJm8qYTnIsy5aCANQjrWkI74hv
	 eP3kFycfSAfMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB359CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852363369.28735.4229927416222589523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f89fca352d93c2bbda43f9a327ceeb2b4723c28602269de3134ce0c24507af
Date: Mon, 11 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778523633
