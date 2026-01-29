Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4E7353EEB
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769652834; cv=none; b=ETgSYdfJdG/ySPn2eiu+RhITFDJWJ98iG0/3oFiYqZfP+LTyhrcXW7rKD+6mR2tlya6nKBQxTmp02UkvKv+zpCSxan/pjYVRqip6vRiSOTPcwotUM9/fDRg+lF2y/p0C5cQTw/gYxjtRyJwCK6IP2XPpH6D6p8nmWXi+dw4iyJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769652834; c=relaxed/simple;
	bh=NJ1TnoPj5mUncqKW3jWJ28TXL9MUgcHY/he2RA6oByE=;
	h=To:Subject:From:Message-Id:Date; b=fbHyboIcOjwOw/3m4mf4LcPzMSkv/vNtk/VkALxgcRSxdBxOoJonEhAQ+lD77aHeq6ND1gMuzAUibO0ew1ovq9TPUzBrql2SKrdMJCrLqRlTPOKc7DJZCuEdL04hhXCl3UUZbwulMx/anDKVgwuQpVRsDT9iRjgAm5cgfJvazag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHP6jjnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHP6jjnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52DCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769652833;
	bh=NJ1TnoPj5mUncqKW3jWJ28TXL9MUgcHY/he2RA6oByE=;
	h=To:Subject:From:Date:From;
	b=qHP6jjndbVQf3iCVLbCEXCOrq5a2PCEtR2TCZXmoLnVEahhiJdV1xTUmMEqIpYYoo
	 BHfpXRAg60BjiraklxS21cXu2EO3wTxwcfAvltwXvk0g1kVeV2g7iGOolqxYGvFDvK
	 h1ZkrfVA8NrW1lcokGLePuoxr5FUtVoGkxjs9OHnQb6YySWS+QvIoUU/ncFy6A/qZ7
	 +IqtNzWP7lGBbo6zPSXVAAeuanXM9RTuXuqC1v4OZ7rFurl89CKdoaxvNvDimxhqsp
	 Garp1V34jIEDa9qF8TCqovQqrYG/5uP03+X1MFbxEzsOwoQ7UJm7OEUytFg4Nz9VWt
	 7KNor+g35yVwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E24D46C16
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965283357.24753.11042900313978005301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af31c604fb6ed51411287bdf56e252a2c30419f45cf5fd781d661f83a37fbf99
Date: Thu, 29 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769652833
