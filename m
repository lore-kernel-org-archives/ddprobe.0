Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8B817F7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711767496; cv=none; b=LjmczAFsZDlbmPCTyURDelSWreyTqSzndLmNPIku0DbR4+fF71kDwaM958/7hqsE/Us4ND7eC0mBTNEOHhz+Rnq8n6L1EtjwcupD6kpB/qxa77A0HRUmOcm0Ino+L9qWEuPSIg5ezp+h74lkeTWIQivdk3NXAmj0SkajDTQtmcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711767496; c=relaxed/simple;
	bh=aFJTXAqaqjVTTuOMg6rHlG+17TfuWKLJbvHqzmGeBQA=;
	h=To:Subject:From:Message-Id:Date; b=lZUBegoiHt5BwcfrSCZ1FE+8a2WSa6UqlyyoYh/dEwZio7A4V3echcanqcMiXvGr7rsTLimG/OgcWue3XziIFW865JbHdcplzGO3wW5PHSjdNqHQHlYwx7GyYDHG/ufiHfxeLGreMlw/EBqWym3bD2qtg8akQE7ax9dpyQ1tBPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzpxpVPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzpxpVPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765A0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711767496;
	bh=aFJTXAqaqjVTTuOMg6rHlG+17TfuWKLJbvHqzmGeBQA=;
	h=To:Subject:From:Date:From;
	b=BzpxpVPs+Z/5LLf1AAsiq2B+1Wm4UWCkcWcSdyrWWaRANxAbYAmF/VDqm+GwKIDtC
	 PtsObU/PLlKwPshRJwZIE51BJdjDlGEaHhjXUhQknWum7zURy8sTTMY2UcZjuKTkvn
	 XARQ3u8R8jDMl3PnmfHyqp6hwu1FZ/IjEPdubTs9VL8CvYQnTrNZZectjcfQI6WQrv
	 8QpsQrreP+7lWfF9svHS4sQm9J5+mTCQDxi6y+QTfac38puvvAtL608u87ZdOpnWtA
	 ydQefxG678q3WdjEj9ZOGBfYxvYurbQ7JBfvFY53bbC5PYkF9FGdhWShsyWDhCXPSF
	 +KEA5t07Xuijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639A4CD1283
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171176749638.29200.16131208526609519969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4253359cf92fad8e817ccfbc0dae24b46e7e4cc38c15c02768b2b28e8cea2d2
Date: Sat, 30 Mar 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711767496
