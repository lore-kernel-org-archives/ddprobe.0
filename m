Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A418121F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727127354; cv=none; b=M5fjwJ8UmE8cSh9xKrEfqMJHTtdDPF4gAZGnKreeyeP/fjY20Yg8C14G3mc7pe4oYs/OUAKIEDdSnO9+tIDXn3TqGKze6DC3zW+PKAOcmE3KGOTec+M+qwrLCgfphSg4qsBoGSMkjxwTihq9zbW4E06JYkJjjns+x8kJftTZm2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727127354; c=relaxed/simple;
	bh=bbWV9mOjiwFJ62RIhd2V108aRSDP1w2Zh15pxRlq78U=;
	h=To:Subject:From:Message-Id:Date; b=qBK9n8VWBgzBLQtR22RSNzy1EHOTSIJaf1Ev6sM63D5MINQeo1LqcoUo/1JALJYfY4Uy4Bbhm77VUkZMf8AU7VFN2+vLNm9jjiqWJ+Pm20Y98vfeUCzipiVYDuygZC+5jIYsJJLkHShBgu8JIXIsGRtTIjBx3DGexRI4Hfk5AQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMf/50gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMf/50gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9E7C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727127353;
	bh=bbWV9mOjiwFJ62RIhd2V108aRSDP1w2Zh15pxRlq78U=;
	h=To:Subject:From:Date:From;
	b=tMf/50gwg25v3DBrVR9ld/YSDr8F1r3o5+CObOmwHGhFnrWKi9bjfGqBmhxTImXsI
	 86vvAy11uJzcmHODqo+mVKLWuYbpaj/KDN18MVVGmnibtDetZJzjlY9BuVEWSKjLvH
	 QzAFpcmL8VyNs/ZoAjCXiIPF8gwR9jF3PDp9GWnD0NT3gdxJSTAVhxizyP6OxmpvhM
	 qTX7wWT6U1j3QZNi9nxp5DmY0vY01vPUhrEGeUx52eWqwHuMGcYjWcCghoEkDzvip6
	 n4xx1T9UYyGeqt2tU/w8iYIIU+pJonyTpVRt0NKLQsQhSCFhql/On3TY5xgGSJoE1L
	 obEmiGBwryNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2C9CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712735362.6798.17601648313303892420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5052b3e2444714ddcd72f18c141cc2f779178e53f48a0fcc49ff8e2c7bfe0fab
Date: Mon, 23 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727127353
