Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085C31A841E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754531394; cv=none; b=c6K6p/ZaoJNhh1489DLqPxvfk7a45vWeInbrsfj1n2ihug1NgnFUuxTPO+9fGxzwfFEjjy2KRQBr7k2EK8hEnqgOEXmgc0jwOmgW216AgXp+7lUTSy9d4k8+sWQ5eeti1hDbVqMcYPnjSkDJmlOVVF3CRIlkjD1ZFpb0qgRXSbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754531394; c=relaxed/simple;
	bh=yhdUPghjyLUTBmvWhr3Q/9WIamx4dGCMZ8nzdmi5Ijo=;
	h=To:Subject:From:Message-Id:Date; b=Ohvj7L2f9OmNs/xrOmAQMVSJb14c63sabSwfT8dGR2B2CmFJwDhrMdrQsDC7vW525vmWjTecVkZqIYThQ3SRs4zZrX5iJYjLSVU6RxBdQXc9onq1TH9gpBiyf1xVqWt8nX5V+mfZrTZGGX3gSj6bfJ+sG5+9lyHsYMZ0dIT7LSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0X/gVdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0X/gVdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02ECC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754531393;
	bh=yhdUPghjyLUTBmvWhr3Q/9WIamx4dGCMZ8nzdmi5Ijo=;
	h=To:Subject:From:Date:From;
	b=J0X/gVdCsVJBRrT3tFCA37hPDrTolwRoDeMCKTC9r+EOY0h7tdVvKBRbrFrElsp5/
	 JCdMVm1OscaXRgX/GPdhYyvBgmKcA7FUkwKNqdCS4BY+dylrxda+tcBU4CLsfuqmvY
	 aYHGsOj4qu5m/mIIjje/AO9vEp/KeGVvkvtZ2HTYBBWXnCtG0Je5wI/a0R+p/FgZCM
	 R0Pg0XRC6/K+yEoCwFs8phaOs7ifQsC3dYWQ3phORexp+Qpt4P+xsHBGM76O0E7lEs
	 2a9dS+28QOIV5pTLBNrpi3NN13Ufc9crTls4FrmFQAtGl2QdtHpkoWEfz1DmfE3j2b
	 W5ffGLxreiK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D3C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453139357.22127.14269912798496299315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cb4f768702303f134a2da58a67942864058d27d1e196e68aa242c321ba546f
Date: Thu, 07 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754531393
