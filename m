Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3E72AE68
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788037834; cv=none; b=Zg095gaHY1lNiYJ4PLKk0bCRhkKLTf/uGqGmqaTGUUZzVDTrXPx+vFFco9CWgYwlaVUZ+bdKrlb/1PALu5RYxzNjO4sHsFu1OI2L3/Mu8bFL5ESPvDp3eLbC9Nkaf3jVsh/GXRvRdnCetk6Z4paNKT+H7evUdEfWVTX1flLWhMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788037834; c=relaxed/simple;
	bh=gYQqJouq7XcQHzHhvF0uFnpfcQ4NzMsWWHNyGb1i+b0=;
	h=To:Subject:From:Message-Id:Date; b=UqkT++EQfc+t284g+zcXsXycr4awR5Dpt65EntbT7SnyLc8ZzbOghwzpR8/4L0/c/mvkTFW0XkA6cwEcWgnb875O+4VOjLEWZInyFXHqZrMSYcbHjW0G746TKLk8WUeTRF83PaRhVMRnLvhI2UyZd5UpiHgX1EXfOuBm6sLjBlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyhbtob+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyhbtob+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1245C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788037833;
	bh=gYQqJouq7XcQHzHhvF0uFnpfcQ4NzMsWWHNyGb1i+b0=;
	h=To:Subject:From:Date:From;
	b=fyhbtob+QzMEvBNHbmQ2BnYB5+gthNYDpqKeFOjF5Jbm8QklCQOqlLAXZT19eaP5p
	 VC2YR+vPPMmiStA2U6km0FNOaSH33Vqp60d7mjGnnkpC01srwHTjR2+4hCXz2P/rk5
	 6qxvc2ldMVN3e7DYe+xNCwkMCbCGWNllWmBGxMNCLbMLQb1bsSFdpMg2jbcmsDJ8vO
	 XSLiV0HQE5M8jmjDE0N5cGSmEXed7slnwXR7fqvR66dQXPkf3UIh0XuhQ0diLp0PmQ
	 6AW7Gay9UVCegGOOlXbkMMRg7ODYEE0y56poc8kAONeupFLargjA9vzEUFuEWSRXwb
	 WjFcz2GnBzCMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9801C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803783368.7229.4028458599765798597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd1d914344b078fcb7b8a170aea7e3aa7f6a4943bf252ebb21a359eda17efac
Date: Sat, 29 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788037833
