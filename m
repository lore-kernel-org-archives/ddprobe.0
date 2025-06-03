Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE242C3263
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748947194; cv=none; b=rRX8+4Hp+FP4AMhpzFn/OTSWTUUxa2JZHCRsT5kkuSrkOWSDE+ZCI9w5M1Hy2gdn67ObOnbBHDY9OobasESUd6VNCxjrzYYkr5XXhCjKIB7BHLMtpu0NIkb4B6LIpRKS7ahCPnW28u7Uxnk3LHczFIXwOP3yxsjhqDb5BDBE4jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748947194; c=relaxed/simple;
	bh=0dIdiz/1Jp7KKIrSfW6qT47Cvjhlc5RRXu0cNP9nXk8=;
	h=To:Subject:From:Message-Id:Date; b=lq+78jTxDco5ljix9EY/evD5PIb0Nevg16nNTN7i5BmzCgb5rTitpswFsTmcGVzKQvstzphnb0GMuPnL6hF0jGHrR+7kb3SW6H5Kzqw3PgY2NzRh6iHenk0MFLIvDj61kCdNgh/VfRaWhWigUH7Ioec3RfAOZb0rLmidh0uOpjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZzLIJtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZzLIJtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748947193;
	bh=0dIdiz/1Jp7KKIrSfW6qT47Cvjhlc5RRXu0cNP9nXk8=;
	h=To:Subject:From:Date:From;
	b=MZzLIJtqrUBbwV4eZa5wxqoMC10qbR80zrmUj2u67958TJ5QNfseXI+484tlCbaRe
	 ImZmRGWXPeuv3nzF9Cf2/1ZrOekobXRX8VdiJgOsMMpjk4XKaQqLygUEohLK0p57sK
	 cJPhYjGFkUUz+1ua15jz4o/jfUTk7f5a81Iv0Aa7Rmsa/zqpedwXqRLSQT/QgmJq99
	 2X9A+34r1pXV4FiFreTtYPdV9Yc5Evfku87fwLS+VQU4hf5RF/WeW1o2E3kzz0vqpU
	 BAQgXhPdU7osSGWdDJCEeu2J/D4LOfpUB1iGLa6Q3srdB+3SZY+qzuTLJ2wzJusCrD
	 jSbkhAjJjTuCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94959C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894719357.7639.3309548917666109724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9209e8f790656f45fef7da44e99407107dc6eaee12bc8d0c1b80b0d72c0f494
Date: Tue, 03 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748947193
