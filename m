Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626EA33556D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792291234; cv=none; b=eJJXk26WRB+wxQMO0qQ6u12JN/uJTr21lNeXfE5z9woRQXJSLjUwPPnx0h34tkQxgHxmdmQ30xEUV2atl6KzxAyxo+TeoLEgitz6DVnHvB2i+XFLFfIQyOG8362oAjmVHXJmttcqdQqLd51aJsCIthcy4juQfmN5VE/Nn49TE/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792291234; c=relaxed/simple;
	bh=pm1HtyyrQ36T0KHsufYy1+jqh/oNTQPEyn3bPtTJuG4=;
	h=To:Subject:From:Message-Id:Date; b=eKzSjPaBcGK0TteJ5LkJtfcjPsL2//b21Zm+dbvvxtEVF2BN3NJzddY50v9RetXU4pdHWXoFMdczeXTZ9q43PNE/Fv2LHtgEy0s/cHASVir0+6+aCNMOJb3mh3PjR8S6gYghma2x+mlyM6l510LmeMc8k61Dr3TICZ1Ic0hqgY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3EMQXM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3EMQXM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3EAC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792291233;
	bh=pm1HtyyrQ36T0KHsufYy1+jqh/oNTQPEyn3bPtTJuG4=;
	h=To:Subject:From:Date:From;
	b=Z3EMQXM1vCQ/3dXlUuay9zbPWs1py7qgGQ/l89sraKnEfete2a5cJtp/TSaxUIH4f
	 n0e7kry+FB8GTg0FkiZMF3dbw5x8iKguXkNCosURKicBED7TK1oxqFId9n9nHsXnDB
	 O5NjXI2rG2154uG1B2RjqJ+gdeI2jYIPkLQtcXhQTw6bs8/xDwHmguEmwFJsQHfm4o
	 YkbQAzBlkwVCf0qHP4qJaF0UKLBUriMzOKo+pkmnQNiCM8M7zkkiNt/DYtRsL2F/go
	 ip+bmXOhHKtqH670o6lkJEvzkaYxvyDSDubLaqxFgEazYRY5ulb7p2nzjqL9qaSJh5
	 7Ay/s++IzRAng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81EFCCF2C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229123372.4160.15137744656052963966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f5b810b30b3b7be7cb75921f75e8153f289b5835594e48a3b9f0c21beda4bec
Date: Sun, 18 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792291233
