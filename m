Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19560208D0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779842554; cv=none; b=s/C6rQNtCl7wsiZl3bYbgqvzV5jGhJcD9hISV1lww3Ct1zVX/5g7R2kw1EO0acMYkxmRXJpL66VtCxSpZHWT5YthbqlztAb8EdlQjjnUDJGbewupB+mTCddfHZO6Hva75/x1E417btCbGF8iFV9MTZMRG61tHYJ29DLfSLcwbyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779842554; c=relaxed/simple;
	bh=/bQ0/Lh+C8PXawivUf5Zqe0p2aXr3sTkKuqrHn3m/o8=;
	h=To:Subject:From:Message-Id:Date; b=g9YimlJLwqK4tyvW2kHdp8zvQQnYBGV+SWtfJsD2QCPsuz/YnB1zdjGw2S0XDFD5W0NNPQ0OAuWHYsuefoKi9TD1/edgyTNXccMTb3N9xLem+AT0+YkrnsvHRk730xIgxnPP/hvOzlHeChWEFKD152RwJott8Le7rm872lJq9/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Htvtw/tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Htvtw/tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4C6C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779842553;
	bh=/bQ0/Lh+C8PXawivUf5Zqe0p2aXr3sTkKuqrHn3m/o8=;
	h=To:Subject:From:Date:From;
	b=Htvtw/tu6BSi+09aNfREmKKqmHxx8sfcAjOA2Ca9oFjRUtqbSjil2FO+LS8/GDTNN
	 546hb/b3Kkbl8a1PIf0VKELar5H6+3aaWzHyLXkCCnuBhEUCmlle+i3vDyWnlaTiAb
	 skvVAyu4tWysDbrgEQgG2VYbBNeyxsW8WUdIXHt1sAq3fZ1KRm4GRkhJ/K45W9H5Dm
	 k1TbMzHL0khS16NAqds5DBCqcdbTG0cmXGDdTVAaLNbSvUgT6HM1353La9WZ2CfnlU
	 HnerIt+Rgkh6sEl5sBQHt7/5+hrOQnzajlzhKVPV4n78Vkw8H1qsnrCAZml77we4Wl
	 +W5Wzqz56aP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A43CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984255371.6085.14921442327072584363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6ed9bf083dae37ffb81f859c0c75cc437d457952b544bbd28d3a4934860c13
Date: Wed, 27 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779842553
