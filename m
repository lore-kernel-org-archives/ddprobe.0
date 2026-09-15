Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C31840A92C
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789488634; cv=none; b=p9q1yH03nXgP4kt5tvf16xhpJRvcQBscNDVN1NoWSJBS2i1Vw+7NnE1QYmJAeoqmdk8SPAUDsy8b12DONCCu3C0e9RZGdrSE+dObeoFCaU43U4Mlz9p7J0+uQnUImYLVFo5hocSOHef46DZ8CtZJKy0ran/DLfqiNYr1Mm8oXGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789488634; c=relaxed/simple;
	bh=lpae3HvOrTcxF/4gwBzj5Jq+Q4P+5JgShBy7FZi3m7k=;
	h=To:Subject:From:Message-Id:Date; b=kuotDN/g6M6B5QLYfrjZDR01kVzUE2fBfmFShcswM3+eaiSj51ef19vBi5eyTQLoy9+zqZNeBWwnZfuW6FGT5IWcXOPkDDkoGdr1YfUzTHimiiXABd3hO8t8gXIdbejBaGZ2igeB1xbL62DUr4r5OelHnWJtse+IcD318yowyeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcuUrWV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcuUrWV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDDEC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789488633;
	bh=lpae3HvOrTcxF/4gwBzj5Jq+Q4P+5JgShBy7FZi3m7k=;
	h=To:Subject:From:Date:From;
	b=mcuUrWV6LCVeHG5M9+whxREhQ8Zt0cmwSs2GTLkKQbwihjOAF6rr1UgPcetuuJ2Sq
	 4yGMy7kFBLbSzrDri5QUwG3PwzhhqeZroTvxSAjp23w+lhhOTCRdbuQkW5DQEes9gV
	 m/3IHPPy2FvSqr2u0d37AujHvagtNKsczmxLB3MMfAYzj/fCFv8aZzunul0uqTLN7r
	 XwXH6Lkg61QvOX976GK0SejbEc9KplzReBXMbnTYI7txMJdPt9gKhKvAfWNjGWGbXC
	 TLl0C1nrvcAzKGxJ8exaE0k+1LVCuBwXFxi8J2+OTouFabKD8zGPGGoltU+untOH/4
	 VivtUfEGb/PkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9956C88E7D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948863368.11475.7087621348393606660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4844dc45d377b2d7e13d727b071acb521b031323d54ae954aafc5c28c6a441
Date: Tue, 15 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789488633
