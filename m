Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0637C4218B1
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772832894; cv=none; b=tvIf2PgYYuahMUVpC6gAehKOaKe6FJzWmzld6j/geskn+UwDSrCASz0HhX2U3Z3dY0emh00Ma2RN7GZmlCYx9Wxxj6y1JD/0tDudzIIwkW9c68qH3bL6l3i21q//BI3JGgyCUl5QMEjqkbXR6jnUe33V62z/XQRlr0b68SGmiAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772832894; c=relaxed/simple;
	bh=rNwtmQMZXsj/lEfmOC4Ul8LoTHAZFljn0ySW++9UCt4=;
	h=To:Subject:From:Message-Id:Date; b=mSPT0zcikpWF2upreptRCN8Kv2ksXr7GQ+D9KKruN/QphbBcsiH/KPPdc6bsEsmGGYQi/O01nQd45heEmntaKkdJ6pei53W2VhI99WmtRPDsz5/bvZHEahj8ICy8egIA+HzePJ9GQyfpW+HgI8NvgrTJvx/xd1jdUSsbMnmKlBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ic5CKl3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ic5CKl3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584BC19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772832893;
	bh=rNwtmQMZXsj/lEfmOC4Ul8LoTHAZFljn0ySW++9UCt4=;
	h=To:Subject:From:Date:From;
	b=Ic5CKl3RUyz8DNlaN/IUUycDYnMVrzXsokvaSaCDVFW+zsbThXi8fTXnYQtkn4sdC
	 oNwRw9BJgZ8FcuH7ICpAa9EVL0Z69bETPxutMkamabqh2z20YSZl92An33F7IG7dVh
	 VdRCmK9sciF7W1LUKYhYxQbfg8jxmwM+Ebo9PpaMelADel0+73rFJAvcWea/EOs44Q
	 DgQnU/jxGvrSyFzLNsnnA5EkYdZIOs4rKcU0IuocwJgM0p5N9R6L/6h/PBJqzNA/s2
	 ijeTMJlBuSmqtZN4WW+iSWzn/erzEAa8UoeVa5Q5R3XwZRpQRO4YJHYzqoRU8+42e3
	 OOHvLimklTukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9524AFCC07D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283289360.12989.16576264855802134369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7ff5b2f533e7b733aa83723462a8a6ad4a52d4c0b557000926b78e461a2984
Date: Fri, 06 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772832893
