Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AFD1A682E
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787454034; cv=none; b=HXYxrFDtm/mjFVlfe2zCz/m6Q8DzNGyfnfcxxm1yS5985phXdFBDhAC/IFvEa47DXho1/h3AckZjoJJBbCjv4VbTD0B9gDRJXVBDbvBwjH8piv81pzHmxcW6ASoSh9DrXzCoTWVhVTtmUpvpuwcrSMcF+JwhAwq13hJo7mN9q/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787454034; c=relaxed/simple;
	bh=TtFOiIjZcAsT7vqBnf0qvijqhnavZeHzQN/m6qtDSsI=;
	h=To:Subject:From:Message-Id:Date; b=qR3+YOVyxNnl/QLDDa++3ZbWkXuRu30tNyNNCumjzoJt0pnOkM5Ve56KcWzodJy6vMAG21fM/RuYXx0LMKpnrqakznGpApX8ggXIOdmOv9n2N+v4WSequTAFKz6mCkmFkOhhRAKUsOuzMK07JSqK6WrD7DjIWTW7JCell1OKVJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT/XIIKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT/XIIKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BE6C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787454033;
	bh=TtFOiIjZcAsT7vqBnf0qvijqhnavZeHzQN/m6qtDSsI=;
	h=To:Subject:From:Date:From;
	b=PT/XIIKnUWH+FfmUaNsq7WKSgxL71iqH/KqvjFX9DZgUAitUPDYirMEUKbV4aF9Mf
	 4KSR9wW6BA+W5WH8NmSvDUWoV8M28cv1YVp7m2evxr8UkZgpY+BNbBFFPDgdtFUOuw
	 dCm1gcWQNaxPhF6MzN6QxNHwhKtXijOe+SWqxGJOP3xWrOqaF20+/CmPHVZso5tPIZ
	 5fPGhHvb5H9gfXUBAGB7w4pqMoxhXcbxDbl1deEgnW+leyDgomxs5vLTZyefSkj1xU
	 QToVv+B0FUwWFfI2PsWOzCyKa9wnm3vJD0Rbobnu3VgjorXVHtWleJ3iV/uCC1HBhu
	 ichdMnw9d1gUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5FBC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745403369.17936.3436336217684813948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b379146d12243ee3098d3e8814c6e1f1dbcb6bdd4546dd1476822b99f493fb
Date: Sun, 23 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787454033
