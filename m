Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D96F2C237E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784445514; cv=none; b=oF1fr2iR3j4e7NEOPUxlQ2q8mzDnU2OoUuPoaqrI3iVYLnjLZ8ExxVnga0yX4oiO2tBS5A6jDbz9yg7vx0Mt0eX5PdiTbk/pWhs7nSO/jTMsPAVTTgIwer9XGWgxmekoaxwiL0LtY40LEDYhdAEH7yJP86iaCeJXG6fLu6DWYbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784445514; c=relaxed/simple;
	bh=ckOrfG2t78EMk0JDtQPj9yxGE9C78rrRqprYYsKxqDk=;
	h=To:Subject:From:Message-Id:Date; b=bb8vWe9t5ighB8g0oqibpvnc8QxSmGRnb4HxtZ+zzZ9Pu6YDWCBzREQYtfrwlNuIsr9l1v22HasPvcoCQKV8F7evu7eI76WStcQS5IMnGB26WEwN4qCv8YwFVdV5W9AioOw63gq6x3ITrO//9yx/kDn5pMBM0A8MjBJhlkbisgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuQ0g6fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuQ0g6fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD89C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784445513;
	bh=ckOrfG2t78EMk0JDtQPj9yxGE9C78rrRqprYYsKxqDk=;
	h=To:Subject:From:Date:From;
	b=MuQ0g6fwrcLadqv6Eo/5ckIb+s4Jt1VlEn5MPy3vFZzPPRpsvnNpcL8de9s5k27fU
	 Ij+SYxPe4fIkvZa0d8g4jBME2P4XUCBTxD4Xv8wT5Y2LLVJ+dnrVtg+K4RXCX1uIT5
	 X2fkIYKD72RolWnnXLAPvezBQgfza91bm1E8Othx0tyOlMTnHc76uunwx8UHqkvK9U
	 8n1hlXUj9zzlrIhzy2assg1ln8RE6+jkWNfVOLXhbHG7DhEfmLF6iIaXa5j44HsrUn
	 mcAUEVCtUPvFbR0ncCaD6xO6rZXfkZlwMjW3JwRxpS7mCaBGwvG4A9jbK4sHv7DUQO
	 +40VF0C80k23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8962C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444551368.21830.10474799355249556394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ff41144c27e60ab3761d8ae02e3d32955485ef28fcc59afb76edc3810c1126
Date: Sun, 19 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784445513
