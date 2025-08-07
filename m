Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C73880BEC
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754603394; cv=none; b=i8421QhDF3rS0UUAVDnYGDX5PXOmxpUqIL01CZymYmxQe2lIF1lN05kQ29dajdyEQMW9wfbY43BuaVe6AtwgyT1LhDbd4rhY2KChG2okhiDGeYPrU8CBqVsA94qtP6FGf1vTMKmCsbWKxvqz3cjjz5YeItWIwQRtz/VjZVQshY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754603394; c=relaxed/simple;
	bh=L6I3Loys9FVMtnsNkxDtrBo8qKTvxPaXQpH1d7I7f2o=;
	h=To:Subject:From:Message-Id:Date; b=maDfZA/oV4A6c1Rw9JtSD+mOjjT0AnsfqTCBwAW6DozKmZGmzxJ6Uqd2ucoC67NSC5tecY+B6lepK3lE2g4SKQTCIVte6IJ6b8PCceACSto3aA1zBOSuL/A9Z71B40HM5p4Za9fs6dxTOxgd0AleHoY+apY1xNmH62LUk0o8aao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgivoVjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgivoVjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF03C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754603393;
	bh=L6I3Loys9FVMtnsNkxDtrBo8qKTvxPaXQpH1d7I7f2o=;
	h=To:Subject:From:Date:From;
	b=IgivoVjQepxH3BYlW72rspvR/98OvQY1kd6RtXJV4Nf7vvdftmkfceqF3JXseE7Sy
	 pXdj0SSVmEtxyTUZg2ovD6JHzun6UlKnBbIs7Ecd74euscj8YLOkmjXLgxztXhTLIE
	 LnEaTnJz1wQtP+rIj9Us99CLLaWoVT4y4GuzLt6CK0gu/ac99Z7apptvJhPblOJHtC
	 70Efn78jpnfSAG2ptk2W7UWiJUVx9NqapTy90eAqmTI1LLlIy+RIA+3Py8oW7qkoOW
	 7jSy/1r87bFbYlDiluQ9N/JlW7vm7IdwUtuBd4A3VBjhitUOTfejy2eOhgF5iAXlH0
	 onYpQlykbusNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E556C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460339357.5109.2151112549561496118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d943a3468a4fe358184aeaf3663c48c9699b393d0c164b07847e3e243c302ee1
Date: Thu, 07 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754603393
