Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210525D542
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740737934; cv=none; b=rkB7Xj9bwdOQ1AjkOHJfJVta7Y2EetixQEsjIwLOcRKXpexxfRtRBm0+JsUklCiVv8Biy9JUis9q1Ac1ETqjIAjs9x7dVq52SoAvJaWg/3MoHxrQeeRlSlH/rZIknj2SZBFjGasDHkRGilNMWhhZMpA5BdtaL4Tzsa/97Lsmuvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740737934; c=relaxed/simple;
	bh=9Tm4Pvou5Sl0C0vD+chnX+Eteavl96BqmDWggZaD5a0=;
	h=To:Subject:From:Message-Id:Date; b=Km0pSkCrX4wtfnfO2yInyLI6tocn4JmIbLRlVIbFsp9oZv+hNmeJoMDnITR5IstjO69Z5VvmE8+Fc5/uGS//UQtKnwYLfPrKvnOxBOe+YEA2leBnE8CHJrOrNtfCKVBdoO8IvEr5e+66tw1i4hxYwpqt1+wOyahkMAcWuB/WFBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr/bStST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr/bStST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740737933;
	bh=9Tm4Pvou5Sl0C0vD+chnX+Eteavl96BqmDWggZaD5a0=;
	h=To:Subject:From:Date:From;
	b=Qr/bStSTjV5JeKsM39kvo2EVvpdXdgPpcrE3LetMYJmdqmyqs95OPA45BlpC/3YNE
	 9/OMKOiroOMU2ynk43p2RxSGxn4jShQfA487fVHbStc2IxHph1wTyZN2KSHlJnyp2q
	 ltjPZTPt7IF+Qn5SwfOsWCYoMkqrJCS7i0wUUaIpl46D1vvHsuUD8XTcrRta9qt7mr
	 Ziera6lA6nspg5wJMvdtzCtRlVv+IHpzPXQLTrPDErZT+L/9kPzrDRYX09dhsvN5f2
	 WvXInNyAbkvY/DZJHCe9NonqBfKQHJs+IJmVo6VEJrOX8jFcpnMRDzb7wxJCiGSHf4
	 zuEhYCkSS/tnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E03C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073793360.28620.6845932368751507263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb612e3d1996fb3823f86431b58ae2c89cda0e4f3fa29e5f6f9d1d2658879564
Date: Fri, 28 Feb 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740737933
