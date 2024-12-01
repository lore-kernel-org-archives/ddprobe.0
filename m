Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E3B33F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733038554; cv=none; b=iPzBkP0w6IV6qtuex8wihfws5B2ywlH4ggqErvWpdW1ltQbyT2Ysy1qU1kPMW79NUYVORe/coWq95OScoaj11IehyCjGaKpkkcv8Meq6jx78tzMpRYOFFv3saYDt6BUGbalkfK7RmgtiN2hflho7Azr2WBVc0SMegOw6kuTIhnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733038554; c=relaxed/simple;
	bh=0YMHxzyw7GK/UnRcq1k2TBgHWlNG6sQU0EIlW6oNuro=;
	h=To:Subject:From:Message-Id:Date; b=Q4/wuJDZFc7vrXHopECBYNTT3Gg+pphVJk9LLG8fkfWzJluUrzvuLhEApLA8yx+8bArPKaqPgMxFyqQil1x5S9SPvmrYsPimfSAN6Pf0EVCHw8NRpzaPm6hZ/wM/mwXkSEn4paAOzqZvf3J7xUFEZsU5kY/lYbex675eL7+2yzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqRm6rYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqRm6rYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B147EC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733038553;
	bh=0YMHxzyw7GK/UnRcq1k2TBgHWlNG6sQU0EIlW6oNuro=;
	h=To:Subject:From:Date:From;
	b=IqRm6rYIlHzDH2f/rY3mTQ+Yq9RZ0oqJXIRHa5rOZV6Hjs6ru+UspAR8HLuMnaOJ1
	 LuDxgZubMDzjxRiyHWC1Afjbsz7ZFF5rZs2w2w/uRvKCVYkhuWRvy6canBREW1vMqc
	 9TIlI6tOoHdDosTswScXiXr2HdZdeqUmQyjEUUWWnq8dvAcpoUENXCvoVS7QnMlDG9
	 XdD6WuTYm6322FXtig+geF9OkYnkHWonB8Xb83UwfsaaVplYy5fkskC0TZg3AHcKVU
	 PqZnrdE+N0lwpJ7T9l4B42GgvAveIkYzhNACRE6JlZnqab9FL3PtrZQlTux7s6J45i
	 xlTXmJmhPJA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9977BD7360C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303855360.28490.2831771240558656207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb88aea4f109916a67a9c3fc2545006a8bd04d54d45d6e3297d848476c61326c
Date: Sun, 01 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733038553
