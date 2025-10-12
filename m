Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD17156CA
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760305794; cv=none; b=MoDKxR63wUTB3SbbmnhPn2E/FK3CeK8EQwVuIIgS99Waq9FbOh0fgcfa/zupJnCUaj+b9VjlavA+sNdrA+DAoXFGZH9eryTbLtuKplHY30NvmV1JdvY0k0jXL9L2CyK3W9D/zObWcoTIO60KNlMO1a0TMbOJwrnOWlabYetKwv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760305794; c=relaxed/simple;
	bh=LnI11Y5eqZOMe8Sq7ePOa5vsiHyYr/rdvghisglV9oc=;
	h=To:Subject:From:Message-Id:Date; b=hNM1pX2uRgg6/KM9J/i21h8NmQTEFSVVT1ihKVxCeBMDuZcBBRRVu87WS7hK9ZvQ4T3eXXQS0NFt7lnE+M2wnyXtIX8oXqfOo1R+2xUpm2psP6A04rHSMVJ9J2tz4bQBdnsoqgMer/MKAAqkUniQVJntm0gHP2iTYrA3So4OJU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdUDslkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdUDslkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEA4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760305793;
	bh=LnI11Y5eqZOMe8Sq7ePOa5vsiHyYr/rdvghisglV9oc=;
	h=To:Subject:From:Date:From;
	b=gdUDslkloJuCerx1SLgXCrKDSRcXx+GCtDVn7KhWVdK1AEu/+YP25q2ctotpag9Ad
	 a2KZt3hX4DoaO1onxpHpXO0M4E3daZd+grEFqxP5A7a2wI/d0K4PF/h9PaE19hwBZ8
	 87kdSW+JikY7RFva7gDZzx1NnhWkkUrcBd8k9LPNgGS7JUali4KsIb2xZos8HDXW8p
	 ZLSqTdCXCQUmlO9ZZ/ps9PT0HV+YI3jUwZ06HDsViLxq8ZIXZem8Gdx1RIpjWl0kZ8
	 6dTxcoQ3+gNecClYZRUrFEZ/QTpamd2k7xro/opj542DY7ygBW6qpnlmFUBb3APbGF
	 ao6SJXpgDx+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95688CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030579359.29165.14268626026373265390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076007a5b82b1d102069980e621b62f1e5b44b515fb8a7e136a920472bc7810b
Date: Sun, 12 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760305793
