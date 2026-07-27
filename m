Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE143BCD20
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785123034; cv=none; b=o/6h2Q1e1YKrnjc762ZApJWpSHbRZKOIvCd9iK1Oq7pb0bC9Gk6jkHc8UzPGjz4+iZXB4zUSjYAI765/c7mBq5lGkVxJ4bSlUli0yvL6A9jpO55wZgzJIOxNkyQgJhbWURbIThb495lRATrRc2sTccAhrBB+aFxUl2ZgZuKMJDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785123034; c=relaxed/simple;
	bh=CIF69Q5Ld2YgSsrPKV9LMeE5gh5cCfU8IqMRYW5/7yE=;
	h=To:Subject:From:Message-Id:Date; b=Zgl8xFkRDcPeJrJFzTPmk9Xm6I6eU5OwlF06iGiYAPm3i6L55GtHYBonJKslo8wsl0/tU0JXyY0jW8psR5+6uQwAW2uqOhY9lAAd3ArKeN5flmuqLzzVSCzPrj+YjoFYT3FjpICSGIL9jMvXPcCeGUna89hKBNFcrG3tCXGM2rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJKbC3XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJKbC3XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB865C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785123033;
	bh=CIF69Q5Ld2YgSsrPKV9LMeE5gh5cCfU8IqMRYW5/7yE=;
	h=To:Subject:From:Date:From;
	b=NJKbC3XMjiVT7JIIoUs0TP+O1m307X8J/+E+Vace8qSlWVhSrENEginEw8YvIMwYu
	 LiUL1zbRuFC9KVMMxd5kcJMy8UOV4tO+vjOrUHQaZIt6Q8EtZoCGkHaSRdMLhoFWpE
	 +R1i5zGSaMZPMNLDEKxJB9+Uwq9JQJkIAB3Lhd/F0CNsCcdGCgfzPRMn5MDfGefKdm
	 veyZYYc/EXNGhDFJvYSj07gvzR1KWl4soPPcI9RZoi/WMMTTjWhRREDy06lRviEWrO
	 CgKsQr5KhGw79q74Mt+jnvtc5LeSPauiIyC8/uxhor4Snk1PsfDXxfV8lBbAF7T+l9
	 //go6Abgtwetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95EEC53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512303368.26984.18011123560842783253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d3e993a52ff2781f370b886633b70d1c40782d07010d475d8d3208f48ab7bf
Date: Mon, 27 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785123033
