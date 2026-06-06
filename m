Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404172E8897
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780752274; cv=none; b=C8SjKIoFzIGeYyaWIFlL2D4P5V7M2qCpijDRvTxhCjjusta5uw8fkIKRicO2uFByznlTCgo6bfn85tqcZUdJPaqhEm6iWhh4toOqmozqgupiJxVmjZthyQh+KlUBS1CVdry06dptzyXD0wUrQ3YY7hUzJLbSrzS2Ki1u1lM5cB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780752274; c=relaxed/simple;
	bh=NomYvRG25aufL/y8VAEf10C29WiPPBjrppj8dyO+ZR4=;
	h=To:Subject:From:Message-Id:Date; b=TODZJB5javOaT5PsrL0FDyEg+X9v2MRhtlz9mKLyc3tW0MLb8YMMNUIDocfZdw41OhQk0Uv4jtJNZBtysFPg5C4xrdXPk0Oc+YjyqL3VY3hobDu1PQkWbt1ipJtYAWOG8Cr5rPHah7i90HNQhTl7CxSPZgH9Tj0Lg3x+cBMd/xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXFNUt0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXFNUt0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00A5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780752273;
	bh=NomYvRG25aufL/y8VAEf10C29WiPPBjrppj8dyO+ZR4=;
	h=To:Subject:From:Date:From;
	b=rXFNUt0cjT1LxE0Z3AWuvAHXXc/3dw+bajAEr7W+HN8vnYl8oOnttXGkaPhp+iMmE
	 RCMFJNtzBSRF/MnRBCHdDMGu8o/knixeJbjKEPfDjTrN7hHxzhlfqGEv7NjFdpWOum
	 wiHB7Lps4BSAZZiGaQ3qRekRbkWZe42apcQjVehCvOATKdfOqCvDn7XwdrlqG5d5Md
	 rJwgQXi7Jdpy3ReQhgDokcAqQ3nN0I4ULckHDnuakg6PPXjesLWx+x+9usGx+4A5in
	 fK59ziH5+VPIXp9JyBJ1PxERGb4Ps9/XBW3WONoif/P11W1PNgXPrjlILC18XQMnll
	 JloJK6Ja0rgxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C8CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075227368.8463.4859812447947923892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bb29ac07898c8657d6a0ea23bbcb728c5159f75b9642969f4a8f8fc2363e4b
Date: Sat, 06 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780752273
