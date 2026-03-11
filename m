Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370392C0261
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773263094; cv=none; b=lBOYJXcQQyL+dVCRulQdTZ9BYhEfvxrSMLcnrAmFZs5FTV7sIT9mCVhxbePtNBq7TpLpMGK0WhvzDBQSRHnlJTT8HEEQcmzSj6WFZw88Ue1Zoi0J5bPiZ8Wf4BY8XeGoj0qSewvInLrh5A1syUjpWGgou9nu1qexjeo6NgyYf4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773263094; c=relaxed/simple;
	bh=Je7OJgT8/ER2a2Jz4pA7+IrH/ZXufE7tUquzXCzwPOw=;
	h=To:Subject:From:Message-Id:Date; b=AFn0TtESMK/R5pa52dKb6/FsLpuorehQTBy8m8SsIQxPjFWvsPM9ZIRpqVnr9A9rDDtv+8JF6kiBbVpjer+wdYmCwD4GEQ9CmNSRT897Um+3vN+biFBvWnfCO7RhBu32lhUJpWljLoIHH/DSqtK8mlbw7KrAU7BbGPViTt5O1XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYlkWvWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYlkWvWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5A2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773263093;
	bh=Je7OJgT8/ER2a2Jz4pA7+IrH/ZXufE7tUquzXCzwPOw=;
	h=To:Subject:From:Date:From;
	b=PYlkWvWB8Kt1UVPn8AP1eGL6N8mZblz2wkglwBFxGfLTg43puXHebUwmZTzWnixxX
	 fZ4vi8oIRN5KYUpg8ADw5aC0L7iZIH/3Zi55YIPzwyMpPs9wu1XZjllaNA03mazjmk
	 ToclKRzGJq7DRGr9RCzOsnxLvBgnzKIOXMAVWoJyx3EhGAfJgcKE+CmrCi9McqvpKr
	 nUv5eOI4S+sGT82XJGsZFR4lzr0MS+bU+61fbV+JU2eJVNhe5/ZVdyTkWqtwrz2T+N
	 V6dKnb31FJbPuEd5GctuQvcM1I3jrPDe2eq0X/NYUS4gn0FgRTME6Y4+tjbJRvPFmA
	 If0rSdpWZMvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7E103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326309362.4989.2623171816377954347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1646527b73d1fdb058a130413fb600a45c2881dc46fc822eec9d2c6ee6827bcc
Date: Wed, 11 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773263093
