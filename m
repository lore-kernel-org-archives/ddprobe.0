Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F701C6FFD
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753019994; cv=none; b=hwWjNdXsAoA4ZKFGwG5IC6ezuKmTJv0yjZIkw3K9H+gXy0jyif5Lj3w/FNnPCVQmgC7n7dwM188/r4fkG7hdWTa6u544ppuuRb+bsa83XIXKoFr8jMzmc79SoHmmNf02F2NRMcMAbf3y4REHhAPaB5VYvAzgZQRX5C+mYVWZeL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753019994; c=relaxed/simple;
	bh=glxZgOIPGaZh8GB5zY/5kbflWCvb0eTi9g4R/UyzqRM=;
	h=To:Subject:From:Message-Id:Date; b=a7ke6MKJ2RmS4Hbq4C7pknEXNPpTiOFR+JPMcJRHpCGGTsJb/XvjbWkhyWKbfq9Th3gSSR63VIaks4s9lpO5kgdoCbP417dXFpW+bmwZa7MMTHQmaOfb2hJv5vEi1/nbME2SVMh3h6fptQBSq8W4ROYjZUBni9HSUsdz+QzufTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqEmwq+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqEmwq+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FA8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753019993;
	bh=glxZgOIPGaZh8GB5zY/5kbflWCvb0eTi9g4R/UyzqRM=;
	h=To:Subject:From:Date:From;
	b=TqEmwq+fnfkH2YP+UcIr/ahSoxLP5JnRSLrjBt6rdPtqUxuGdws5Npn4EeySM3/RQ
	 4kzyziz4TqfC2CMsj8OJmcbKYOqI3tazn2vvoGvm5wAzG/hXYz5w/vy0dmm3mJz83Q
	 wr+sEfgy2zAU6wdlS4ZE+bFVsfo8+vdeu+FWKRRRyZkiwFLE2rN8+GdC9U4PI/8NWO
	 LKxYK0pQ2R/t8e21iXQXbY/dDpri7mQ5d85pd//TZOopG6YEi1OaYCXLl+NlvtrwWC
	 BYhgzo8o5PylDl5Gl1npyReEKXs6bp5946VdDo0gAoJlzVYrUkHb5nUddY/ski/Na+
	 ctm16QxGvvtmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95765C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301999358.10684.11790951070609462486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77e2f1fe35e5e9a1fd9a9077cb18cba2957edbe51ee3f7b467c3d15a8fdee01
Date: Sun, 20 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753019993
