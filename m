Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E3A4582C9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791756634; cv=none; b=cxy2u+94M0lDKUojGH2A+Qjqegg2K9JyPMb22oM76bNLJsaTHngNx4eGl90FiCQF7qCe2g3LNENp9JJE31xMfmLvaK09Ckq8x9JSXyPYWFCOaN6nqEEKV1HJaEEpZxOzN9QDCmv6wTf8M1MHmzjwShqMFN0cDH+h0bLVxXFxrr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791756634; c=relaxed/simple;
	bh=s+PM52CMnHJloS3E4IwQd5TOFmJasmdAoEQkAbQ4dfg=;
	h=To:Subject:From:Message-Id:Date; b=IxtfXopaov6BbrIKZVYTJCW7xAW7/iIHymoKk78ZHMTflTmbZt3nRH+epjc8REIil2z3OIQ0lo1Fzlpx6jbaqNj8eOux1DIuPwuYgdXqEeSckpPk0Jn68s6cX1Lwyrn0O/loP+KGai5OfKu3qFAMo3jP3B2Y0z7GlpwuIbXnnDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDI8QOLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDI8QOLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791756633;
	bh=s+PM52CMnHJloS3E4IwQd5TOFmJasmdAoEQkAbQ4dfg=;
	h=To:Subject:From:Date:From;
	b=eDI8QOLHVDFx/ow5uDYQUPfUW6HWWAPnYsG4U7ZRrTyRwym3NfJPUCILVED9ijECr
	 4EOXukuJ62xi+8SY1OcFJ+m3tkSy9B4IiVWAsWN5vRyObrqRW1oTZRuHLZBWRAx+nx
	 rbL+/7F5ptSqNS+3ItRA8mVQgg8SAhTA4u2w68bbCExNst55PKoBEGmYu5E/n7oXN8
	 QEtX/QAwPsVtV6ep0z57npLrYNTMm/Ir7cUGPYEnHO5sHE32UdzivGuKrhRpAAcBMN
	 6+noD3cMqOHKPaLv62K8oqXKJpUwmdnwmL4B+TKUH4cSaoRS+qlTMM6m2ZvkUC5YAc
	 MoxidqD4rgjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE94CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175663369.1982.12391648078315190750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02cf7bb581cebe551ddd99a8f00976eb73698c862ec4919ac3e94bc275e0a294
Date: Sun, 11 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791756633
