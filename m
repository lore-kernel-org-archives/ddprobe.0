Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C0B40242A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778514034; cv=none; b=ZbtVyQ9fI9LDngp8dih8PMSaMkEzUI7d54MuswyD5HviU4NkI9zRdVkb1loLyZiHHfjzSz8Ai90gqYmCb0KrcS7TtoDFtzCdsxw7WRLjyyII0RDmyvIgBdGJ1khJkGYWy0eXzc+f+y21xxfEpBo2KaQYz/pFRo2NpQWxbPuuwIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778514034; c=relaxed/simple;
	bh=DLZ1phr37GgiEGdFg2ohcTQh2SA7B6Cz6ztETDudkQo=;
	h=To:Subject:From:Message-Id:Date; b=aUWqoM1ktlYaHOrbvR59+klZFKaZO9h+Tu3TVSIwZ0YbNf333kQkk42kUTBqLmR8T57ezLuJ0PVmFlQHpDmAAVIIOLE/jeXk8QXrivwWqIRYWdFY4MqNdeR0If2cBw23k10JWK3+YRE2bCvJelmlwad+wsjF3WYhgr5iLDg7tPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSOEou0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSOEou0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2636C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778514033;
	bh=DLZ1phr37GgiEGdFg2ohcTQh2SA7B6Cz6ztETDudkQo=;
	h=To:Subject:From:Date:From;
	b=WSOEou0bXgGeQHJU3CUkpMU7ahH+3lnAWvYzrL6v4qGHsb6ZrGyxPx3XES7Mu52q9
	 QCNY3SHEPraBACKvfZCz0kkPxrch0jml3k30O0Ap2+YcZUqVawnbRvmq6kKClJV5Xh
	 u2XYPx2/oGwVWjosbi1NkN3TI2nzg1FmyLjiSsDwJpuC/LcqZlAYRA/oWLMVU1ymDM
	 VtCDNSBZ2vv2BeiyFdEu5CW2uiXXjjnYKcWpGgm3wKuGAfmitzzg9IejOhZWzag7rH
	 qh4k6gsSKK1znBlLjA4wf1i44ga1s9wfkXtNn0fiu0ONFAX8IxorzjrxwxFOXCdiHe
	 jfV59SwAZOnCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D4CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851403371.717.11766587119834394330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d721586e8100fd00eb07862d8b8ee02ca3a089ffba65580e143fc46bfcf131a
Date: Mon, 11 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778514033
