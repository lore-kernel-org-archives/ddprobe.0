Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4231C698
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717923443; cv=none; b=Un6Hv5ZqtptihT6oHRFMwAE49a+nWkHQHNrtX42bbiToWoNwIiso3njNWh0DrSiHGPAv8dHhvkOkfvrLPztWARD0AtcvdrlHl1NZmqv0DU4rZ7LrC3VBP3gOzDVFY2AJNATHUj01AFuDgJI5CBItFeu/QjybHv/HTF2EUaT3gu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717923443; c=relaxed/simple;
	bh=YwrAgzewP3sJ2RV4gZ1+PrA5Ts+05JIUB1r63BalkNo=;
	h=To:Subject:From:Message-Id:Date; b=VDpFQxeMXM+7ls3gdh96br9FOyqdVmFgtRI2e8a72DF58J5FIH8bpodYsBmfrEv5jyRHCjHuvALzBei9Cl30aMynno2efikEq9tt1RpAhybIazennbfR418fUR6E9vLy0N1mxwBMFCV/ZxO9cfZbLfb5S5zFQvS836ReFnx237E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTBtHRu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTBtHRu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8686C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717923442;
	bh=YwrAgzewP3sJ2RV4gZ1+PrA5Ts+05JIUB1r63BalkNo=;
	h=To:Subject:From:Date:From;
	b=BTBtHRu03E3Hv69pt68tR/nWF0BwwHq5+o4qe0MZSyfoj/csrYNOHOmxgkNF5gCQN
	 2AYJDoylRtjDZXRJ+IO7nAPdp8WYat7Y6PHYX9xFoYAdhkfutUfj0LpxiMpv8f4W0/
	 utReMnrkbZK9GPauZufpLDlUDqvVLrbDS6qjO6K1FZqGG1I+VzrETI9Wwf8bOKUUn4
	 SHAuZ9SG6VKUwRxAsRrMQpQEsIpw7pz7wREOgTBlugQs60+rJCXkz04Pq2r1EG7TXg
	 8K04sn8/awGgJuHCzOMulrmvvJcK0ADcYxwPPYgoujXvmp5CExY6WyIo0M4DAm35Iv
	 T1BOeThKaMKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C132DC27C55
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792344277.30514.8747943833350226268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cef8382a521f3f4a81c3d039f0e26aff06988041c22c9c78ab39a2b9ed2d4ed
Date: Sun, 09 Jun 2024 08:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717923442
