Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3F33D75A0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791883234; cv=none; b=Wqt4qp+SIdX4fXNs1XkIa09LMPNnPeHQ6//3lIaJNYWJQf/6241pMlZUr5qakRNSzLhoM+o9I7O1mymkxZTGDcQEyjynFR9ObFx9Kacu1CszxLEwpn4iQiugeYW2GMhiNm6eRy/V2qZNl8zpTOMaxUuLf12dNyQD7mL5mnGbY6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791883234; c=relaxed/simple;
	bh=IUsgCpJILgAvjSEq1/Is8ztXLOxZxPAavsRhwhReCHM=;
	h=To:Subject:From:Message-Id:Date; b=aMH8TGCz0ok8u2KeUXYKlUvokj/Z3zOsLV/hLXTZdjh6BYy3D70XDthJxfCDwYok8yBY8tBvQ9cBc/bV74t9eFlF7hUNei4qCd5O0WOuEHJcJ8JryXprMm3KBUgJMKOryjJxTJvldTe1QKN6GMfPL3A8fyhAL2cX1MPgyckKu+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sq2aaDqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sq2aaDqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4BDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791883233;
	bh=IUsgCpJILgAvjSEq1/Is8ztXLOxZxPAavsRhwhReCHM=;
	h=To:Subject:From:Date:From;
	b=sq2aaDqymJcFI0QvLt8n5O3217q6z4StEr22ZqmZ1rKE7edlBbcVvU5/CH0Dk7dzB
	 qC9DKhhL481fN3lOhTbA6BSKR0c2K122wuZ3XkjGrXiuERkHGwgayOn8npeB0RhhwV
	 1BHjJav3c59sLkwl9jefZGSwkq0AS6EDukLDzKz+OBIqYztcYUweYGHdBsgXwkyVsP
	 th1RgonoIFppfezSe3E6clUQ4j2sjEpW1xGNYJ/Rbx4V9cXJ2nCTrglxcL2MCwXNRz
	 HqI1QTKDsrzCl9V/L2qlfbkoDQhHpPjDSAEz2cdFzsVYtURhL8D97Fgh4K9+KRLnhN
	 mHRCWhVVCdATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12BCC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188323368.24083.6508878951393698505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ef05a2094f273b1d7b6a61fd8c6cc7f243f41aca616670077a24352656cf4d
Date: Tue, 13 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791883233
