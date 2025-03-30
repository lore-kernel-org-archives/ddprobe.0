Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283ED1C5D7B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743364794; cv=none; b=NP4Kbu7Ow9JAryYaT7fKdeVnl9X5DrUehQ4RkKbKoJzg3zkiBrGwiuJOzs8smpkMgJNMtlC9xkiZM9BX0dNAJzpr0iY3J3AuAVgzw8Uzm3jcx2o6lIXJBMJnYLCFVmQKDVNV5NyyqS0LRLiLMEzb1nTnn7fxyBFpdfq++RepkQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743364794; c=relaxed/simple;
	bh=YGgl8Z/veljFr8cqo04VJzRViC7hnNEC4N9VDnzwRDE=;
	h=To:Subject:From:Message-Id:Date; b=Me6St8Bk1up/71Zogw+bZNdrgGam6Qf5bVn/mjk3wPK7FyunKbcwxh10jerLT7xRKFEFC3FE/e+8FXaSmJfnCyvclhKgUvyzAQoDTC64Sbi9i2ORYl4R+eCSMyIX4G3oJ/+zXnZjO5Cr7RGM3RF+SuG2JiMXWg9+BIDGVEV1GHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLohaAFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLohaAFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A3C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743364793;
	bh=YGgl8Z/veljFr8cqo04VJzRViC7hnNEC4N9VDnzwRDE=;
	h=To:Subject:From:Date:From;
	b=fLohaAFB/b3lXHrIuchgHMXQbBU9S0FzeTGAaF8Oq0+keCYaTuDfRGXmcv9hSMR8D
	 hMCNAKFN9mzbDWGeoF9GM6DO9iiBHgnw47Odwo8OJsbgxuX+M488sjy+nsYS9+2Q6K
	 +My6g6fC9v/Qnk1jzTnnr7CvHSomd9FaBFrMLLw99laO2WOThGhu2DY7h+KCXC9wco
	 THPgyWFINN0By8PINPjCH23KPp4ArE7AOdMBfYaBuflK6Np8jnpcUK4BqaLvcWuGYq
	 0meXrKkdEdkYKepKXRzqFZdUjuJ4fyV482dir6waV3d6gzwr1saMV6kQSnSBlfg5EM
	 zcsRAV0yjrn1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B13C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336479359.7389.17889790325701147977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956a81abeaf6b2262808330d38ee9b3c5e0c55398d2b54f5bfab663b4e7b4a34
Date: Sun, 30 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743364793
