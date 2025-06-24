Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3FA3074AB
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750780195; cv=none; b=tmmvuijdjyk9bteYGO9vZc5Hsq7lzPXLD6cX29CBzWXXWXsfnYWuk+/CiAkSXzpI/MkzZD3wyjNhbv5bdg5Wz9C/5d6wYyjsezxlm6D4em3XesyEjMwSnJFiz3Mx+nJslYew0ouqXXgWyFVRMfcfU/kRwWOvmQZ08R6eqtLjpdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750780195; c=relaxed/simple;
	bh=V4Yk06gqTmGpKRrSvxVnLmvI+oEsZfcEeWq2sLv9yis=;
	h=To:Subject:From:Message-Id:Date; b=i0T35bNc4xIiBOHM2DPY6540Ypv4GJv7KxQZeI6rf5Vq4hkZIrCHqR/N/JISJ5/05b2XXrv55lYeu5jOL0QKDela6P+c8WIf5okBZScjBS/I9bjD4NoCmK4CcwMwA989vIEtr8w0+JtBeaFMxMI97p0Ymf1KdEYgL0sUhu9yYi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaIBbzGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaIBbzGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14AFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750780193;
	bh=V4Yk06gqTmGpKRrSvxVnLmvI+oEsZfcEeWq2sLv9yis=;
	h=To:Subject:From:Date:From;
	b=gaIBbzGot6RT0tqRP3hwViU3vQ1lVGuiFaAiBzWJk8bwXCdz6f8EA3xxumErGVDty
	 HXFRZ6dNVpKOFFREogV1yAyK4C5427VvswuRyiVGfIAelC5upzDqH5BAwoRpsIHuHb
	 3hhdOHj1Hzn2U8iBO/76Gi2jnOZmqfmcIkaJd9DMj4te8kC6cPoFNOoKVArONyVblY
	 uiMwA8Q4HbJRQlDWFnHBRjXZdfQRUOGCi3exBtiLYdOaEL0cWQMn/C8RY9/qBI++Ay
	 1c2X07ig4rwyfcykThwBzbo8uqCpEuRUG2dodv+EvTXAn4QLPBD5SJYprdOwiuLjFb
	 jTzrHoXhF6/9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB6C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078019357.5051.6162552593674037094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d238a55bd1e7a43b70357b1631744d7944e2f5013e0f44a8a8e9bea8bd0786a
Date: Tue, 24 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750780193
