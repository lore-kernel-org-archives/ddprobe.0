Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C4D625
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758847794; cv=none; b=NaXBCc4HhwlFKo6SmxAocNPSNQ3h/qttQg/s1prl+Fo9FrVSwg5vIMc/DhytL1t0XLx7OHe1KOx5hd6DuUeliBurmlGWUDoa2PZ5FLrixVzIOUAmVRgYyWxErdNCWkeMj6fmV/rkwPmxqosAehWqltX0XlHpM9fkwOw26B9kxLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758847794; c=relaxed/simple;
	bh=DAgSa4X0NnKwnOIzIe6urdwi37ibPiTqsLhOVobi0ac=;
	h=To:Subject:From:Message-Id:Date; b=jVanbWmZ7nmrnqjgiyz5dVVqUsSHFQ2NwIyCtqPAVHbTr8MAnp1HPerjQRVwaV7L6zsS0TdVSo+hD765ZiMLD35wT+PQWeCXwGnfIvq7Fl0o4noQFOj5HDLgYx3MWR2jbalVRjL0FmuaP6G67esxd6QfGWfanIBGGI7I+6JGEIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jshLafLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jshLafLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92BCC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758847793;
	bh=DAgSa4X0NnKwnOIzIe6urdwi37ibPiTqsLhOVobi0ac=;
	h=To:Subject:From:Date:From;
	b=jshLafLHdB9+4j/D+cY+JQaZlwuqEnrzEK/26jQYE81S+Oa2OPpeUIc1mIw1+JTsF
	 J2KzwKrSh+dsAm8XMF98P10GPeRZGfCJY+DKfdPMNX3spngsuwa2FEh6OciCa+Vwez
	 wk8FL60WJpE3CtJDwxSnq4aqBucbEeWjHgXXoVzEwkBrxYDHROKk5W59trFOhCr6G5
	 wUAZ+CR3CH8/+jnTTS4cTsLpB8stm7W7m30D1HTuy7JHWXyOG2fEtatB0ArOnuDJwF
	 uzJNOzWz3X4XvcHtsIQaZiZv3v8h2cVOvW0nA7EHzaYG9BsXnAzuNUbYByU+d0ajsI
	 c8xwAG7OEFF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9814BCAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884779361.26723.14741970909130657100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9706d6437047bd50f3dd4d91fc77d8c354b65460c8f91b32f25b8cd429925c8a
Date: Fri, 26 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758847793
