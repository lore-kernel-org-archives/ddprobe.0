Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344DA1B969
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727950554; cv=none; b=Dbb1aezy10ewiyzTjqQkKZTuPRtFiu9nHX+LnqETwN07NfpI96Vjv3cDCAauJIe99T5Uk2HJkj8pEt7OTqdYdkxKnNZupHQ3GeggOrf/ktMFSO01WB8WUtpdfsYGm5TMeC+ElcTgLf5ehusFCaE41NdGZwHPN/smxXWJJJEU1NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727950554; c=relaxed/simple;
	bh=RVoQl37dN4QfGkwcXRUIm4B57mvHdLc/4obdX0EtVR0=;
	h=To:Subject:From:Message-Id:Date; b=L/WbpErWOYoWw+RuxombQdRmy/xmvPeddJRYJQwU88QXWBicABQSC8jK0YO4pjEZIUzJlL0JGwFD7zCATmtcVymbkshRN2liw9pF26GTHv0saIt2VdmvfgH0dqJKvsiTWZM4fUg6xOYHSVhdVU9H4w1KuuKDu3YziwObAkZLw+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdv7Gysn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdv7Gysn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA19C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727950553;
	bh=RVoQl37dN4QfGkwcXRUIm4B57mvHdLc/4obdX0EtVR0=;
	h=To:Subject:From:Date:From;
	b=qdv7Gysnnrf4i6x9kikuOZl6qhH8gYL8svasP+rCvNkg9+JEs3CZjDOKqIrWKqOWy
	 qFNn/sCItDTgqvPUHAMpsj7xREpZaZXoYHwcJpRAhwx9TWXDzAiD8cc9/lcmrAgz7g
	 0QlvT8Jjsx6e7a2J7Fakne/igQV+MOHWG0WX+iYprrYpaItcLj7xhlaDIlgD4A2F7z
	 ATfxEgMFR122DVV8hopXrteToIKQuB/hyiy+ZTSdfp2m9hUDZQ4uo+O92wQBtlJA3p
	 /RSKWwRKJ1VXQMnNyn2EBzMcgs6PG63vBS7QFd9RQhTD+Gu3rurH4ReV163h3YchMe
	 /3xALunGx0G0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82E4CF8571
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795055365.7025.7659850052839369028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e208176c477098c7f26ec007fa1d5aa2f7d83111976a09d7510f67cec56c8d
Date: Thu, 03 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727950553
