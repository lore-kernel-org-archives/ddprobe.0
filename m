Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DB41A0721
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724768754; cv=none; b=gJZNnsH/X/8uNGDlSD2IFpphI98GGbbQfRQFjTpWd6Y4FWnS4pqSyHXeR9S9ZtkOu45F6UREqQ1BB4SY7cW7Xeek+yqaNylSB4NsDwbGYwYnwoZp3htOwd6sS3MgNn5bu/V7k8lDlxMiUuNsfOup08YPoF3IfbeBXKDCfyMXCG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724768754; c=relaxed/simple;
	bh=ZNsW+LXKsjwm1raIYt9nXcoEEXIHp7IOasmPv40z6cc=;
	h=To:Subject:From:Message-Id:Date; b=lFu1v+2SoVd5lYGn82Me6dC9Jh99n9c4eflP5iNaATTcahTpnL6J2dZW4sub/9EpbHN6OIX54m6YL9qlTfN3u0QwXuzq7AiuHi8SNwcuX62p+tu1Tqvv0mXMdP9SZfyjLvSgeVdv0kv8EqEjGkgScVRw4/tBwkQ7iQiEGukDBs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDzuLiQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDzuLiQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08B0C4FEF2
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724768753;
	bh=ZNsW+LXKsjwm1raIYt9nXcoEEXIHp7IOasmPv40z6cc=;
	h=To:Subject:From:Date:From;
	b=aDzuLiQHETzoyS+wtPPSN2kpLmeL/MxsvEqJS1EYvhPKN+G1b0WY2UiDOc9O+mq8n
	 H/TG4fGsIPaSAAdYW8UNHHEXf/fO3JH8XboBKqrC1fhsEabsPlvK3w7xeawvisH0Uw
	 CpAQ/ByrpV38RQDyvi4iEMMm0zfAz7aeWksz3QEzR7aq9XZnHs0RxSFWSnr/fHxOwv
	 B8IRmbPf8OfbAv/bIdIukO8y06y7P8q7iYPnkbfGKfhMYp0+0yyiLsWMic1GTMuwsy
	 Tqi5zAN/qwz5bZgAkp2i5zy8FL5taH/UydkZBGYqPb3FstAOSlDFtCQCDJm2NENDEH
	 N+lYZVs/BOgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF7C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476875358.32353.10182926712682254335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250b4555023d4073a1827a007b9173fa4ada714a07d3958a9829a284be32f1da
Date: Tue, 27 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724768753
