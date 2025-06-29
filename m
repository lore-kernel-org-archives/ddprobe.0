Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2AB1ACEA6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751227195; cv=none; b=aXNaobZPw5urPUKALyKibKT9FUklAncBDNnzoeu6gXOXfT9ICcqzgY6gkZvTwyPCj2l051iiaAcv2rxCYnOaOqUhPnav1ipI7dq/wNmdQF68OQ1RWIJM+iC09SXvn7Sdjpu82+v1oafY6vtihaWjDkAdPeuYOJ+bDgKnxMIOn+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751227195; c=relaxed/simple;
	bh=m9Pg9PT9DXhE7bm7ZNvTun8fveu6BkBcJ0Wm+qCj1+A=;
	h=To:Subject:From:Message-Id:Date; b=S/XHNDd7Xn0YqA6xvHPx2MsCLFBCWzsVz7BxIFm+qLNR0UqtlbR7i4AWIVeaX4fbdc2pPdNt79mZa1fdUy02B8z5j7jpEuul2beRo+M0VHUXBWU6F6fsqPcTA4KVun+hsKhf9VY++E3WStz3y1hyq278US7zlfiEQKVtycSwgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM5qQgGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM5qQgGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751227193;
	bh=m9Pg9PT9DXhE7bm7ZNvTun8fveu6BkBcJ0Wm+qCj1+A=;
	h=To:Subject:From:Date:From;
	b=QM5qQgGNZBfkm7lPzYoPjNytS/l+3Fy4P45BNkmNMmM12z4N2aaOaEDZklLQsgbPD
	 0z6IjwrSuVxpYkfR/d9oSESJxrQvX1paNIPJ6kVBCH5WRGK1e/LhgVT+jLM0IyhXg3
	 kr/ZUieXuXk5BGMM0IL4vWt+3By62bF/bLFt9QY+UTeVTKRXbHdI8yXjqrp8JLU+vS
	 4tIh1XOZGm652a6sGJg+dpePy/6zo0JxY4GXEwz45rPXWq4u1/FArjNtg3ChuvQMnu
	 SMdQDaiDtIVFdMIGrVrpFlwHhwJDfJKNzfEld6hcsAF2ABHpGbntxFyeg5QByMG+Sk
	 TL1qcdcaOsQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23CC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122719357.17860.18091105932426115183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85948fb7971cfa44a15c7a1a6b29d446b253c19260709714d9b9ea4f74dcdf6a
Date: Sun, 29 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751227193
