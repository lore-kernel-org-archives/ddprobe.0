Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1764D2C3254
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769258634; cv=none; b=p60/bSaqf8SDcgJkZVK8LmP7ZsofeIzn2Z1LIS8JBk3DuUomZmwBW6gGA6Tkl5dxEfxIH1+UA0mKGuWlVIp3LELAXvCyJVJdeDGz0YYUdsuTaUlDcgR5UcLst6NKI/DJC07hyruzhFT+SPUA2y/w6oPMVHKF3rnxZ/xBODlxzVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769258634; c=relaxed/simple;
	bh=7jX4JUrGvdEnpFPLOhtrtiJg9K/MTqwdItKAbVPlFfo=;
	h=To:Subject:From:Message-Id:Date; b=faftye+BWYr+X9Yq2V7Owg1gqRZUXdsKjErV2A9Yp930Eyg6FjeD648vyCwAkY6dTVTYvnFF6HQEUjBvvxji6tRwKr+724opYA5XcMRI/iizKq4MSYivFwmWnHZchBQM2kKLvmyyoGVqKYvtv3c+DAbEE7jwphYnvmhR3FaBbZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnVKa70M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnVKa70M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769258633;
	bh=7jX4JUrGvdEnpFPLOhtrtiJg9K/MTqwdItKAbVPlFfo=;
	h=To:Subject:From:Date:From;
	b=KnVKa70MHLXO1IYn9wgZocDIZ3K1kl10rAOUuOYe4J8udNmZENbACQ8p/B1c7SOe+
	 U5HPK+XqRs1mYvioT9clkjVqGreiU2WGbAaf0ALPuye4MXOfBKsrVul2TSO7jP+iWn
	 qv1B4iCy7lrxx+S/8VYLLol2UkkIU3Bm6AN7PjROfBk0QRXG5IRwf/2J5Dw5aKlnBL
	 bK+u6+ZHLV++zmxlX1nlQEQ/6fH7c5ChRNCT81xkxZOu2O4XpdQq4oXFJmdcYkvtWJ
	 xWArrsVS/Hme1zvEdUeEQZYJRCyADGXj8SWA3W45WBbTItzNW2ANqxUOFIOg+82P0b
	 pQFgMLej6Aqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550BD715E5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925863357.2026.13181202143260960889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7854fbf1f6e41a01a2ab5ff6ce607178de75109c251b1b068a48dc99be7ea7ee
Date: Sat, 24 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769258633
