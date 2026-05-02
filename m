Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3445F40DFB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777759054; cv=none; b=frY9cTwzy/GIdRwMWQPmDIk51htFLTqa6Kdu4Z4aYLKQJEuj86y2O2LRbYF8JAvAN3q6lQtZlMkI6E6NccO54/1Lgdwt89LBWN3liQkpmqAwHgKgYQ46eFnfW5V3uiyuuVYrLO64rldPtDJ0catl3czE0A55qTiosvOIisc4UKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777759054; c=relaxed/simple;
	bh=OdFFlw5Ud9kXkyEQDMylg3/YTp/S1/UsepGux1IxHCY=;
	h=To:Subject:From:Message-Id:Date; b=ncTYhDdS8ePkrrEQvea5vnod6NVXwzTnCv0YYemsWe1n1VwUp+aIA1xV8FvgJkV+eFG0r+j39NB20ugAPQkQQFWQJx5h3SbX+XCfBc9IBgYCgTwEa69QMhphXVt0TFRhmRKZqWft7qgWhOCjMBdx0nmCZ32Gs2JzvkR3HySBOKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egewygIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egewygIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E03C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777759053;
	bh=OdFFlw5Ud9kXkyEQDMylg3/YTp/S1/UsepGux1IxHCY=;
	h=To:Subject:From:Date:From;
	b=egewygIpOacObHcZjMaFl9xnou9nII8H6Wnpy6uKFSZR1N1kOWJj+N5ePfnQCyUA7
	 GfUw9D9uXkYmMXf0m9UILVa91MdK4NV6UoGg2hsPq5lStpMsTumqK6jt/1F+3E3cJN
	 IbP66ygzUYDQqFGLoP7k/IH8DbQj8EtMzL8680T3Uyi9zlJO6X62sxRceJCNx/MdH4
	 4xL8vCvgEtqPNrZmqwnn7V9zxCy9C8zoyOjcDpR8dOAKdV3HOn4Jek22/e5MelnuVI
	 OSHr5F7d8sM4VzsopSH8rNJpzjYBiDiQnKfUFV8llAtAeosvuU9zczRVdrPL/ba6qp
	 UlzNBmlbT/8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1481CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775905369.28041.9652902161495872125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c120527e326a663e690e1321da2377cec8ad6c29d1073d8086f9684aaa6bb1bf
Date: Sat, 02 May 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777759053
