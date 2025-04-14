Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEEB1C861C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744672794; cv=none; b=VrBwm7tGC2FH/cfpf3q41k4S5t+l2Mn/wEmIcaVgmipMThhY88mUQmjPVlMtMrKNrcgKVlx3XnHwBugFmZaTaO7B4YXnGSHpkjtkPDsW7y0TlPJFoaifZrb2e0jL11D4kOnopPv7gw0dZKfnGZED/1yI47UAXZLgZyTDeay0R+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744672794; c=relaxed/simple;
	bh=wjijKoXrrZOyICNybmoUgyR4NV3q2MIC3JZo7PcocZA=;
	h=To:Subject:From:Message-Id:Date; b=lstUW5jojJD3cJm271/taIZIsqsAPdnA2+UGGID1aOl2WluBBQ/dAhaXEvRQnChdxznpCqGgWWAbWg054Rbn1TniaSfKU9XeXPnyx+2T89r02EIP/Kfv/PnTmUt+HSzqEMQ0O421xVdYtdwPJMdxN9/+W87iD6lcYqpmpgOGmgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJWptQsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJWptQsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A357CC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744672793;
	bh=wjijKoXrrZOyICNybmoUgyR4NV3q2MIC3JZo7PcocZA=;
	h=To:Subject:From:Date:From;
	b=AJWptQsC4yLqcPj6kRo4a2AZGerElxAK1cpA3rTNi3lPB5oabHbyszaXXiO7IZXoF
	 WNxZogrAjgYY+M5FAPylRnXTbZk1oVI4GFjM5xU4JSyvDvOLcLmNYzTF3fZrTRzgBi
	 d04FcVj4OnMMKLiluiiCr+aPJj49n3TKth0x3h8kz7knIjBFrvDNdnZ7MXWo3IiooM
	 v8FbfVixFQXVjBYFY/zpThtVCeJtlDJ/kdIglk1hAUEBQ46jAVvlXBd1k3BvxuTpo3
	 03VgfVwojRF75tLuqtgLAByfIkke0e2n5NW9j5hdnBUt8o1fv3JCk/8l8Kkakfr5UC
	 mr+UyVZ+85etA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90965C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467279358.1436.13097106391000781902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfddc5fdee2715fecc8ee7cba578ff6f05664aa90b8213bd3ba298c8a7b03f3
Date: Mon, 14 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744672793
