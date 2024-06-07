Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6068429CE1
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717742243; cv=none; b=djMTtNj2XTcXstnszA6H97bB3ribFLPHDdXCHxW9fK0idHr/UZh1BFxEOEO8SS8ad1J4Z9sUsZbSlzaXS/c8w6ZQSFXF4Ep1oyU4XjbsiZTOYaBgtGpN90CEkcl/8NEWCXpP0A5txim50fd648a0R8VUmKtJ0ixx6c+l7SMnZAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717742243; c=relaxed/simple;
	bh=sVl91g17/p3aU2HZ6Ts5UwWd4ML4J1LgJGnaIwlJZ44=;
	h=To:Subject:From:Message-Id:Date; b=AYLwGRp78hjhWdvyr4DL/OY73cAVqE97UJK6BOp8CyulBUJK4dh1yhYOEn4CXTCyVxi4jInTvcxe4SkAjSyMH7Ax3QJR9jQq6No7uxv372wPvrvFRMA5LWDMRnv/Ely9tWgvLz+0RT6qBkdN5a8Px9qafmeLeUYdeiSf+TPZvAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAvCoeaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAvCoeaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFFCC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717742242;
	bh=sVl91g17/p3aU2HZ6Ts5UwWd4ML4J1LgJGnaIwlJZ44=;
	h=To:Subject:From:Date:From;
	b=nAvCoeafKl9IceiJZEYvaaGUVUdl8SirZJH6U++6qGIEjzvTRt44dnVnFuTp6DYQU
	 YPDvoYNBSNh2slnu7AHvpGMzbCKGfWsQAmxu1a9fcSS3lYfm7t0VpQ7d71egNslz/y
	 A6+MZjXGij8A2Onawcf/aMMH4ofdW7p1m1ExYYDsELoFkKGdbczDiNFJZqE9d4uRnx
	 Uxnw8MK4a1A0GtDvKvDst7dAR1itZ9pmgPh0MvLsk017cHXGv2rmuwkWARrrfbWYVP
	 UcQU6UxoDt/2Z1PZAYa8btgUiijs68bOk4NLrICe2Vw5ZfmwZd3FUfD8iVzEixAjvl
	 bNCfLb6zDypuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0418C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774224277.26835.12758191609043786635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa51d8a7e23c30050c03429ee63484ccfe89dbb31c11532ca8b1d50178ea54a
Date: Fri, 07 Jun 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717742242
