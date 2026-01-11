Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212DF1643B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768122234; cv=none; b=DAjiWo7lqZV9o3s9pmbn5zu9ZQbPnVdI4EHmtd4zkeMuCs52BuGc60NRvfF/vM6RCGKZj49bj8XmmBM322PHEY3KiR048ATLj07ndhLcbXAgijEnBa7cMd98RjGS40HXBlucv5g80Djr+LxeWhC0Aod7K7OyKb2IlEHnCL3155A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768122234; c=relaxed/simple;
	bh=aYbsMnO8UXFY8sgFGnCATKTdMcI8fDady+VGAai+R/4=;
	h=To:Subject:From:Message-Id:Date; b=Wkb2IBfsdO0KQUiH3ZHM/JQNNmyp+8erO71Xu/w5XruJGVUiq5+pSQ2Zo4fp5KD+nmNV4WhMaWxhdqoXa6mKLXjk7kIM0lTf8XHkIllgY2lQtx31rgONCFpFjFMeaARxOpCzdAdPAv6OHWlGI/xvln0xXw5SScAkkIF2xmApFSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sai2EOhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sai2EOhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6122C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768122233;
	bh=aYbsMnO8UXFY8sgFGnCATKTdMcI8fDady+VGAai+R/4=;
	h=To:Subject:From:Date:From;
	b=sai2EOhkUqP0IRBDrA7+t0f6mfGk9HQU/ERV+gj3A27LqODYHS97zsfntJLfAezwQ
	 vAGIP1eNS0Wug5NxDANE8r+dnHvwsJp73Q8EGgw+03c7m8FrsXQIxyotZWLCHClZdM
	 yyNoS1kMGth6I34GxfQaQOZWK+9Zy+V52pnFJc8GZo/ny3ik2pw/f1gfGZ21spFSoR
	 wUbm4wTm7jP+XBYr2LGYdGWk7ksd+01qteFeSil+v30/Qhucot6slga1RmlNqE++TA
	 JIKwhSuF5xOVKBjJa0YM51LGyZBHPJDONOfwzh+gsRt0vvM0mTYT2g/PBfVrAhkM6/
	 03tq5dqm9W0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94920D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812223357.16753.11294363095282226630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d4f5ee20f17e12dbc0fdcc21ed368361c4a1a8d79993a2f6edbf39d5b50d73
Date: Sun, 11 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768122233
