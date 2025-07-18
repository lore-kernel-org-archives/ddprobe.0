Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECF9218EA8
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752827394; cv=none; b=urGx6OzKBZ4SgaJ+zS54FQ0Y8NiU1EFoUHJa2a82AgekyeicPqwPC3NqTCdebEeH0BTiPNbKrrNFw1XRYik3hOEYSLTStiYVoLi9VUchvtZH8AWM1c7tRQNgksYuaMHgmoiL/iLHRmSI9RH7tMuaEXHojlxaxBQVjhf4e6t+GG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752827394; c=relaxed/simple;
	bh=heSveBV7aLunXCPRs7cjK1auNgKFajh3irqgWdeY8Xs=;
	h=To:Subject:From:Message-Id:Date; b=B4p4mfGLdU1QFRb1Ew5Alu8iuzCWao8bp29DqqWPpmttt72rQmMMK6BdGG23NrbYh5AH82OGYcfHVZXlePr+YncSYQp98yj5V9bQp9yWw/Z989DQq8CPJy3wFx2ROEKYfOtgISaaTxJuQcfHwyoITHZqSxXYGw7OZBsmZhdz9l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqo839SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqo839SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CA8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752827393;
	bh=heSveBV7aLunXCPRs7cjK1auNgKFajh3irqgWdeY8Xs=;
	h=To:Subject:From:Date:From;
	b=tqo839SMiBrng3IGaiEy2Zt2A/vmaxtGompn6wlSJO4wSCrUW9YBuU9Ar4kiBAEPl
	 BVSkQnV9U457LRCaTB45zGYv0NYNaeT3J0qr1/BMBacrl7xktTvWpHgHPZrNP/VcJz
	 I2r0oAmY0L1Ql4W9xD+IbEgFoksnH+5gjaRqkw/HSqH2CXdf/AD928M5pUBUk2En7l
	 vCf4bJJDy8vhZa8z/kCs7CxYDXe55XTGn1FlSPG1mwiP+P3RVumuD2JCy1/w5hz73S
	 nbrbEvdpOe09V9dSxihyg8skcCZYfV52uyqOjKwCFRusbUABLj9bX88tH1Y0ESUPIP
	 2p7/a3TCNlNqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07DC83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282739357.10416.9022271663105954231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc1a0101c75377e6c41d41fb52f7000f1cf84951ba1685cd3117ccb7d13d52b
Date: Fri, 18 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752827393
