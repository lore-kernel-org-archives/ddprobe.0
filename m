Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A8732D0F5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789512634; cv=none; b=FYCJHMUIEWT8Ut/VfYMJ6dM4uskQ1hjBBn/sgPijrw+LG88tScK5lvTX4TUpvAou3FJ50Hkj92nAsIVvIgmtCwTBRoUk5TJZA2O3oXdhobWcmhxTUPD6z9ZiblpZMfFQdgciDYtpOMCyVM0a9LZsaO0ojstFgMFX8Db++spSJSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789512634; c=relaxed/simple;
	bh=MoWUwVlcsFe78Oik+r44u/IrtELjrC3j9yTE9cJ8reA=;
	h=To:Subject:From:Message-Id:Date; b=SF59nHkl4+f9dzG4m33JlUu/IZgWXnkb1LYnaqhJwstlPO6Abd24ScMRhwZf0o6BizKprfvO2yEQD6ZNo5wI1CGQh/uPFAyWVXkws7Qw41fEZ7JGIVYqUtq64CT9mW3Xgi7BiBdg0OBohgsgLw6L/IJXT/UzlsN+9EtH1iwkpiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6CIHD9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6CIHD9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA2DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789512633;
	bh=MoWUwVlcsFe78Oik+r44u/IrtELjrC3j9yTE9cJ8reA=;
	h=To:Subject:From:Date:From;
	b=P6CIHD9Y2kCtVtYtMjtJliqTi9HELf+grxC+3zQxepPdjX1g5NrvltpF7KlRsd5gW
	 7++p5gN89YurE3DOhcbPFd3XtPxm5k1XsBtOr9P2TlHX3X4W3N3GLsFGyv+D96WLgr
	 lmRohFKogOCBVF6J9qR15WCAtC+Fb+1ggXr4vqn8xRL5be1sVxP/l/Iq/oqq0tPNsy
	 Aoo0qDDn4anPOfE4dM7W59Iwn7PaB+arBo40HPg3cTFnpeoWZQdc+09Ia5if68gzk8
	 NnuCKp/4zTxROQfsw5VrKpIXZUc7WxrOMnt5qHMz+rWB9VbQugaUnrxYibpF/tE1uN
	 qyRRUavn5myUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F68C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951263368.17896.6317762741093159078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739d0229cff2d9129526fe5bd6ec8983c95ba803cfbe3de7a695e88498bc721d
Date: Tue, 15 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789512633
