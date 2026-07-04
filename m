Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46155288C30
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783193314; cv=none; b=kB4PGhLQlCb5dBfvXOuz3TKO5Dpv5sVos7W15K+9BtUGHiprD+6de7legl1U0/QgPbg3ooVKCzORT6ODEI3zotGW0cLCR/eeY2sgb/kMeEcAndEpxQflMuQSN/0ItF+9/tyNcGSkJYiwunGsLl/xpCpWF3I8RpwASn6BTz8gj58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783193314; c=relaxed/simple;
	bh=8gIgoGPX1HFpCFwXK52IS697Yk/swr8aLs73Z7cK400=;
	h=To:Subject:From:Message-Id:Date; b=CqscuWqOz/usx8q8rsd1cWkQW//A2ZyzId+P/FIBEt9qr+Gz+yNGeN57Yz3F9ww8mWe6shoLOjCxCzlYOpmDDIdHiiOJQU/9hHJ8iGGzGHfDC/iOk3J0krYk6WLSnb1oTMzHTF/+6iAxnTQXtz1yIKBtkkgZ9bFPV9Fb3KMBykU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaUBCRqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaUBCRqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02BDC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783193313;
	bh=8gIgoGPX1HFpCFwXK52IS697Yk/swr8aLs73Z7cK400=;
	h=To:Subject:From:Date:From;
	b=PaUBCRqGS7zwrOvGxTgNqWD97J8SsKlqHIaB1CNcMMDOSonbIrd8ufUy5/NNiqp3d
	 WgC4g7LWLrftE+EGT1av+DDMkLZlFIddZ6Ym1yuyeNnCn8/HTQG/6BtfdpkKAL1yHC
	 gw2oHr2RHbdqoZkV/W9pw+kzY2E7UlCAg2fqR8xEOcxE8a2eow16qHFzqxINgkdEJJ
	 EUBQ6uuXd7DkB2/Hrucc7ZJ21PsY4fYS3tPYmcrf+ziZNxUftuVgmPInI04gmTTQKp
	 0pCyl77pyO4KB2jbJtxOcMpDAzuU5biVrxdY8O/0WrqKaNIA3lUfKFn0Hi+o4A1wAo
	 +bgv0T2v1Nq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB499C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319331368.7485.8947327687812167536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5851ead24c1fe7a338d773519df2e016c7feb6da4d859a56351eb4dad4778d85
Date: Sat, 04 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783193313
