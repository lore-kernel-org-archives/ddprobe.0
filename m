Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF9D17BA3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730341554; cv=none; b=iCnPKbuHOesNJiyGNtF6Ja7Aq3avgdLxH7woDKOWHdpIh2SGCv/M7BCezEX/mGmGKghNibnBT0oDJ7xhF0WnytczgTE1AoIWWrPW4qhAtZPU7zIOG4DjWcCRuL0NZ2yItrh3AlVwINSM3DPUBATe+qMYCem4kFHSbjfkSLY8KgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730341554; c=relaxed/simple;
	bh=1pbqbJcgqHau8gKkJngNNgYznT0BkzuaFWG+z0KLChg=;
	h=To:Subject:From:Message-Id:Date; b=fJZ9ts84+WsL27TFQq1Udz+wGo4DXGW0gvudZ5pMxpwCzpoR4w+pUs6Xi4iZO4h2WWoIV+YP4dYX2fVxR1Ee1QfkvPPSU2T6uRZUSFJ3J+e90m95tnEwBZ9VuPdPxRRpDWD5McdZDThikNjrsEpamOv+ladA5/2pEyxrCR1TD6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZt12R5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZt12R5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCDFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730341553;
	bh=1pbqbJcgqHau8gKkJngNNgYznT0BkzuaFWG+z0KLChg=;
	h=To:Subject:From:Date:From;
	b=DZt12R5lPCo0hU0Vr2w5S6oVCNhXg6Mdh0PPXMfCVhndP5r22sucYb6Kp3SlBP7Ys
	 hznJ3JBgdMsfEFkiw/bH9FAv65FhBh5T+VWjFN+qDAaQFr9Xd6fMLqsohtb313V5Hk
	 0+y2ztugAUdpP5ZwbqJszUAUkdc7fBAz7UpHs8G83oe3TY7es1ebiSNUP9ojm5mhC4
	 F//sz6IXYP3EoB46FpDk5mwGrAPENuc1R2XEEqjNDlHG5UzFQyGKyHzTXXMMxo+78f
	 2qWWFyOrMTfV8eIYw9xIlM+RueAUC5vHx3smphy1eFq1RdrwF59Cku/WvTo0ioz/we
	 twJmjnumDHy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B43E68948
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034155360.2273.16331207852384514231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42400f25566d57a25d6b3516b94c6995862fec06c78df7cbf69957a4fae772a4
Date: Thu, 31 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730341553
