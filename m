Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3D826AF4
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776511054; cv=none; b=J6uhu3YAt4Ww/dJAg8Sx7TQoTSSrbkWFEP9rAYICPoWWFk91b62oAdDaXyG4kcjJY8Gq9Xag2EoqaWYhJH00lr0yXd0Z+zvBScZUiwcxRt9dnPwozu2AnoVu8StLXArMmHsmZOO4QQ2gGJViugvpFfhnUPIXMEPjyTPv2/Baeoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776511054; c=relaxed/simple;
	bh=ffvnI+fz1rGGC3CCiN4OYPiFix/PAE8BJP3ep/9K5O4=;
	h=To:Subject:From:Message-Id:Date; b=YAGR6uSn4n6V0/MaJKwdi9HEGA3Mku/fj49nleL2hqMIkIXBQqYqvCb907W0P+wyHR4lMuR9VS+bkaB18783HUSvmSSy/nkFQcTw3GlnVeAcoqi9m3gCij4ue3FSEDAY9z9+FAjHij9tp/7aGSGjqu7tLXbCvCmmex6rVCSpda0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J63NYsH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J63NYsH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1183C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776511053;
	bh=ffvnI+fz1rGGC3CCiN4OYPiFix/PAE8BJP3ep/9K5O4=;
	h=To:Subject:From:Date:From;
	b=J63NYsH4Sqg4SC1NI3UNGx+mZ9CW1vw9++HWRuP0vOj95iXwQEADLG5edqqJp7Ujq
	 Qpewa8At1NUjZM5GAMT+Fin4uDjnRzONJ4Zb28a1lNPgSUHsUFAuShxzHuJ+jzoJrj
	 N3x8n+l2Gjqw1JPUxDrFlhcXX1vTF3DQETbJqTTk7pFcUB9kgU5bagNie6Wal72hWQ
	 oH+T2aIg3EkGOJeyOeDf9xta+Z5USbbrIm8andFHxFZ8ePshvuxSYNgEdDCr6fO8A/
	 jhPgJA2DdPfX0X43Q/tL9HlANClUWhgH5HArz1YknX18IcTvjJ9/J5V84HWMe7OYOr
	 xV0HEMWSgG36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBB0F99C79
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651105368.28817.13837392764945139620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6bffde366fb0283baa9a67b8b8f72256078e9fc1754b4610fb513b0e3dc6eb
Date: Sat, 18 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776511053
