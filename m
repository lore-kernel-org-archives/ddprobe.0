Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EEF1F5E6
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759679394; cv=none; b=OoCLe+EA0On9nHMBPPygnjNrWni9RwB/nHI+nni0EjW4g3JYbE0bVnmXm3W5FLK2bjJt1WUKYcR2UciWqe72GxTgE2QmALeQSHKRFEck8PWBHKnWLlAHdpMZ9kg81lAy+P67F86BtLYfm3STxr59cMlbVA5M7Z38DbaNbrppdFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759679394; c=relaxed/simple;
	bh=zXoY3i91jCBBKeAIYkBhlP7q4Ini45uO5QlOzrlQDQw=;
	h=To:Subject:From:Message-Id:Date; b=KhAwguQGYCCJR9FPaB373D/j5L9uIDrvlAkDMDvRY+mzAeoALvPD4Lz5owd1VKaXyR8WKieFyjdNeBVocMJuW0BiJ9InyPxu1bMV2dLQ3tsUUgXRq0cumWTlh2WClqdBHWfZgexCRSQrSqL5zAcenLnhPjkUpYG2xLz2VrC1x/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6F5POMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6F5POMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9FC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759679393;
	bh=zXoY3i91jCBBKeAIYkBhlP7q4Ini45uO5QlOzrlQDQw=;
	h=To:Subject:From:Date:From;
	b=Y6F5POMin3Cs+iGhbpB78Mv+fHdCcSMk0dNA9AhkrsffoewKGPupyu6yxmJsNeSh9
	 27U7OZi0LmJroBS4NZ7GcD2X0bjZU2ndP9o137zjfTodC6Unk3fA0AcFKCwe6R3r3j
	 5HrAYZQURD26RvcENe7Ydb7XRtJZbk5bEnj/h8fVD05zpJukDKdDIe0GV3rnGTbpiu
	 Tue691chi67SbspxVH3Tq5jlnMR2xqV4caNluxWWyb5H56WTGXn74h2VKMZFJtVGYZ
	 HyqtaCqZjE7EL+9sk6/sxQKI8cDzU9Cozki+QEN2kXqMezQFM8M7OM5EOXLUxLZiG3
	 DbvvB97Q13ltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91677CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967939358.1375.3459599177838071337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd7638fa71a10a99a0c6005bf298dcbef9b1c52dd02ab2a45d627ba565c80fd
Date: Sun, 05 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759679393
