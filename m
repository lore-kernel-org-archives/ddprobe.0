Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C76D134A9
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715529743; cv=none; b=rJ9K/hPvfLb+iMxdGSOoLuciDcJR53BwX8jMkBPkzNammP5448/C0ytskgOEWv034FORMWg4nGTxYrM+agVOMOflMQ0yKM47R9ugoEaFI/czheNrlxVVkActVsZcr5EdfZxF6liZNeXJkstCJ2geelkO+blnHZQDIdYWSVF7tfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715529743; c=relaxed/simple;
	bh=lx1xf/WHh3lLdCGTa6kQWcNlRuYPH8PAeq/3h42xaGU=;
	h=To:Subject:From:Message-Id:Date; b=gW6JqF8ULipGubGOKecl7NX9l5RBU9z/b/hvBPJfDgIQ07BGJj+WSsPsdafrHDR9Z/F0a7DTnTisnvrYbgZImUMGp145hfahOTjfhUb1l04/Rhg0t0QH3W4DkcTa1mwBV/ZnwUW3NLc1yDsrCm7Qkwu6jQ/BdDIbSAAJWS68MXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eii45rVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eii45rVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78CBC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715529742;
	bh=lx1xf/WHh3lLdCGTa6kQWcNlRuYPH8PAeq/3h42xaGU=;
	h=To:Subject:From:Date:From;
	b=eii45rVr/JtWXOSK6sHMaEXktxGMzY4OWiIEvkFX5j4tGbmjBY/HST/2NXPyDkKrd
	 MQ7K3J0q83Sfu2gcfcAvdnxZ7jwEYMwHPBwwKk1weBRtHoBOnmlTp/XX02ZXhu2heN
	 aNN+RphowI9buppI4LqPge5JVc1gv1sV79RDpDmiVHcpsPTculxoixXF/AGfsB9x7E
	 +4vX/lf8+RmWMFU9SgrohDhzWWSZfGtjdqfgOEvjUray1keEwROUFAl+jNvBrKtVok
	 zDA/tA+MTIgOaadSN5uQo4REosGhf0EW1+WoPTVmqHwjQ6H8bIgqqhhjLCDu7BhCvQ
	 D52ClUIQJiDuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14D1C25B75
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552974282.25291.1237541420942066487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2349f5129cc2fbf0b527d62314214517a04a389bdda8c68548e4527095905c6c
Date: Sun, 12 May 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715529742
