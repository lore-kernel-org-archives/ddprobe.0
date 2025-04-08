Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435144A21
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744078794; cv=none; b=iAj6idmZGWirVNld5w8vGab4ftqeqOgX6YlHbw8DBgD11keJ2zqV7DpBPT7/duYRyWOmQHKV2bcb2iQKs2mY9kbB1STDdAfcmSti/HbkjojypBzwFN0Z1o5kD2LZ0p3xkLl06uPB16CgzJHqgmkaAJ7DlofmnB/8y5r/rxUnGdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744078794; c=relaxed/simple;
	bh=ZMmeaFjcTdhSI21v90me30+4b0htfsFvzqCnhQMeZVc=;
	h=To:Subject:From:Message-Id:Date; b=D+2Paolncl43lSLAdrYbnn6yzb9S6yCN99juR716gEtQu6JAlqCW0iT1bF8M99MX0zUP1X5FnlBhM4Dk/0ziLfrJtNiZ3DwvWre83FELLYr7ZHJPJSoF+VaLyrqJiEv1XcUwriDLKHe8S+C5iuoOIGKt52aTKyJOzGJFkNg8YBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdLpJ11V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdLpJ11V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5970C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744078793;
	bh=ZMmeaFjcTdhSI21v90me30+4b0htfsFvzqCnhQMeZVc=;
	h=To:Subject:From:Date:From;
	b=hdLpJ11VL3P9SSuxZQdz4ufF7pbHN2qpiM9XA7hhGL/j5N57f1kM65SHxDPAxMNuT
	 ScH9DE20aFArdTtFZR39WSID0WML41pbj5X6oEY8zfQbh4esMFwnc52xXj1oec6u5a
	 BAVeFH3usoG2RF4k3ALhtATJDMO6uBYAdxFVjGZcDxlLqs6Kab6EIe9goFjNwWkxGm
	 GOOTiXBAUMTOp6kttP/fTLkGwN45wimpjquZnqGcF60Tb4Zei7FhwQgYe2W2RSrRuo
	 UH9E9ImChYfigquSV/j8zRboNTeCIdXSWen/jYCcfPK7eCD08PEnDEPG98nDfC6/8a
	 W5DTER/E20Hcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91668C3601E
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407879358.22412.12789885709595353600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae9094a9805ed2c68756cbd3b69628e0749a5f7c9a2303142951e6f92d9e2c9
Date: Tue, 08 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744078793
