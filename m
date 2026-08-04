Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF9F3033DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785878434; cv=none; b=Mkr7rpN5LDg1CUd6/NdqyAO+w46dWtCV4hHmh5nEBJMfjnc7a6WL81sgKvJTvW1fAZHVaYpOPDys+1t7ATCduxodAVsoTdxHdGP6ysixEG+8pzQIC1QxsLQ5wyAmVQw9vwSPckt/5ICVh65fhDdOdp/BOHow0kt2zzG5wwBLqGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785878434; c=relaxed/simple;
	bh=8vv0zVSfsCzmw4zu4amlzizWWxKnBwNZrXqO+a8SNEA=;
	h=To:Subject:From:Message-Id:Date; b=sdx2Tv7gjhrJzHR6I8ETAyychBqyyWkZczLJj5nvmH3N6r5/AhSbRo0HQeZSljY+Ky/i1QDf54RdPaqGHUMWy6XIgDgb2Z2/nwjQlNsXiMOeTmwm8jBmPdKRuy1bPLoR0yg4k4RwTu35HO27y/O9oAPWfo7YVkJl0uwQFTDPtC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez9LOdri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez9LOdri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC82C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785878433;
	bh=8vv0zVSfsCzmw4zu4amlzizWWxKnBwNZrXqO+a8SNEA=;
	h=To:Subject:From:Date:From;
	b=Ez9LOdri1dj7dCncEgf3f1o1TSpDBizzFM99RT/3LtBtqY403u6iWaK9P6cHXZqc0
	 2mts+D+4cw3b/aQlcUpigX1AhkMqIK/olYF6HdtrE6Oijul4OsI8vkHYck5fLiAdtG
	 qWN3xlxIjdQaSbuNvjSchKGKROmwna07wYiZrFMzaR6kqjV/e1atHFis0eMkkLmAPG
	 J6kb7F8tJRwt7pGBTTzCg9v1nF6DQrSwZr4qQBVf2jY3QyU5ziKnrcYPWmxk2uvaII
	 h3mlzhttU5LKMHJKrI4c+wMq244l26Jvl8cMGFKc7kJyh6iTXcBAdNco339Rn9YtgO
	 5uN9Xc9J7iDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC22FC55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587843369.21087.12050068333345221650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659bd4c0869b90c2a9b610aa237f9e9fa713e91041c61e66c23a65e1220f24ef
Date: Tue, 04 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785878433
