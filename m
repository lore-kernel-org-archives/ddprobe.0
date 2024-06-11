Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCE617B43A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718107703; cv=none; b=CHpn0pXoaIx06YqTfBsWnq/vjHVz9Y3EWadEzEEvQGUPqHJl26YD4B7l6S67QzHtF8C/L4N5Chz+eQPbaHEdPZzcWELOzGmS1OOMezv++69PU6grT4eNrjY7ERc9Hd6DL89TLMioP0TiQR+rPpkakQ7tNFOiqaZN2C6k+QjL3CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718107703; c=relaxed/simple;
	bh=rAjAMbQVVZ5TEDQx62BzQuUkk/JWqXosc630lJ9ZXos=;
	h=To:Subject:From:Message-Id:Date; b=QeFkej0TjYoURyUD4Bx6f+MwdT+vYL05vG/AW2z5UbDhLD9UIvTuC88hC3T+wORPDfiVoXltoTN7CDoean05pf5eqtSDUTKKcxyxbz3IKAQhKMMJAt0LhNRa4EBH+Ck8i4ctbz9qqPZdDOl7cL+3cU3zEimDTPDmi+TetyoVBBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHEcEiET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHEcEiET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0F88C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718107703;
	bh=rAjAMbQVVZ5TEDQx62BzQuUkk/JWqXosc630lJ9ZXos=;
	h=To:Subject:From:Date:From;
	b=XHEcEiETvKznQO+bKa1ZulbI/24Pqx5a++iMkktV03FddDdZtu6M5Z9oY+lr3dNE8
	 mFjYfUff4VqC5ULmJrbxJEr4QfKxJHSGAgEwD+B3s+t1IYp8RMMHsQUenY5maz7Pvr
	 gbTeuq/B8F6fX8WVLcJMv/fZ6o2UJYPNq5rX1GryGsYHQ3lHhxKYQCaVIo9O1GmOHz
	 DlZGXiMO7POwu9uuQ9lDntr7HM/YilI0t4ZAaNZrwpKx63bOK4R+1I1qFTZkPUOiba
	 ox+IvugxfKk/PZ4X1HLwY8VYNe+kLa5ddCJWY2vQtPScnIjHDotzPaMkqX7736uq+I
	 BGfTz87H/XOcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB77FC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 12:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171810770288.7723.2109402442746512930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7993fea167878188218ae60b85f197409e2433f1a8faf7028a2f26553feb33fb
Date: Tue, 11 Jun 2024 12:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718107702
