Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139862236F0
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773023094; cv=none; b=MV/zxBmzXgwVxBIaEZFRK5vR7YctUC97G1M4NWb7Sx54sql8dHgPuFugofMGrZpG0Pwd9y7pDNW+2kkPNZPuh38F3XHEmlDYaLo+txE6x5tBmnRh+Kel+h+Ba1HvcH65EjwC0HLJt26rxrlBrFX2EkCikLt+YNfevsQmxAMU6vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773023094; c=relaxed/simple;
	bh=g8are7W2Y32BtSSyCnZ+R0dySd5Rr9fxjd/zU/QhtJw=;
	h=To:Subject:From:Message-Id:Date; b=r21ygkOlASGHWC1pr8nVz+VXWvUxHfzdaY+vqb9yMSzuwr0bkcgzE4jIjk2Cyeo/QJ7YioyXDsduYK0aNGZc0gSaPKgc+puITfrhMWBK/wUQmXw5PndtPnYVVm1dwMqZoyH1kjb7BPW/DQz48bGXouWlXUBooNPtXO5eVgE56Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Do4Qg+xB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Do4Qg+xB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF447C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773023093;
	bh=g8are7W2Y32BtSSyCnZ+R0dySd5Rr9fxjd/zU/QhtJw=;
	h=To:Subject:From:Date:From;
	b=Do4Qg+xB1A9fN7lP9X3NKJiB2Mrn52F786d1IGQIusNhnOA4HdIVeiEckqub2uDW2
	 dTXlbFq0PjS5yRoUJ+g/NEDxjUIn672Bq+pzPA4Yx8a0aLCTUOa3YiYhvjQGuqIGl7
	 2+vXrwI9Hs/4eRr6ODDWN9ngbM0MVCad64X1/rbBF9N9sQmZjXuhuDWXWx+vTKE/JB
	 F8YxLoCE5ZH3h4xNtjxyImVJyNQwZGjxJvJqgFaR/yyiHiCosOkXHE2z1FBdKGUz13
	 Y5KwZRXv7ywG6GsFumgZKZeTKc1ET5kX3QcfT/DFoK88r5sSSFcNuAK/k+MITEt75e
	 wvSX0D+vIFz2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B62AEA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302309361.24074.16792536535043777308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa74258904ea7750b4c8a6ac84cd49d7f111aebc1cdc3b7cda674e25a8fecce7
Date: Mon, 09 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773023093
