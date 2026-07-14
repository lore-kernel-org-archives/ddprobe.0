Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BF42C11FE
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784001514; cv=none; b=kg8GfxshRtv5DRh3T9rEHGRyKX2mgcj+/8eUD4XF+vTn7CT5RLinYaoqwhHDNPurLwXQGc4S2fI5aLR4whb7+Jg0jPJ1GRTV1u7V0o3HcOJl5Fz6GaCR/Uvx6lUNqC0WzXNuJrFShihVWVnYtXxr+C9Hqib2McLjB3i8jYg6COw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784001514; c=relaxed/simple;
	bh=rcKW2cCj5AM1RJHC4Z3zGq3rhzIm1zuJNskV6syR8mw=;
	h=To:Subject:From:Message-Id:Date; b=soXqLQLUNGxoF72M21WfYEET+YRSTqRyHrkDnlotVefJvDBAweYdq8uY8mtzTpAb17wNbJtQSUweU5wOsbnFXareCnvneL5aqaQvXRyAfUqLif53J7fEZQ/z4LvUyJqWkI7Id5uRF6bdn/d1IRO+vZwi6yRMgOrotJGX+j2EcJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZG1U3ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZG1U3ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2B1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784001513;
	bh=rcKW2cCj5AM1RJHC4Z3zGq3rhzIm1zuJNskV6syR8mw=;
	h=To:Subject:From:Date:From;
	b=GZG1U3eeiTRCEU+JZqs6ZlIdpZIBbrwXplpDxmAqlNQclqrz/Jz76rzutNR3lN+AT
	 ogcM6SkU9M65T8Fwq4RoTVCeGolIIlIODOoiWkBUqyhawYEx7b9Dr+HXokxxYySjg6
	 QflDAcIhOEZqmOud1atDdn8zcX3Qx5zjIQ0zeBqgxbmqejekK8E5ivR0E3ASW+QDjE
	 Z4W5UjQvB1T8tMMG3m+X3PRQ4xQSKRF2zQhh7STzgl0UjV/bGCuh7Om3rT+8YanFpu
	 9/Zb62T3tySgc0NeOA2sMr4ZzfMlOjOjxqSUov7vIadjUwicZUnNV0+b1BKn1/zjM9
	 3yprx81w9kc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F33C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400151368.672.4803730157903203746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24df17308295549d398321c715b8134b58ad6f5db05d67ce9b0f895fd9f0d63a
Date: Tue, 14 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784001513
