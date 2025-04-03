Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B6C241672
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743668994; cv=none; b=KRbW2GWbeMINKU/IYd0M/V+/BbNwHnRo8uSiof1R/TKC7Eaz7aWevY1tzhK1i8ttJMwHMqHxdAwwrWA/fdFMgAcwNoG9sT7K2ePVesRVOfGT4BEEy02Q1QFntDj4K+uAQUO5TTlQCP+/gL03GkvGD2sjNB3VkWJYd3MZ3uqp0BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743668994; c=relaxed/simple;
	bh=RRg+X4pEJJJy+0bcIKLHCd3Xnrl65t06tpSykEhfklQ=;
	h=To:Subject:From:Message-Id:Date; b=UNDnIepSteoWkpQ+FAaRolX62NTRqohD+zoYERSrqOtKkACn9eYyEdM0dIec7ZkgXEFJq+P1RlocL3RzcwKNVrzkhqqYoawiVdDkinzBJoq9E1CC380Yed8leg9rD9DdEs7ccVQs16KNbezEsuGF/05JrdfGxxMhGYDzW6OL9Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4Xbpp2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4Xbpp2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE3C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743668993;
	bh=RRg+X4pEJJJy+0bcIKLHCd3Xnrl65t06tpSykEhfklQ=;
	h=To:Subject:From:Date:From;
	b=b4Xbpp2UEDeO5KvR8rfav3vBwplhObVoNCh7pQDwdLQhGbsoBLGsmmgWjJozTBzIq
	 e8nZDGo/asYvfrncKvXHgsg88xGxqqD1uzreX4B5ZRCBzLnUjVkPyFKMDXdUWfX/i3
	 1rKQgQKiquzjJYXvqTXPI4t6tnsqcrwad5BpmRWpgT69RD4AwvU5Qu6nvltJ1DMoht
	 yAIld66mZR53jev19DtaQmdLMCWFWx66i6TgXWBnEFo6yQds5GRI2HOc4P0HX5u1Pt
	 oPecDypoH4sOqFUM28RrGeHvmiic2FCO18Uetp1sKgkSwifDXm1vbUmxb8CFZahWw8
	 ziCNi6jIeHgbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90110C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366899358.18483.16754521939155889511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256858b0c7dd4579b4d56ad195cd7210856b645235d78424bbdd265949316bb0
Date: Thu, 03 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743668993
