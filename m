Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BD4517BA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791571234; cv=none; b=Nz2d47qhTPz5KUu0R4y7Oqroxz3ROlm3nKBfEGMehRPq4EocyX17Qwgx32MItxwNpWRRc0n11wEBkA3RO6iZ9pDxAFwKQcXv5gEK+NwvBAqNrKlPi4TZYTjtNzmtmDJBgUUvSxwBaZMIJOJK/5cUrhjLCMGPArF8GoP4cB2wjTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791571234; c=relaxed/simple;
	bh=s2eIt78V/hw6vNzD3MenYcZL7ZfgO9x2S/ztbMJ22zg=;
	h=To:Subject:From:Message-Id:Date; b=XURdt+6UsIvx/AKo6n2pzjLjAuIa2M2tJ7anv2LBD2FJeAl1c13cTjxUpf6qVjovIEP8QN5IovlatrTogM5f3fWb1yEG6mF+MtR3g9v3wpgy8lbZlz1DmW3n4/I3RHGBmDrDIk+MxOP8l9b2rdbNYRf2RVN1vtTQpmcirQ4XLiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1BLn9P4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1BLn9P4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5240C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791571233;
	bh=s2eIt78V/hw6vNzD3MenYcZL7ZfgO9x2S/ztbMJ22zg=;
	h=To:Subject:From:Date:From;
	b=O1BLn9P4+yst1GVPWIR3iyYFv1X6eiCTGcbNTLTZRt5L7cAusdrhWRplXB88w6As8
	 B3QFhPmuaHM+Jn+LZi69c4jeXD0Jav2as02lxGj6FapiByUVDJiwZVAr2+bv4DKtNk
	 HD5dIeFPm/ouEAMFZpNb6H68qDg8x0iZTbb+EcPwZmhAlyfYXgWoEbvInW8nJRiZVl
	 tNCt8PIrDp94rCs21IvLHHN+dxe/JYqb89H413td0Nd4wmJTxH2qpbb73Ems7yOOff
	 YANVTfSMmv36+48UzF8ncicHQKjM5jLDarcs9oJHZCH22sfCST4ddbwnwAA/wAqfe6
	 ONp4e1hmB3o1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB1DCA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157123368.27502.5485687815804601593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1035a390595610b4d9fab429de6ba94e8d3b89da22babe798c6abfb4c7e4da0
Date: Fri, 09 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791571233
