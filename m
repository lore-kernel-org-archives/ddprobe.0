Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE7514F121
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748182794; cv=none; b=Uc65oVwBQME3/8kI7CnAvXXOc/Q9wvrdKyOyiEk4d1po+IeHm5HjamkbTDvw0JHCXVT9xRFxn0I7PMMxoFwoaw6iMFnmmlBCLGBP9UWfD+Q04rfECVGqJDiIlr9lbANEU8CDDsCLrd7c/7ifNG9OGUW2ofZQhPa3JsVoqLsThQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748182794; c=relaxed/simple;
	bh=lMgt1HnzQf52jte9Too9EsIo6qiOnwu5WXz52Pyfkug=;
	h=To:Subject:From:Message-Id:Date; b=HPcq9eYH97kqVR/78Aj+Zq1EUV/mcHjKT8wvGp6qAUp1jjb7VavRiTjgBxM62zn9KzvkSdeN44Ydg3IKcddRXffPcU0lNIqSqiVUWpyHguFXQboh/rYHxvjdGKxi4cmqRCJZXggCmGMlihx4hrVI5DEKn852wQbvt5cOhPqu4lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBaw7CK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBaw7CK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7095C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748182793;
	bh=lMgt1HnzQf52jte9Too9EsIo6qiOnwu5WXz52Pyfkug=;
	h=To:Subject:From:Date:From;
	b=DBaw7CK7WC/sBlfhZxJb+t5X9AmwVqlzV3B8IgPkqk2nON9mvqv3pO2/VwZDoxH2J
	 tVq7veSnhPrued5HR6C8DLgrfWoKSonsGHpwsWE+dZFW49Mol1vwflpYuKUENUGKyW
	 5ZsLgYmpTdl3m3gH8iXxQG98DzpSVRwMlhEjoBxXkgYnMJ8NEQmwI//k9aizTkVSyn
	 0JrXbA8Vi2Lhf2LlqN637eUIsXi58fAOa1CP50aNXU8ePEWdcTBWVKBDvFe/Snvzhz
	 5L18xhAHvyIna4Rv6Gxp6rb6r44h7C0zkR/Sgm5l07X7nIioQdbHaQ5mINs9VpFxLf
	 jofSl2UBKT+NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94115C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818279357.31347.8940505968311064262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80538565618cbc64517e6c36e44d618f48d063e432de0a61e7b75134cd30ce03
Date: Sun, 25 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748182793
