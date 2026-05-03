Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3587D2C21FD
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777790254; cv=none; b=fRhZbhz1T0NjVwNNvfRGO0K2d//yGsye7v4Kw6Jutq9xRvtisj9y11kbmiMASdL4UjxsKncspwgvPhuNEFu7XMiQgwHS+Z+PTVuf5PoYU/fRUbpWkI4dw80Dy0gqd7oOL+Yr22Yw8ioLjjFRCNA7taSMFLFaMLoe+X3cyUH3qRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777790254; c=relaxed/simple;
	bh=nvj43e+8n/ZAT24BPH5dlF0mrPTYJhPquLCtqTMXk5U=;
	h=To:Subject:From:Message-Id:Date; b=uHb72U1mOqZC0lX65O4Q4NgFhCuThwiAE/zcF6Ou/sNZbugJQHppb4Opd0U/b9DI5dOWUwO6UJFiWc2VBr3icVJDzcTRyorgkduH+n15tec8Lu4g3BxiNW8CIKOTf/M9Wmt+Tj4dBfK+7CAW7iujkMT4TFazHAG/c18E4j50KJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEhZjqwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEhZjqwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4CDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777790253;
	bh=nvj43e+8n/ZAT24BPH5dlF0mrPTYJhPquLCtqTMXk5U=;
	h=To:Subject:From:Date:From;
	b=LEhZjqwOXBNWbG39q7f4s+zVfJSKnRGsKfLiGO58+cXl8bzKw3mYhXtNo4Bb6LdnO
	 iFmwTDcPAqYaYiUxTEkBBvWcrOqNHSXyn08o5jFo5onsZsEPbZ4g55Aom6VY7DBBlZ
	 zu5aZBQ2K+KkPPO1Pe9OP3WXAVtjrD3veEYk/5Bc3XiG5X3IyhvTMvx4GQrcLtm9IR
	 5oYpvkXl9NlT4K5GlMyFykTSBTJoi+cP5QkO0pfQBM3xu7eu64YVc/2Sb5IFT3clbY
	 QSMO2EGUT/7jpl2UL2Z5Bs8irpvujY33vEGiCAIJ+cTI5gQcJGNgZED1n8zgkvjaqt
	 lpNAolMNSe6Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF4FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779025368.13407.12537409780864102403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35526dc2003192c68fc70e3e351d18fa8ea3549885f7c77915e9debb709b99e
Date: Sun, 03 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777790253
