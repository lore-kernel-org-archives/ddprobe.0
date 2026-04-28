Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2698872623
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777336054; cv=none; b=AQugYreYKuQZHjcnkMb3FCZ/lkbWOd0VyS6kvXoWf9BdajyvspCVjkpVAD7Ly9A4uOiROxE/X+vbpNBe4sj0uKjpA7Y+ufuVGxHLM4ZAnxgOHEfdlhzbypI9CLUvY6wTw8kE7bGq6QwspmgdC92RGQUU/vJEGkK/XYgAD/kr4no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777336054; c=relaxed/simple;
	bh=BqFvauGlOrLj0U8Rw823ECKmHrnFcsFYht10Shnbc1c=;
	h=To:Subject:From:Message-Id:Date; b=Me60Kvbvn5rGvjwmfON7i6tzUaQgXpbo4DQVj32+gCusyRjsbgnBeAUaknKy2QQU5qaidSJ0cT8t9FRQHuPYNeOO1bjjy5erqnimZfYIkBf9N/PuEbIgLoxrGt1eeaDzLgzCHxiXJhABvEKf/lxMlLCHdTOCyd3/XZb8mgjmwGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opKSp6F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opKSp6F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1230C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777336053;
	bh=BqFvauGlOrLj0U8Rw823ECKmHrnFcsFYht10Shnbc1c=;
	h=To:Subject:From:Date:From;
	b=opKSp6F03RSh/QT8pX8EkNdekYWTnTdfeIn/XtYaMZNEOcTP8u3ad1C39W8jQbkaT
	 pytkEc70azhDkczplNOBEqjYoOwGhY6n8xscYHNCB2V1WryjIiQb/OocvwbCxCzpH1
	 lmkTRlrM4q1i16IGd1wuICiYumhqte3ZTromymGDyBL8tYiXwoPZe5BZkcidl00W6U
	 wViRrjs0e/ocNqEGY5nGcALLxWinMECGdo4YOQFmymYFsHJssGGIsRVW5dNIEP/8Fl
	 YDSZ/ksN+a6gncv2wm+eHh9395WOxapvj3U2r3qtyFKLHiHblbTGQX6cgkTdLE1D5V
	 K1T2JFPmIRnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF572FF8867
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733605368.17295.4795244188017611860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d9dbca081c7b34f222991e036ea1abd8acf88417af2c807c7956b2b684587c
Date: Tue, 28 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777336053
