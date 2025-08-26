Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE22F5307
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756193994; cv=none; b=QR+O9jtEvwiJn8BGKkMDzBlj5QaRW27p1jwIPAxOoJE/h/jE+ne68tN/m51AQwwniDHEK2X5O56s3Omj3VQKNzfuKe9dpb5dn2HN4t2Z/6Nk4sULHkbxniWivlMFIMdjZoxyyrSQTnVa5s8x3KELZBnr7ROcQJ92rQJn87rMhvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756193994; c=relaxed/simple;
	bh=KqHW/x9RZUYSF4FsoqXGKQ1BmoIyMelZ+Q4WjT8tM2M=;
	h=To:Subject:From:Message-Id:Date; b=QImFW5LJ9CI0lZqrgH3cTVeSDzaAn2xrzbCZypXXaSMADrWMwu4TdiM24aVJfdgwf40qgYlcnfE2oPyAUC/l8dg3m/6+Q8CpY1hIo3J/CaV1tSHLVanPk3rtrxXvjX4/s74YM31j8m4lDigrwWoN36E2ylWoPe4aKhbt+rnDvr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAOAum7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAOAum7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B789C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756193993;
	bh=KqHW/x9RZUYSF4FsoqXGKQ1BmoIyMelZ+Q4WjT8tM2M=;
	h=To:Subject:From:Date:From;
	b=jAOAum7O4WS4YFS1os/U8oePLc/Y7p0wox6LLN4UTtPeru2HWA9Sy792dAAMXGRV8
	 +EPZVKLKr4ntGKoTHGSTo9KpDcf+Z6AA4wNC5/X/kOsYcZwCpj7945BnPVViXxq/eu
	 cmCOHK6ngxGnwSIyTIhWb2avTZDKlEPA3NnizPLKTWkTpSOZJJYo1uYD7Xe88vr4Jv
	 aefb3zedhbtGfUe6kupcgYPdufeD6eqizqdVopZbZ+b/cC9giRzH9gPK/OV9YSMMKH
	 un5AMt9hVAE+fFGjB9DfO2D182I+tRpB5T95jw+t8pPMswERQLSJgWxn3tbCnxf02Y
	 jH5JF4UNFgBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4C3CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619399357.17490.368810950470238149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06b542476b6d54b41e63a0edc199cec577b277d7760ae4bf7e550be3086b5ad
Date: Tue, 26 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756193993
