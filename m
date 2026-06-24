Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AA83A7849
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782341854; cv=none; b=l2W7WP8So+9xi33YKC7SPXdJwRC61tMUz36ZrVTrLofofkCR5ULuqIAxPhFFzONG0jb8ggDkysq1hQo+V11TlAdeD0OR4kkcD4Z3jBsCoI8iplnjhAJRb2ZQ70AgLGzD+VC6M0yI9V+tCH9YI4fylY6ySfn7oe9+Q3/8S5/JtRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782341854; c=relaxed/simple;
	bh=PWQajtOsvXnPODLC69sE7FgbEdu1HbOfZlQOoxm8ucA=;
	h=To:Subject:From:Message-Id:Date; b=cjj+4XGSp50EDQvzFLvm8iWiZj0Svor6qjhXlxLGV6K3PNRVRqXu3KQI/ir74DMBLppytu+TxQbCDQvQRl1ByMYaC/P1jP4EXk8TwDsP9hGoiVY5PW9gx5puDdOLRB+Qb3ji98uTqiyGumWrxv05CdqQyYeyPPfPNhDjSOZg0lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrI7FrCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrI7FrCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB14CC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782341854;
	bh=PWQajtOsvXnPODLC69sE7FgbEdu1HbOfZlQOoxm8ucA=;
	h=To:Subject:From:Date:From;
	b=mrI7FrCPLtWrOKu7jEfdpcdQGPeIUQG/ALnRzE/pPC5nOvRX2nvfbQVm+8SxkH8WX
	 XoyeqB0++khPpvylX++e8gAb2PNnletr7G0H9LDvmpIaXrfZ8x9h5G0F4Svo1FXOx4
	 8lwaL2XK5OuH/5JcT8k9lLwKawv6mJMo9bdPQ5BtGVjLdlOhucCiyMFntNypkYfMdJ
	 MBGunjqGvVJbrlooYgvfkpBLZO3Enfe1a6SzYF5NFIFYZx4+QdYXe8Js8AHGSL+GvO
	 Tz30XKiFOrw7TqIqrJDZd4sEgA3Gg57ofu26cUAAL5/CCAxFzVHklGD3ZX+xxMP/Wg
	 5y52EMeIlFzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FB0CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234185377.9366.3238504045746239091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1a9128920cdb3ad03fa922fe73ab8ef8c3c9c9cb4755488b5178a5e26cfa93
Date: Wed, 24 Jun 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782341853
