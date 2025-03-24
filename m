Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39C263C80
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742836794; cv=none; b=UrL/7V9qWxiy17HlmNsGQ53lhfsZqIqZSoN5+HRTRyx75dP21YfdIvJPU9yW56MX2yRtH5SMafMyqIXXR76USl4PHnlZcbARs6LYRm7WUtSnjcU8xfkvzVFI9r6ikq2ENr6Joxw23Yc98/AnUsusSnIFuHeQ8C7eg9tjPliVgYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742836794; c=relaxed/simple;
	bh=NqJzmaCgXcESPKoBZU2l5JPNVqkFxiS011SjfYrQ4TM=;
	h=To:Subject:From:Message-Id:Date; b=FEoGNH1PbFgPxkPPlWFFLT/YARNuezSCMO31iVSWHvWJdSaIqLDWHX1S24JXk88sEdZ7T1c1ajc+YiB7SgQziRByupCjjBBnhmRmQc1yTsVksPrlrL+hXMXlFcb6aRmIDJvhVu4eNHIVC6nyD79kUJYt53knhqin/CHl3jJ6U4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1cxKMUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1cxKMUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DEEC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742836793;
	bh=NqJzmaCgXcESPKoBZU2l5JPNVqkFxiS011SjfYrQ4TM=;
	h=To:Subject:From:Date:From;
	b=O1cxKMUTIZYQhdvhPrT7V7PgQ5BbWklql5U/36wFVmZUlXhJqsBcIqwjdHQZ5f9f5
	 0BCHmzNTwnR+XK9UqwwAOMeRc7XQdNfktq4lhtImrY0A87OXoR2YbVZ4IiJ3Wbfy/f
	 v2bAJS4KdmCckV1xlaZ8Lp2KHn6z7UiRxP4j/UkPuwtagX2MFensQYzp1qH39iFmRF
	 o+Ujg76IQgCE4v6XWpCHDiwIRey3BWG8dCISXX1MJR0GBN5IZonWcAUBu28DK6v8Ps
	 tQo6psWDMIQbA0RmSu8CmnpyRZPry4mAFr7xB8ohKV0fTIPodyXcAjtSolgXE9iIlK
	 eB8S77kV28pHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95067C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174283679359.32029.9636660568443512377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395122e6110c494b84472f29b3dfceb9226ad764b4030750ef905e2f09ad513a
Date: Mon, 24 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742836793
