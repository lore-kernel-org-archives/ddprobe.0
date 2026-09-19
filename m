Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8E4233933
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789822234; cv=none; b=gv/aIUgrvxiV4XLIjfq1VigpZAdw0ONvpemH5uQRa5PlKwtgKudtcMRYGpV2maVpeKsYelYWvFG3Y08s+vmV2SyewDb/faMWTban/imNr5jPgSA9T07BjzsPE8Buv/W65dCRIhDO5QOQmO2PCPdYpHSBDe404HOcvQ2siPXIuEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789822234; c=relaxed/simple;
	bh=KImy8VBfSSaMVCIwxK5iGyMRuqlS7JkNqEJaE0vAwdk=;
	h=To:Subject:From:Message-Id:Date; b=aGx5my5b8VZ5XDcgiLucCYQ5IQR4GKGC0s+OqEeByA/uaRXySyou9RObPNxtYZxKgzDNY/ST7/XBXtO6HkHarqFU/iC+XWUpuBsGG8SU8lGP94FEeygVlcdNpBX8ytRL3xAgdMayBPsq8lSm5uq3weKZqDH2Tm/ZCx2QNc/CnX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uq499TPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uq499TPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA776C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789822233;
	bh=KImy8VBfSSaMVCIwxK5iGyMRuqlS7JkNqEJaE0vAwdk=;
	h=To:Subject:From:Date:From;
	b=Uq499TPMouDisiG/XAHhRks62o3vXOAYbnw2FJjdDZib4jTYF8vL+qj/lMOnCDhbD
	 /5gMKv0VuILwU6fiZbUctWx6O/RRcMj70W84vUw0DFDsD3aBBceE96VNMLz9X7FhEf
	 iZcAZ7xMUmylkjB6FF1TS/WrvCI4c16iwLnGbE8OXA6LqtX/pMaQ2bkrDRYzJJI+Qs
	 5IszE3b9/wqRoapek9R6nN5iZbUfA0oEeG4z6LyiCOql34U+vFpMfwhBy2YEWa79FV
	 FNI2qm/oSV3QTALX+Jj1oUueDZcgthQcGWzJNsgJdFlyr3WEZ0M7z4j1IAKzBf/dzK
	 w2/3uWXZphrKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0302C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982223368.7878.14043953083457492773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becc136c7973282c2d8a2b96922e300306ac056009a394b33042f7d7b68a94b2
Date: Sat, 19 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789822233
