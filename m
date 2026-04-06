Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27092823DD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775434534; cv=none; b=QO2rkK4sf8W6Jn0Zubt3HNGIjrKKq3E2vIuePYBOCp8GH3x/Jxi4ECZarMNYMqoW6ZRI1HVOZ8xAMnhL8RYmSeDYNQP1ocWeghvQ2+q/iVqbotjWEG+N8wrXbasrpnhg5a+C9BWLXBAxjQ+uUCPMt+SrxHh3VsFJXLbeDnY2szU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775434534; c=relaxed/simple;
	bh=eexgkp9IYC6tdJaEIFyz0wnJs4axeY92PEx1e2QpXzY=;
	h=To:Subject:From:Message-Id:Date; b=POfITEmNIdezIqAtBmTttAUl//uZMH+yp4OX+h+ssLTEP3nz0UNmeWUSiK8JchHbC/TOAMH2R+004NgUDVypKyiryB+kcdptEpjQzfeHGNs9mMxFF84uDj8I1XIqPjJbv+9srASQNkgAVs9AtrVcjhJv7aPgb+YxPVYDVgcwOOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2FiWcp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2FiWcp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0851C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775434533;
	bh=eexgkp9IYC6tdJaEIFyz0wnJs4axeY92PEx1e2QpXzY=;
	h=To:Subject:From:Date:From;
	b=n2FiWcp2FsxjPHBFtpxVmjAsTcwVy5MRJ274xTs1oEm/XmMMNNG/YtJK8X8eFfFt6
	 dTH2tG+NELKETWnPJNqw/lSFaL6kV+9VJuOJDbM4l5K096LgTz9UHF7x9oLI/8vBYt
	 JQbipU/qCHsI0yG9qCn111EHP8kwF4WQjGJ1ev2Vg1Y3AiWsvrK6l8VupLS85qKPwV
	 EAL7hsREMgWuCfo2BWRCeUg1JFsCRlBrUMnUS1Dgyi1m8z0rvLJ1RQbcgC4L5Qd5p1
	 xhVP4/7l5ylBoFW8Zrf1L0ovcFSrrcGUt01LWJnMMSgxdOMbW04rSJnzyPLG5t0+98
	 rXp8MvnLaCohQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9FCE9D827
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543453369.19442.3593372454675687372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5db6fec25a06c23ba54eb155ffc2190c8e5abda751c9ba85d181962976e4bb
Date: Mon, 06 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775434533
