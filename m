Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E17A3E9F9E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792087834; cv=none; b=cOfqW9t2FrC7+VYnNfDGIdZQec1PHbcgD2odPpmfVtTOYx0Iv7KJ1oGydacTKbY9XG25BB6SeAHNOMVMIDdcKZv+HUPOGscrQ7bi0Uv0qZP3Va6Nee9aAxlXdc6TPky7xijuI4e8rDy2NDupPO5paGUiTW8del3VxAYAh1AKOHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792087834; c=relaxed/simple;
	bh=mCB2eprylsCbLbxLMib3pRfD6LT51nHWGcguwSK+yXU=;
	h=To:Subject:From:Message-Id:Date; b=adjF9Px+oOyt199qxfgEQ2yU6AQms23ZE4A80r2Ltbrd7xZANwnJHBjyo3Ynj412kPgUhCk5KfDepqoNUfvybIdg+UogyZIYcsE2yrXVmNGdp67q2bKllAKKBlX8suMGskwJ78hFkkTC3mxd6EgMMp1U2fq7qQylIfD2kYqxtGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8qgK7Pg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8qgK7Pg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5351C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792087833;
	bh=mCB2eprylsCbLbxLMib3pRfD6LT51nHWGcguwSK+yXU=;
	h=To:Subject:From:Date:From;
	b=B8qgK7PgBQ0PGrc1IiTlias5iSMEkkHI8fL1W5Q7eAZyLSsFMBqFu81N048oFsFkE
	 dvkRgzNaCEl3B2nC5GGZ/XKdYdIEB25xssnZfzIJbMY/vjLG2ymo00ce0Wpjy3PXLH
	 cCjs0upNF3sYcsAKWdofElECZRQfZQlf+fqyZYmrG9clKbXGvkeiIIQteQnAKvpvu6
	 nkaMsOqnpMejZsv5dbUAr/WfZ5dgBiOQbTA+G9lZ0l1BtewawDoZM6OFWIDhX4AIFj
	 8ty09rqgaWmX8XX3b/Mv/nfGDxoDisxGFbr7mJIc3UmIIVBtU9MhJoShENKpCZjLgm
	 2l7lg7/Zs8CPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D6AC2D0A6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208783369.4334.16512420474568879576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30dd96d5643a215cf61ef9ecc177f3a613a8b352d7aecfba32d965c6e496fa6
Date: Thu, 15 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792087833
