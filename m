Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FECA1A9F89
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756006794; cv=none; b=QgTnE01DZyVf5R+8HbWx33Q2mzynuaWKlcxyVTxJCi3/+E7pHiVdb96Axye9QdeYGDettFBmWLhbs5dmhM38pjiOpy+Yl2Ld5QvER20Eh+L9WYbYCrhReCQ5uQZ26KdGby2S65ydazBkK9oCniHyneTDhIBXkf5YofjMkM+NOt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756006794; c=relaxed/simple;
	bh=F6aCy6s9dz/xJ70L1IY6MY0+KXIOps+9GxoUX1h44UQ=;
	h=To:Subject:From:Message-Id:Date; b=tOeaQOogCfwzN91a/ZrBPPrzMJUwQW2B4bfCjEo9R/b4yiYKyWk0hE+QJYfPizYLSNSXT9F2dnIm9jMRIbzVtk8Sr5DJPQ1dLE9ezeb3QHAqZOmufZm6iQuyeJJ72TB/Bx4H/7mmIZrkJnB4WW6zIburPuU+VMQVEPQnnz6nidU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntF5AsXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntF5AsXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756006793;
	bh=F6aCy6s9dz/xJ70L1IY6MY0+KXIOps+9GxoUX1h44UQ=;
	h=To:Subject:From:Date:From;
	b=ntF5AsXbfuDkcfJUKFWKCyTLwtY2hw29OoUbtxEeralLmpl76AWElHHNhfv3Hqvll
	 UXGVB2HaSKJrnTKpdekJSe5TKMqw3maEzX+MNWyrZxXNcXGujTNxF5b1+PHmYZpqhz
	 6JxDIbFPe9XNz090dQQsnqBolG2FGoPQ0uRpGB3GFL80NOF+kTZxpJiolYcTXIOI1p
	 JwAoaaUGYTprxsF9hcuN+pcVLdGusCzPpBYRkIkivaOlYIfkb8CTi3h7baCsLk27G4
	 MJP6qLEgFZ2eeSCQSD3+2hpoiZEu7NUmCi43voR0pYFUi5MdOMfl+hbvbkc/dsQDRl
	 7B7RTKCtqTMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71ECA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600679357.3715.7100963224213388384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c305889ade346f73fdcc477d64938d459ba2171d9e75fbc67c45f895a5a6e12
Date: Sun, 24 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756006793
