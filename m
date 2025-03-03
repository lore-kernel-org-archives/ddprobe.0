Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B8D23F36D
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740973734; cv=none; b=fuwPi2Vr40mMnzlLKIlnIqtmMghWc23MrOx9vCvZu8eXZZssoVjkrVm7PFEDtxLbWzdlbp1rSRdipp0EjQw60IUnXT/cvX/WbGB/wh27xhQ7KltX58L8UBcRckLsni+tGJ3n+iKGzmIv50URyr2XigODMaPJvngFeKb5nCfr/9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740973734; c=relaxed/simple;
	bh=JzcVw0roSRZIx53Zvse3+nQLZLrWC6O0CT4O2kpb2yg=;
	h=To:Subject:From:Message-Id:Date; b=DP8yR4a/gDfurwDL4FfDziVMfEWGhlDgMx1ArnEr88d/4iXjrhFdUGQoNZYidgoxCRrwQXHqzYpmdQ9CR8rQXxTOihy0w0ei4PZikRDnR9Z9hu7De5xdJHRSYrM5Y4hF6xeLRngFtbuYiurSmKaVLWdFvUOW9UJ/y77/GG/GQqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQuTON1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQuTON1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A871BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740973733;
	bh=JzcVw0roSRZIx53Zvse3+nQLZLrWC6O0CT4O2kpb2yg=;
	h=To:Subject:From:Date:From;
	b=EQuTON1aK0rjURmwCw0cE2498gmRxmo8/syjt/5D7zWydy8NPFj/cUs3ZMNcG8MLE
	 HbHrML3W025oOEXfXiIBuw9Bk1jAZou7ijxy4zG7m0Rgwuzo0fIzYcu481Q7KOaAl0
	 0/++Ap5y9beDC5edqx6t+NtMKrCTjQtYCHx1bsz27Gbor6Io6wo5y71Em2mMe/PAUS
	 cSADEsIH1I1NNQsOee6Cs8zK5FL6cdZr/WiOTb61rBGen8ZTDuQjv1oBfIASsbhHOp
	 lgMbnOqbBG1QA8yINO4iGEpYnoCcLF8i+lG/hcXpQqo9cvW1ldi6dPSXaQ62tO8h8m
	 PP38ZXJy9WzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F08C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174097373359.1329.15660560713403536487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67ff5755810e776c1ce9e3da4b9d7d96f528482a0c3a5f7a87fab3f375bddde
Date: Mon, 03 Mar 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740973733
