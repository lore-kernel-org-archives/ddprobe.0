Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3925586334
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783879114; cv=none; b=l21UPGaz+axbSVljuTzsO03xu+5E8B/9IoPFZpghaqhuYYgnf6LB3Oh/aDnADAp6VfPzWl1o6KrY+iyfQzXMEcEyLutkDQy1jW30mB8YgwfxIEWKrPiBU6WVc3m+d4eidGuMYNc4MeHdm6vgx4g6BV4LLW4nvmvAOSQGr7pNoKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783879114; c=relaxed/simple;
	bh=Pyvd/td1/Y06pRPciyuD5q8izDqWeTvKuwndg0bJ/gE=;
	h=To:Subject:From:Message-Id:Date; b=G1Q3azQbE7BD14Uc9PSp6urRmj+BWzSLdvAqk/EUv0jBHLaC7s1HsbAsCOQpKiWv6vMqWKzlVoSrjNT/HDQ+YvQTOe1LomyrfKL2xhQAPEY7FUd7UAabgigO1/wev7CFaepADSDb04I/N/kAop3cdLfqvV1OVJsAxbejhCVGm74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klu00g+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klu00g+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42B5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783879113;
	bh=Pyvd/td1/Y06pRPciyuD5q8izDqWeTvKuwndg0bJ/gE=;
	h=To:Subject:From:Date:From;
	b=klu00g+txN08WwZ9UT9FvsjFsn+wSR8/otLdLNydYmYQwa3PJ+EZynNnDBuhYBMBd
	 mkFBlavY5QB0KXB/fNy7zA7UQlm/C7jUqzjnhkFfMSxspo6k7RPOvdE2dl5C87jc+S
	 0enMdWLEq6/DFX/BMS52PuMlsO1ghGgdhsAn8CfOUfEo+0N5ZuzVHTL/U3qm7TpDOf
	 hPSINpi7Q13+potwzKbR4F5/A7jNq3TSkQ9V0CNksLIk0pThyqJyMDG6HydrS3Qmme
	 DngZvwhTGZEBlPtC2frqrg4GBEqG0sq801m8A5y+06L6BHxCjCXpq6DHXndd2euPlV
	 49R1GvL63n1RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB017C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387911368.15498.6988359466821861971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c82ed2b81c03b718c60afcdf833c66b637d2b328755fbe68626d511faaa30a
Date: Sun, 12 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783879113
