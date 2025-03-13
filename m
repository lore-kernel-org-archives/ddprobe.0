Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3147845948
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741900134; cv=none; b=ZTn18op+U9ttkuwNeHa5GjnryC5Q+wuFtY4TOF0j9xNnxXWuWZEOtC5EwP6CqMpUcXuF+9j0XnJlFnba/1fRAtLUnjKx5OlKqFeL+2mupm25siQu6eQbVvfDewJEJizxH13+U2rtKD8+NLuFv4QSPjrxubpVSIWAoMWOU2J1nJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741900134; c=relaxed/simple;
	bh=PT1t3TYmaCKEW7RQZLJP6RQrEI50rR8A0o8X/oAuMBs=;
	h=To:Subject:From:Message-Id:Date; b=k4yusUF1GPLjfPUBGhJAvRnAE83NH8G/GDSor/tqyh7VjoT+CRUtrIN4Ipmv9XhsODaXUI8nRjDkGn1jAKQLXZm4F5sgixzthLn+nOqIujRUnmHYfx0cGy5lzl6QD0gLxrV2YFXXtWj12j5/PvTcRcet97MOcK0UpwJ/SlOcw/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amNkqGct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amNkqGct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741900133;
	bh=PT1t3TYmaCKEW7RQZLJP6RQrEI50rR8A0o8X/oAuMBs=;
	h=To:Subject:From:Date:From;
	b=amNkqGctH9VtCKsE4RXhJkgrAgsc3nFf9SNB7qTV8eNy/xdh3Q5xh96hU9V9QRzzb
	 dTJJrHEA5IKHGfaf5Cblh9k8BHJFZf8+Xt478U8/YVgNnXkh6+TlvnwHrERTVkexxh
	 MVQFtpdCeYPP+dedXn9beiEOl6aB0M0CNaNOwz5H6ffgnNWX/K61+LIbqaWSUgioe/
	 FYfY+nWvJjpJz8z8meNEPS1ACOqyqosXtf0zKeUpNc64s39bdBAta2iXdNmnT9P9KG
	 I5y6vS5EdNmUN4CZwY1HC83NQIzW7+Tf27yFhCbP4I/7OlStW/tPCiX1nBAbF1+fLg
	 y5dkmRYglSepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525DC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190013360.1180.7064365301035073602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f5a0d3704d476e93f8bc825c78d717ca3b2a176a14998c74f639d43555877b
Date: Thu, 13 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741900133
