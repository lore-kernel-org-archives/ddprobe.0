Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3697520ED
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766899434; cv=none; b=ShIeqTQnZlhLFdjPikrw/8lNP/esPKQKGcVo6qxPPI+gl22CtHnSHmqRYLDsQzBGp24Mteji5sVrMX64jYXEOokHu6CGZUXl69YhbWVHaBu4h85vNjXSsWa2dS+iVP5+SoB7OHU/MyjJ50Gt3XqpP+0YZUHwEdvHCzLyYCSMG8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766899434; c=relaxed/simple;
	bh=CWdKINgp4IMFxfULvMr+FV/KO2PCI74n0s7DPhe9ERo=;
	h=To:Subject:From:Message-Id:Date; b=bs7bJ32HTCcq2+ot/5VkF0JwGJcS7TXww4WhtAj75Rk2bPbs7HvNqfZJ5gkyvOeLsGyZ1BFNUFMsnfI+n6BGC7wHvvNaB3f/LIK+xGR2nGqpQhNmOUSnt1XCy7QG/37KBnBL3adrRvPs2ISV3qzpeOMwp7JnwLopnAld+gj+fXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igl01gwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igl01gwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9388C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766899433;
	bh=CWdKINgp4IMFxfULvMr+FV/KO2PCI74n0s7DPhe9ERo=;
	h=To:Subject:From:Date:From;
	b=igl01gwXsL4Z9/HP6iF9Y9Bz1god+tNzz5yodhjfJH2oVCdLBt212CEZ/cCIY16El
	 EHpqqgBNRshtB18uUsxY8qhJ6JaIB7hc3rlQRZA6QL1z8HtxUOtbEc8Pa93f3f+eVu
	 e+aoYTf8wFR9CulwNyNGqcjCMLvWDIvJcrewTqvpi5dxVk+5kBkRnuKhtpb+SmCIoE
	 g05hfDe62i4SSXDT0g04v+AKnRX91ECa0GS4PeH1U4y+eKCdDur4XFcaUFMpPu8Cji
	 owVGHHbYvEjE6BWTkvrsZlSYrkohtp25HDplB0ALor351pYz9/VqKd8zTJAsCF982S
	 XUAYykJ7Hp1XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44F4E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689943363.24362.5792973037628688867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a75e52fef64731175f400db44d9c4195eb5655deeee9b6b9790ccc71012d932
Date: Sun, 28 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766899433
