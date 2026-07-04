Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E923504B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783180114; cv=none; b=QjeQeXOvlP2eL+ybcTl1ReStuSnu5EwArsPwD+Ur0XR5XjpSbLSHEApX4Q4rCa+LB1zZAOtN5v9WOWbWqkbiGuWMqidv9XZPYY3DoqR8L/Pq4GF/iu1IlOPHcvwDeaBDmm5bm/J1VfOBT1okZ6XKGdHyhBaxgK3pWCCyxtQIR4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783180114; c=relaxed/simple;
	bh=2rEVTJJYYZh6l5ieqqePk6mdFk5dA1B0mXAYRljZFDM=;
	h=To:Subject:From:Message-Id:Date; b=VlpZo5SUfjTXsto+S6TbSZD93lzTiSoxYuZaKvgc42r18N5kGg+xwqkUqrYOzKMna2jz/VSDl1SHJOiCNHtuVOn8ub3zA2APKwBzdAoJEGplut8+i0sZB/btHeBIwVqKTaDYfRKtlTvPoM/Q48YfhaAtemBKSBryrwFo7plA8Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3kuEblM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3kuEblM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91D3C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783180113;
	bh=2rEVTJJYYZh6l5ieqqePk6mdFk5dA1B0mXAYRljZFDM=;
	h=To:Subject:From:Date:From;
	b=G3kuEblM395vdx4BvJL6uq9HdYbK/EuZyn/QNS0u/2SmFOxdeLzhoVI9HQpYgZrxl
	 ycj9Vn99czJoIypJ6UQfNSqCaS0H6gPcX5cAN0bG0fZWYUERSPWtIkn0g2wDNmebc6
	 ya2xkvsuxDcB6KjRGmFmXd84Kj0yjMrJvl5mUXwMuFYriVULxC8C5ViPeNWIVDktm8
	 tLjzf6ZaL/6BOmA1FeG9rxRjs6lalRnom8ZOU2F+CvSDRvvy5CQnMkUGtQVDkb94U7
	 pC9daZg8Nv+PC3MzpaHH92BZ4u2n0Y+lPHoh/kU9C1iZvHzo1HVjxhoygwhAzZ7mfE
	 G+7MCcws57R/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED8C44500
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318011368.8345.4174573017668509669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4484c7599a1dcbd98339f0c676af72eb9c264f3891141bfd00921555a4f5d784
Date: Sat, 04 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783180113
