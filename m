Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AF52FFDD6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783156714; cv=none; b=mfFdWt253IJbwGG+HiOrnGZX/HR8CwdqgG8g6kmB/KifRrzzs4Cx2H5EIC8vnUhF8F8d0t3zbIIPBRJgKJdBCej8H9s0LZ0V3KteJ9kXXjJQW9IRzZhJqa2E1OqgJnl8EbWNju5Mi0TlB6pFT3Z3ctkD6qOp5jVCOwTMdIjqeO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783156714; c=relaxed/simple;
	bh=lwIYAa9ne+V1Nc7/f93NkaYooDziynNwRdDjtw8zk1k=;
	h=To:Subject:From:Message-Id:Date; b=H4WVOV6JyHAH8KtGJ+Lz3uIA+hQLAASIngM1DzXEZ5MX/Rlvv2/VFwjwtwnGc/6G2xID2FKF06m3dGOJepA9Cy9JeHkamvVZHvb19K15Qa2mrt4q8ltfbFspGT43jSC6JEtB6VkT5eL8LYnBIoK9eGe1oLR20orciV2LcXlpZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUCp/RPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUCp/RPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA250C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783156713;
	bh=lwIYAa9ne+V1Nc7/f93NkaYooDziynNwRdDjtw8zk1k=;
	h=To:Subject:From:Date:From;
	b=JUCp/RPFDIfgW2fNy2piJ5HOHxwcD8vowAIgbV1GH/07pE27x69Ts1DUZeigE4OsQ
	 3/isoth7I2gmIU1kNMKg4yPE0zcTzTURfwUT4egVdDT4S/cwUCQzxFE/YAk3K7OJHL
	 5NBIXUHY/XBxZuip7X+BSb22y67B6FiiS7QxdccyOKGQRSmvV8h/XMehZrOtr6hYsk
	 wJiuupzZhroWVsxaBiqo7NcEtzfwaJw+J4mgA10Z6s0Wzbf96Kbur8A3xg16GDI2Ds
	 b9Wo3JmPAdMmbDQVaH7lAoqHxHWq+oZt4CGcJ2IsQBqK+V0Lipx56ZJrzxiij7eN/U
	 m3hV947eiXXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89BDC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315671368.30736.5247263538569894774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08db991a2b1b940df01868450df0cfe3b7e896eaf17e098697364e48de5cb2ce
Date: Sat, 04 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783156713
