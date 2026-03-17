Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DA537E2EB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773737694; cv=none; b=LIPRqPtnVuIosZzbUkuB7K7vumtk9g3yJhZ+TUJH5ecWVh6rmibKdrQYoqUHLqcLc62RIwOx+uh80yqSaqZO9klQNAfs4qUGbLqIo4wZgfWbpmvQaTZCKWWy0sUp9HVIdW58kSb+83/jd/2dES5AGhBDrmxXLTWaA8B9tE/IX58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773737694; c=relaxed/simple;
	bh=tjWAlkelq45+tjFsccDcOjEUb/18FNMjGwrSqn/CNik=;
	h=To:Subject:From:Message-Id:Date; b=rAFAYmukzegVO95a4AWKytHMSHrX/XhWB4o8idlDPlCD1XAVK9+KWWScXEiMvXa988X9vd9h8VamOeRdJThBq3Z5T6S2cGvu+wh9ceavnfog2F8+gwjKkjnwaCZXECIfOm4g8qt1Ncwfk7M4UBWXA9sWjuhVqwnpTKOx4/wRosc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJVgcH35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJVgcH35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A715AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773737693;
	bh=tjWAlkelq45+tjFsccDcOjEUb/18FNMjGwrSqn/CNik=;
	h=To:Subject:From:Date:From;
	b=eJVgcH35wF1NzMZjhmpbhFtMaRxtTNCTJ7TklIItVgnYmmfwFsB7BGyK/0hMHPkkE
	 YB458hAi1fqx47RaC8lwP1jryYcHclQD/bRrifmHNQzmU0rmrPXBhD7AyKf+XDL3lh
	 Mdebi2RtmnWAXKboYHYUCKqaCivVoH1l2dhd6p9q60ktHrk3wB6Gi4tPvRXruwRdO5
	 ttHaOIWfLqwslse6ZBDozeQ+LfCH9p1u1HteatKaNIDmtevOuQSrwklQmNGUyc6erS
	 xbQR7K+LlekAZ/YskJoUc+vsly6er1LNQ5trCwycsSOnZk6p9Lxl9Y8j9Bzm+NZUGK
	 Xkrd93IJpEk5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FEF3381C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373769359.331.7933697886117485013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b033dd733f1be762a1306d90e15c8e1baa864f859a810d114be7a195a67549
Date: Tue, 17 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773737693
