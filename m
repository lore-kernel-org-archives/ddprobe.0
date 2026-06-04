Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6FE33E351
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780612474; cv=none; b=dfnJ2vzHsqLtXl/eJLb4ufLopFmpa8nAugk79btVnvthP6HnY6QKh7+oGGkt/QsvhlHp6I9CmnHCeoi6i/16yh8IVb/loMMVfkTw8/fLkxRzgI/wSXsd+fyU+BotfZn3B5iTmgErKLso1Bj5X4qtsQtqh2PBDj7KvtCORQpTU7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780612474; c=relaxed/simple;
	bh=3xDQDNOo1wCJrPLOabJ3KahkinF5ENXNfQRJXXeBm90=;
	h=To:Subject:From:Message-Id:Date; b=S++s1D/y5tutC5NwlUR9gEk7xXnn/izFzST9QpUJDed6PXHgNoTy6l1IfBGbk1kkJqyeKpWmerPOf8nm+LOLU1xtzR5R0A3h+iTQewkBVRBcL5qrup4lI/5a3FOpNzMUvct5xOCwjS/p/e8q2FcXySrASZ5nA/V0DDuylzodRWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk2vzW29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk2vzW29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD347C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780612473;
	bh=3xDQDNOo1wCJrPLOabJ3KahkinF5ENXNfQRJXXeBm90=;
	h=To:Subject:From:Date:From;
	b=mk2vzW29twbecMIvO7zQCxc7Nio2gtwPJTN3SgLkhNtzV6dsJKKgNfj/OzAecvfXy
	 z1Lktkte3gImPaSN+eCmx8e9BNU5iVuAOMQFKWIOm8H0Si8WcTDncuupSgFe30psRS
	 vMZ+bje/rJkMmZ8m4oPNL7uOnhemYLowOmN6rrGMMYAHdAlK8MaqP8U+0GcawUHXyZ
	 47XCjODDOXHvuHBh1xaT8A9BseFKDwO/LrRyIJ50h2ZutEfZ2IfyxfX7zhGdPz8q4E
	 k3M7WhRE1KNgdcJBeD6ZRBReeAyPS7u9RAGdz9v4B6oImUin/2fG9baD3ss7/6Jue0
	 Ck5/IBHqWYh4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF013CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061247370.22308.1216425482066831541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45328282ad7cb397c95770af119db6392480ec88e0f76090da8e5df872a73b38
Date: Thu, 04 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780612473
