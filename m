Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E679DC
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722384354; cv=none; b=pCXFuqkFsuuVm7dnDmICuWtRmn2RIwTNndseeEGBC0RV3L9zza2Dz3J8xCkUXXWKusFO/ZsoEpT41y4BwZzIgVTbdyxyLs2Rr6cBDIbrZvTLRyTgkJ924csVTXwr770RZ3wmF5iQXZxaU1tQOhbIY57vIQPhW8+MqrXnimWrZsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722384354; c=relaxed/simple;
	bh=0VGIJSdqCxiOBUqmdbrFl0kR5XVcv7uqHwJFd4dkxMw=;
	h=To:Subject:From:Message-Id:Date; b=GmK0T41M64lzruWCVjuHAK2IkN9jEaeiAtP8ZoQ5nn6jTDu5Fu077ayNsGbwQgLwfflmhMPDpfZO//Qv1uOogFhvp4jfCOIrkSOSS+iMA1IWZZorox3cU/lZckGDrpjFjyhtKkkQ4GscwCzePZq+SA9lCB7854tzc6YuWHS7pk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neLcBcFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neLcBcFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF897C32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722384353;
	bh=0VGIJSdqCxiOBUqmdbrFl0kR5XVcv7uqHwJFd4dkxMw=;
	h=To:Subject:From:Date:From;
	b=neLcBcFNQd835BlsIMmXgYbg3KjzJdWGGXKKK8RB9OrRn0nGeozqdp4/x/tCd51w8
	 +EDXN5SxIfnJn4VfliiV3MB0iDw7watCv+v+QYAiyVCHRsmNjbHyn1vS9k9NcVfh/m
	 6hHHeCEzQmJSNdbg593k6QEBijGdC547XDXlVh+onhGmdi8+UTNdHba8srd4NNlGcG
	 RhItdysEJmzg4TxCjXQDzknJFbcbfP8qHsZTy5Fwht9REgATzfAHSDvPkbMPK4aiAQ
	 xhnJAweKSwk9mXh9S4NmUCiXLFlOGdOXg4/TcDQteG7j1pTS8UEialLa9Zb43B/hIT
	 IN9Ckn7i/idVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C105C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172238435361.30982.17575255548687797430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042dbd5f7948a18d00c87ea284fe68510c4d8d8adb6adc93d265c32f5d0c981f
Date: Wed, 31 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722384353
