Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535133A5422
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789024234; cv=none; b=IObeCGzlzc/3g2DyCjWdzVh/P+30f0uLHgugw9YtdEaQqixMTz8Y253nCFdUGZuHSPJ7Dv51pt0/LTqB06ny+ei/8ct0neAhSvcaM32s0CS1Dc6/o05gKpNuoB6AZZnsRll72vWq8BePkVI8cWZ/X2JK+5WV6OMvEx2zOco4KlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789024234; c=relaxed/simple;
	bh=IFbXFothDR3vwgRXq+x6/I5VJXqgbDODISz1RE0XRkE=;
	h=To:Subject:From:Message-Id:Date; b=P0XAMKpWYAaEMMqkCg0onFKkXNoI+w+XEIQhvjjO0Tg64Xte6c79/ct6c0Vc2gUEm5FxO88BMN5AEWRmcL0qN5oKvVscszB8wwRXcaWbx1rmO5aHtk3GEmchby4jNe2PFouNzsk9Z2gnzmwTp3Gyt8JRGK+3nXiIG55QPt68LXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGXFxThr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGXFxThr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC69C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789024233;
	bh=IFbXFothDR3vwgRXq+x6/I5VJXqgbDODISz1RE0XRkE=;
	h=To:Subject:From:Date:From;
	b=PGXFxThrd6U8UIU6px5Dl43IIq261Hwki1Bu4753oU+NnJm/dsqeAwZDdPa4hcF9K
	 p2+3GwJCLEWPclIjyV4lSk2Xa/x6heMcgq35fcfHKSwmgcf+Do7ka22QEUmOx6U1io
	 reY0PV4F4HElTpE/YfcCz4yhLU4tuMCjAFa0C7MdoNVgXFUodVQnpFDljpVUZQCGlZ
	 0ytFgGU8/dP0yR2W2ymqL5peTkX6I3/iKU7mFjL1tVCMNXjlIQw6hl3dkYJjfIHVpG
	 9eDsYOuO5i9vEy8dt+oSkBjttwJtwTpD1Xo3wJ1weZsJtmhPgGL0XBFhy7HzFiHw92
	 5beY+CVYP7Gmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB732C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902423369.16912.5898239699790186402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a960fbe646df8da4f8d7521d369a19c563d645cab7e9bcac0b49ed56b1561641
Date: Thu, 10 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789024233
