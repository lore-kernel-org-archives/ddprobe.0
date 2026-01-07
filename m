Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE35800
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767749634; cv=none; b=NkoY8Ot93utS2mF5tkDh8PifgX7zoEu7xJAckx/Nw03BxHiV7FsBHsKswnOrdRMFUMt91wtWGwetLP0LnA5p69nN/HyZjhV+uJRyVMR06TVM2xufhVOwqVYSRaePxR3qCbVZLrfWEWUlMzTHEegoAYU7Ei2i/7BRKbOi2shOLX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767749634; c=relaxed/simple;
	bh=q38keb4a6glyOSGUoKJJESPSyQTrzKxkZPsXGvU1xEs=;
	h=To:Subject:From:Message-Id:Date; b=q3yApVJZEkv/gdRR0SdEDpGZ5yvZPMc6AOwCACBvmpYqS+XsHFj+0Gu53lp1A3nhycP+0iiiVZObRsBV8HCzwns1cyYgmwYyHLBWKVI37zpdjQ0BPuIHlxbcJ08i1KT4hzufY56+C8Sc6UKwrUTT7m7VSdBGM1Cnsv2bJCd2Yf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFdYEY60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFdYEY60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB2C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767749633;
	bh=q38keb4a6glyOSGUoKJJESPSyQTrzKxkZPsXGvU1xEs=;
	h=To:Subject:From:Date:From;
	b=PFdYEY60Rhu1Gk8cv9t/3h0TQrpiCvtG8nDzCrrBc3cE4BuPAIFZQ/ODiwT04ndes
	 /WJZve2itgTi7GLHZKt1c5+HmK6yooIUP0oxtutigWvtAV1ArsqfuMbygHkoWHgrqv
	 aGE6UjkMw3V+AmgOeqr1RaN+y2fhZFSpqZ47FvUPI9Ocx1tAK6TyGEo9N5lfI8wq8a
	 iJW3Xor2hcV6KPJiKza+eyo6vgBJCSu1FPvldzbFK/bFSaLANisgq56QIVAt7u+It9
	 aB2W5LD2Ww32FNSnbgsNG2dkkwnHGf4upjS2YdBWHa+UHz66S/xKn8D68hhwdeJ8qI
	 t1ChAyP8LWyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A9CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774963359.28329.7958948470082580064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d90a83d46b8a0816e1f129a9c182ece48b3b104280900a59247fb4474c593e
Date: Wed, 07 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767749633
