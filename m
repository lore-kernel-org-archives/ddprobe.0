Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E26D2E8DEB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780547674; cv=none; b=coOhnpTDNbo5CeaOlbB6AQyCX3VIJnVNIyMSGQwECWK50nbe5UkHKGekt7gKxhjIRz5tOUT1rjI51gKkq3/mKv6trE8U1aDBuxbVeR5FOxjgiuYwehwPxgZ8EYOolnmxJ0+olKBLxfxnwaxWDvwSHlpMLinsU6s69mnLAKaEUsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780547674; c=relaxed/simple;
	bh=L37u3G9XcaXZAygzuRgh7sKT5QGkUvOS39sO7JbHAHs=;
	h=To:Subject:From:Message-Id:Date; b=jXVaDNIMYQrC4AVSqJcxoLpC0/IKCHSObMCOcBW43Tx5IPrTpD1n2pUfe9wwxFDs5glnHjQGjd54GZcarswhTY0kctZpZMnnAl8Ex7GDd+DM7guFBhMq9HrPgsx67CbdTp40wtfYHEnn2+ddyIuEoxe8py1DxP+SUnIr5xDDX/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRC9YM1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRC9YM1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58A7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780547673;
	bh=L37u3G9XcaXZAygzuRgh7sKT5QGkUvOS39sO7JbHAHs=;
	h=To:Subject:From:Date:From;
	b=HRC9YM1P0AhS3IreIOwcGuVutAzAWoKDocrLLwa24WEH+ePaMlq0FNyuocjyDQSSO
	 S9wOB4YIdpHe3sJMpjFMb424zNT1fW1tzj+To2dmBTjsJob+WLIIAbXTj9kBFwOE4p
	 84yerpp5aarzJSXEgPY1xXzHuyUEuopFo4WkXZhMuTF4EISiMZL2aWrc2zsbFYQ2Re
	 Rwf+oG2MNXkb/YXTFEnw+1Wf+8e6RGR9SwTqFwfimfyAQLiB1bgkkNUJGPMplloviE
	 h9dazHv3oTWDTCH0S7pJ54RU7fJuHPsadJ7xj0uLaqBMauOzQiiwTk3857ZHNi00ML
	 3VXZGxGf6RHJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD71CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054767369.3428.18139107915387410064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92b7d35b24f851d313d8ee3d81b147dff845f2a965ff704e03556f3b6de0202
Date: Thu, 04 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780547673
