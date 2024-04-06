Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46E044C87
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712425697; cv=none; b=iGcjR52GBf9eiPR7JzcGyyfioORYAPytpYd91LEn4QEzVeLqyXMCbWgdbjaoK5Anmkf9NkL2O0gfglPtxmOw9NpePfxMlapFTp6syoAxolf1jWdK/mgGjJBOVisQnomIwAbBOAbx1NRYHfNMpvq3TF+bP2X7tSWP+yz5tbu4sf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712425697; c=relaxed/simple;
	bh=6lFfcgJP3IFlRslI8h8DgoDssCfENF3QXzBZ/0pW8Vo=;
	h=To:Subject:From:Message-Id:Date; b=a/2x5CXSaopa2upU7pHXTsrSQ+e3OlPwCVAUUkeBZLzTLv8S2j5R9IFTofJoljg8j2/E68/gKArNI+IGKvOei7/JUGpdNmbg4buwNVGeLjGL5JFsQ4As0NU6ZMxuSqwk0EZ3Z7L1LQE/bJhqYt1P+H1Du6o0wSwaqpWK/D35E9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJnAFgqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJnAFgqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7354DC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712425696;
	bh=6lFfcgJP3IFlRslI8h8DgoDssCfENF3QXzBZ/0pW8Vo=;
	h=To:Subject:From:Date:From;
	b=oJnAFgqIVizBSCMihnyhHNtPvToZ4hRZSlXgzl4P5BI7zKq0aYhmQqSBotJpVCfU3
	 odtgLKxuWaPBCiM6b0nsaxq+sFc2xKKC/nq0IsyGDu08VJuWIDBc9lAYYq2JmaissR
	 SPx1eFvAp1gJg1qE/aQEpgdndrhi/ebYyjSYC9Q0kN+loB6NsmAGEP2h3uOnhfYoe5
	 QoxQhE6fzmcms2es2XXwRWfRLBr3V60T/D31rh09u4yMTNqCNLmED8IfyMDUxvCybY
	 ZZZYEjGDTA1OQLwS6+JCYVqb20gV8OG68VLJACGpDos9NXjPYHHy9a7O0M7A7BdufH
	 uNOImFpdk3AUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62882CD1284
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171242569639.6105.17723626945828874108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e207d668eb8ecb595515130d2748821ab6b253091537e898fb037dab976290
Date: Sat, 06 Apr 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712425696
