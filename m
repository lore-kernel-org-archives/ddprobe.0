Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261F114B959
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751786394; cv=none; b=W9gqYV4RYuStHpYhOCDXaYDrXeQ6K1z9N2FlqQtBRryeAGHdPGrV7udvo1TXhEsePqszNczUlVWt+e7CsI3ZBHLZrhUXt42zS4oYqn3btsZ/K1y86c8apQyqGnkZuhorWA1yEKSFZD7t2PMww73IAupJxeHPnjXT/GUZkB4EN+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751786394; c=relaxed/simple;
	bh=lb7GycO7IAjplK0+xwn9swW/bDOIayEyvMHx1AWZvdM=;
	h=To:Subject:From:Message-Id:Date; b=sv1Qy4kql7ZZBiSZRZiqPZcMIK8GLO6PtpqwhffgLFmyJtbnfrD6rPXtE4A2OW8GR9swqTKAGDcVIVsfGwGASI+7La6LvQo81qt/4DnBndJBa8H3Z3oB+0qIcvp4hVl3szgaWRsccd0t8uBqZy9cUEfsXxWFe+MjaY1QU8kpexU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoeThlgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoeThlgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F23C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751786393;
	bh=lb7GycO7IAjplK0+xwn9swW/bDOIayEyvMHx1AWZvdM=;
	h=To:Subject:From:Date:From;
	b=QoeThlgqhuCokKsW7QjNcYsfrGEF905qAKklQ9Bx3rW0BhFnXT+LgYm2IBxBTds6j
	 gQgdS+dt4YLRFZH49zgBoBmR+6xmEJ0z9QT05XtL+iZsBkfFgkdzK/Arm8AA8w0keK
	 qo2l0jd3eryViFkEXznwXCy1KSqgDV8Be5DFw5NfGMiQQ0vN7pnILifWYgpeZ1dxja
	 pfCwzrleu54lQ6ziIyZWlFZsTrCPx8qiX1GYs1NMOkDZ+PEYbc5pEZaJ4NoUyE5kQs
	 ZwqU76pA+ScRkpnd5M4prdD+JnOsiJyyuMIv7T+89Y2uTLFIdD5LF/1rlf0Uty136l
	 WgXWWsssjVrLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92034C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178639357.2195.6552961919608525743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79d7d1ecfe45d1969d32d7c65d930669575ce8271cf00959a711c924e4b0116
Date: Sun, 06 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751786393
