Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56F231C8A
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728120954; cv=none; b=S+T/GLcdctDIU120WkwRM3j55K285ve7Y40lcHtG7Uo8/3n4WLmSA25e7j2E3pVW4+RJBUt+Gwj7xmzMi2pFapvFNqTlVXPTlkiAVGaeNL1EsYua1ou40n8dcAUln1z0+TeaMGzUZ13gTCrhYI9DdS9iz25GxLAL2BFsxD071BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728120954; c=relaxed/simple;
	bh=rlC45W4lX5U+PawqGC9ePDbr6cEH6jrwpiY+DeSt1Yw=;
	h=To:Subject:From:Message-Id:Date; b=Iaek79CAOYH2vtAkCwhf3lbl93WJkYBVZG4/Ums/ZVtE3mJ3Ovhcf3i5hQlh44zeRO3HlREt4Nl3m3veO5QtXkaY/uQvSLgzh4p/6z7K+N6NtIJpk9oxCL7AdRC7Qm+1KiH8rQd8MuQlYpCyK9CEqaKBwN0VeqPh3mu0eXQxSWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgRj6t9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgRj6t9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59B5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728120953;
	bh=rlC45W4lX5U+PawqGC9ePDbr6cEH6jrwpiY+DeSt1Yw=;
	h=To:Subject:From:Date:From;
	b=FgRj6t9ssUE/fAp7IlKYzbPRwe6OGrb0zwwaFd6ZepE3V0CZcZriGQ6yjRoSl6ueS
	 /S90k0UrfeVEhN1LOOVDEakoB0HWFEJzy/rQuJ4P7HFGwmAcSwkLQWSerUSJfIfxwm
	 bVTF5cBweRsxJboIK5F1BPPh6pyS9PilA4D8oRzGOVYhxFacVkuBWTBp6jKvZ4l8JF
	 qSw1RULiNkamVPhwq3pUGh0TGA3jq7JlQw7SBsvCSsledLEZ78BxsFPZLIsb8QYvIb
	 mM5GJbyvh9P+KEJgIOmrByQuXU1P00wC98OlUj6orKkX9rcWxKdgS3Oqjby7I0Ck7P
	 UAus6g79LVX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE44CF8878
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812095363.16380.2973620042190843254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49803cbdb5c6c009221697e304b37790d8592a94140b85eb2bfcb427fb2688a7
Date: Sat, 05 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728120953
