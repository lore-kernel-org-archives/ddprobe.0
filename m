Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B682771E
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785039634; cv=none; b=WHUqz+NP21hSN2fis+vZJa9tSWFatu1tZCjflKAK3LPmVdL0czGWkI3mbCluFBs5emPIA/K/5t8xBUMrQuyGScMkaelnnQ2/MdTg8VdLY2f2ldN2xXwoK8ka9qJLMcBkV4HYYp1DhSHw3bo41D1N+nEdZam1MzA6b++R2CItttM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785039634; c=relaxed/simple;
	bh=EG/hWDOmWDp4o0x953I5n1UQqucv7bbUtRzgPrzkz+I=;
	h=To:Subject:From:Message-Id:Date; b=ORaqxT+1YkuAmLWgJz0AkNJByKhO/4adj96zFGZetGJd1m3Ch/wHMHzul9oWgU7UAe9heKW+aVJM9DllSrMiL1zAVdy7tp9VccNN5nfGaO66a8FnXgYgXGEy/TFr7dyEGUeAMcEETHRnnB8elhVIlZVPcK8ZJdykcON89Kub0pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IluZj0XT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IluZj0XT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CB0C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785039633;
	bh=EG/hWDOmWDp4o0x953I5n1UQqucv7bbUtRzgPrzkz+I=;
	h=To:Subject:From:Date:From;
	b=IluZj0XTvD96TQR/CswoVCqulSMCTIzb035hD1OG1IWoM4cJfTgeZDfqAkYbrUOo1
	 SXdEModlnkSlylFD5nyIIGc10ksdPkS4ROq2/QYNus2eLWmCh/6wR8oL5Uz9AxVeBl
	 H9xVxu4O20bg6rE+gpAzkcICvGWlAe9JexAfn5/A5HKbTwiOYZQhk41XAbTxW7Z7d0
	 5yZZeR9xsilQ+gWuL7ulPaBUoAWwlEijq5+DXzwNS+9AZncJsrrd4UPN1hQMVLaaC8
	 14Hme0I9sXJBbCt3ygXKItfrk3izTLS3JB+0y+/lT4brlO8d5gxmKfBMzrLRNyqibG
	 GdgxeVEchYdmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EDEC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503963369.32608.9762605151610088706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1253febe8f7e396bb51cf493131b156bba64dae81988096c3de423e4177874
Date: Sun, 26 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785039633
