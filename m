Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F39223302
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752949194; cv=none; b=VZw6uvd105js2dgYSq7YDDJZOnHjVajTNgTs5yKrdRMtz2c8Do3lelr+vJXJrkyRWOc/LtwHfjmCDG5ZN/Y7dozf1FobfO//bWgrsnj8YRFr3ByBkaAQhfMlBBTGEcQJ/N8gK0RFpxpCRD636t/5ZSOtzqH3McYkWwUW/WHw3LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752949194; c=relaxed/simple;
	bh=dS26DuTc0dzEBIk6ce1kxuTWaDcrejF9iv7d+9gG5AE=;
	h=To:Subject:From:Message-Id:Date; b=j5kjUTIkEIagyhvFH4iJxlpI7MONBLnDEj0OZXJvHHUO6ZAF3/79AXpSvqt0WncVNo73g0ibt+xbgmkKdarlEceHK7rGkQr7cZoaCPiw+mJkJDHm7d1ftm/2cfaWQu6Uvu+YTYHnYsAfMYq6pfm7uMS1k/ykBaYmS3A/fqFTP34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGEoCWyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGEoCWyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF66C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752949193;
	bh=dS26DuTc0dzEBIk6ce1kxuTWaDcrejF9iv7d+9gG5AE=;
	h=To:Subject:From:Date:From;
	b=YGEoCWyhX4wHtOrf1ThjrWOPJhcH2CuE/r2od8CVzZp/mtie4su/V4R9e+Nvu9qR1
	 fqG+9I22SdravN0XNL99hwC8bp1SQqYUU39p6Y2ZKh/si+bsptnSyD4ykHksMQgCNX
	 /w9XvOdQeEJ2mAMnDzN7DZJ4q7/WDAsWziEmH9lyazt6ysOPNetaHmoNKe5w9YNHrH
	 4L2/OzT+pyv1mN9iHOM1omG4BQqa58jDhWTQgieTWgHaAMOEUDmLGX3VcWte1KqxFe
	 3p1NakOwafJTM0ShC0R5VZRd050wHhNg4UeeZYmpTB3toIsZWhJi8Izbx1Lm/p+8Q8
	 44+qbpb2fXtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F712C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294919357.32007.8937592480777614249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57eeadab9a084246d0d91260904cd0bae6181620f8f23bf3e95462ba647c3e7d
Date: Sat, 19 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752949193
