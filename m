Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E881F4C8E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765265574; cv=none; b=bH7fjsFeLqmM8onjJZqxnFuTcpZ52rRMfznstHO9pQWjCOPI4SFvuggu6LbvWMmWZvXffgl0KR5Gkvii/VT8KIMI8sIy4httrhD3hkWVsfrp7cbMBOy8UaI9MwfLWCpm+bKpBB1wL4v6p3DnfipaL82pAjqRWc07yOcFMg7qhy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765265574; c=relaxed/simple;
	bh=s+z1m8mmXPMk/j4TPQQ4XnZKJQZYZjQBRCq/kDv+QMw=;
	h=To:Subject:From:Message-Id:Date; b=cpBvsx+9I3Qyna5jHJpb/zs5s/GEYIMdBWT+7JzD/YY7Y7x/YSBq5650FWh0InD/EIE7HBBkN44B2mgo0AudTo/w0uU3NuADnsahuxA3pxXIO3seqHeYj2ACKszQunWrcCIqs1RZl0h8+jMjOJjiwCu4pn1NyIRWijo6+XDJcLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9KJCyvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9KJCyvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD604C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765265573;
	bh=s+z1m8mmXPMk/j4TPQQ4XnZKJQZYZjQBRCq/kDv+QMw=;
	h=To:Subject:From:Date:From;
	b=p9KJCyvrECY6oFJPyLY/fZZqFuhAWF1iYIBm2ePYRg71QffiqhXzXhFE1yv6F7nrI
	 bbYOc7DOhwIrO7uB4uztmNLJenNHqozWC3YSoi6r28imAF+ddRchiRdvbqKwonCDe+
	 4Y2bYpbzIBkVsSlP8MOmt6ox/t0VGWpUSO+XCD8R8Axe7CrSOfd1oZl8QNL4Nf0Ahr
	 ywwYBBV8U6guEhxBmethXn59d4cB6ADmjUw2hdVIF3LdVxbC/IoatseDufKxrYawFh
	 ZkmUe5/VmrF4x3mwPR1oKlEoVy59MKP8bV4pgux3KBUCN1wiGz9feye5mba+GspW5e
	 WqEGQUP/weIxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93988D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526557358.7023.5318836566372628896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5152d60bc4b4d4fa5e1f198d41b241b61f759c4445bc62d04d2ff2d4f220ac00
Date: Tue, 09 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765265573
