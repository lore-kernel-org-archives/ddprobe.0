Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2B61DCB24
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740943134; cv=none; b=IFFqFvFrqShJz9BomFkWL9ARuWquTRTIjxyZEUuBJarEavUwA+55eGuHys50WI9rAf2gfdQ+HNp2YmCOms2ZdIsDyhiZfQQijewCNlyTzG3IJTRgWTTLXc05ENsLN4naFq8QgBw0LDgckgB8wz4JAA56wzXLpvPzGcqMK1fEBPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740943134; c=relaxed/simple;
	bh=LDpEIcaHUtsZvUVaXru0np9mdmbF61sfEaZ5aRxha+w=;
	h=To:Subject:From:Message-Id:Date; b=XaAvJHzVrDo9dZw40YKIzKo6haggDwwUYbSwaKKUa3wXI0saYhJsI4n1manFe0SlEv+VMUUjPJ63btFyGwDBP6EEbqvY+X1UPD6+6fBHTlM/bIJRqH18OIzSfqTBDJoqTmiYOEpL3MAfFuUvB3muvgDpzFh4FyQc1OvDBxTuhQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEZ3F62n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEZ3F62n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04BCC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740943133;
	bh=LDpEIcaHUtsZvUVaXru0np9mdmbF61sfEaZ5aRxha+w=;
	h=To:Subject:From:Date:From;
	b=YEZ3F62nrtx6+tRQQB2cUBa71yKD+zs7AVg3BQVYpEbeSTgLKqqW/2RpWpPRSR28C
	 OcBkgqjeMuwUSElqNUPdm2hYBb0t+k4lsqEYKK/YYV7YH3AFwRUSE4c7xunUpfQ+y5
	 zbWUGC8y30dfsd9dMCtrqv1ANt8cL4ckOREX80ICflBaP2C9MPqxBrCKv8uiHPP7tx
	 kq26WUh+Imf9robWAnauhvMtdvs/d4Uf5sMCOQSGdYd1fm5zuON/JHjAPY0ERXufZV
	 UDCzAYNFjMPpv7GKnz11W/gh3SCWZIpIPgF9NjChGIejlGUnbgdwoeaITVBGdQCpnc
	 G/z9kXHFc/7hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC59CC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094313366.23569.16474178022158214050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b6e74f19d57826414089abb9507436c0498bb1fca7f7f39e7a4fc79380982c
Date: Sun, 02 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740943133
