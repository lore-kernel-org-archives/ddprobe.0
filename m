Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A37B1A0BFD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737136554; cv=none; b=lpCEqL97GNz6RlHSOb7efhpUXcCZcLLzteU4iY0+wmi1786XMz8XpOOT8mkSCdDyUmSyStu+9jTkUoRh8zt7OHPROjbhdpoPl9hkYPfOCxInEf6uhIJWBlTDNjayiOtnFxt/g90EY6wWfGb/qTOBZoROaAVdebLkOdS/xX1PUxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737136554; c=relaxed/simple;
	bh=vtAjLI7wqDa49qLqK7vuvvMuZH93vnF1ejXzODnjN/I=;
	h=To:Subject:From:Message-Id:Date; b=NpVybWllE2yXgtXGwUPQSvzNp/Drv044AMwccnVaWeHrw2vTakxx8JVoT7C274tlyLizzN1VyoSp4K3OUNL1OsM9HcFQojUSl9r9oj3L5zkVxbH2uCJEuwbSwOBzMw22+7jMWJ8Flly+69iczlK1nNFtzLd0sc06npbQjC3e0Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol4hhCDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol4hhCDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D6DC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737136553;
	bh=vtAjLI7wqDa49qLqK7vuvvMuZH93vnF1ejXzODnjN/I=;
	h=To:Subject:From:Date:From;
	b=ol4hhCDbkhtfEoBiDL3k92HxJ7G8BIIysEUdHtbbMp9anV9bcpTo9KUExo6NwpSzC
	 MIF5Jjj7eon++34EHvuTVl3AOia4oU5Asd97XOV1gEgSdORr4crplomhPgXxrd087y
	 /uZLfaH82EcvuM6EC8cN3xJhA4uOwjFXtU9LXle5jP+dMfDWcXaYU3wf/9FL0c10C7
	 38iTJtzy3tW0SUFz8yutFkP11+A3ikHRViemKTcF08D8SBsq/1xXlyxwsEMFRE/AmP
	 JR6EuIVpUnX1l6HOxwsC1fPaxACIaJhks1XjzKSfkox42iOrphSVhW+fZNPM1q3hjY
	 uWIIucUkwiAgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428BC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713655358.25299.4954873211181418126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337f033378edd6b575f65575e24da3c49c8f325dd4d17d0ad16a505e089626eb
Date: Fri, 17 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737136553
