Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747D9390221
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778279254; cv=none; b=lKnzTbyD1ruiBoURqozmz/I6RjovzXhOJcSev/EqvUmG47WEE7hNhqrTCZpV7OMmv8wq8ZOk6AZo9uRV4XkmdcyCGrfkkYH4g4cnUuNgIRUje3wd7qhIGaOVo+g84BEFRN0RFahy6AXdcyK/rDeht5nYwjvC9RISFPkyVxCwRxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778279254; c=relaxed/simple;
	bh=eli0x9qDoQbvTVXZWOUWW+U7pQ6KcZXjcofqzfaRMGQ=;
	h=To:Subject:From:Message-Id:Date; b=tON/6UACPntoWFfJ/CNw9gjqbBIW+WZIjeNsCrvrdRlptKfNB0Za+GfzPV433IgFrI0yfIdmRvhsS22R3tLWkWHl7FEEnbyvx7e1vI5cwgNo7CN4ouOqKLfUUNb/Tbv2FC00TeW/kbNPtKynmxhiTkKdz1ZG/Mo/Pwe/Bs9fr0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iM4hGZeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iM4hGZeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01A6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778279253;
	bh=eli0x9qDoQbvTVXZWOUWW+U7pQ6KcZXjcofqzfaRMGQ=;
	h=To:Subject:From:Date:From;
	b=iM4hGZePlYTPoVpdT76ytNbDrDqPjKH7/L0ekapd78vIzqyI+11QRwRY9AWb3tK6j
	 3lViIIAf6/QgRzPlgqvAHIEkXi7HLClaGNETkNS8y+owbe/Lw/MfbYvYrW1R4C5Xcy
	 7okjpRLDSGSgFKvZJi2rqEdt9QspzSTpD0EK50kkHcZFCyds6Telo+8u2dccWBnsZf
	 tS1V9JmfZ6+umJZv6NqMxfjdbOu54j2MUaXdzLowyfdmtMSgH/SzkIFpSfD69y7VD/
	 txjg3kkydqu7iBQpY8AK/k2FTZlOqyWIz/cHe9BvTdONJicbzkQxxW8Na0sBhUcAiF
	 hCbLIUr5GBG2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A44CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827925368.1351.9153703932938050238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8c8b674f7e79bbd8f47088112ca735ece31dd25f27e9a4bb58481d6e129625
Date: Fri, 08 May 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778279253
