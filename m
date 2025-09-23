Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F823A989
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758662994; cv=none; b=lTvQrvKZuaFqreUANS7WyVnSTb641dgU37s/fvExTKDcLW8ODABX+w+1u5tVhjSHOajTsiR7pGslvWQ4JdRLOLmVyHPVYYn6jYfbrNhJfxJqrh8ROaL/iuVl2ZXZXEKLaToIdfCGY3IG9JrNPq6ZruDZrODbnGIaHGB5YEg9pqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758662994; c=relaxed/simple;
	bh=46YHkuW972pq7+06tiHIeoOFBrv3i1m/cld3RynOD8w=;
	h=To:Subject:From:Message-Id:Date; b=JRb5YvhhcRvhVWfOL5Ky77iZepmgCgKuchqTlHmGW4xwEhsanE/R2vnplu/Me7N5cvX550G4/qAdFrDJ48FhVGivawxo6QIlNJ9TZqucokMIPlNs5/ZdZK8rkxYXqHypJjKTFh9mEj8H1NiCWiuz1aff3D/BJYFHeHY7wVfgt8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krcAph6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krcAph6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0DFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758662993;
	bh=46YHkuW972pq7+06tiHIeoOFBrv3i1m/cld3RynOD8w=;
	h=To:Subject:From:Date:From;
	b=krcAph6HfeyGwk/nEjsLKW+bCaEGoNUNk3MyOX9Gcg1PJosdhg7raoR/x3N3HYb/t
	 1qSt/HGglA/N4YIagjddMW7ia70NQMqTdKg97w1OWzF9UxAbusMM78XyGHAT+1H76i
	 ozaaxHvV7A3UZ10HMkXnEvMEbVxWQ+S/8hHXiShh904AuLZQWrW1U8c3uy6SpbYSMS
	 QZwEY1R/cfJ0QjKO17p52H/DreKVcgxkuTw6YztoeYIyPafvIdV0Y3hLLavCf63Ald
	 J7UPxwHwiiqUgIX+CYgx+A0/IFZ/B6lbmuvGGyb6Z4impSp+P/n1VI8i1QYU/bqRPS
	 2dUwQE8hyV89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96239CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866299358.24843.10997784327309414453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2870b20e85bbe9447e7bf03b179a72518dcaf3a50e168b085d1a1142ad6633c5
Date: Tue, 23 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758662993
