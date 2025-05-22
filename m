Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B8127715
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747942794; cv=none; b=SRgbki/OeMJjv82igKdNHPqNdXot+/nwupKJ4M4I4HAGF3uYgzQg5t0sCgRguS95kkydcnXRH54gUyS7xfNQ4/0NCmHYYfEeskHK8fUbJiS7glYlagFFPdJ693rrFxxhcVRe5jG7x3atfaAVobXSnKbofd7h0YQsD8JQV4BfHrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747942794; c=relaxed/simple;
	bh=HH/pYUwnOJMYX8xn3ec69MO+7EU5MpKC6hNT+j92l3o=;
	h=To:Subject:From:Message-Id:Date; b=VmQLVd9W8/rFM5EKUBdhkNdNnwyZH5k5HgebEyBFRGwmAG0xo6NrhAhFdJ0+5zFn+1Q1wZeSNefgpHAakFafFT0Z/5MclmfUpgQ3jUhPkmEdueuU2HDtaKXD896B/YztFUMQW2JsU7uERaoqloFBDZ1zJRw51CMIqItcs8mNjM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POJTj59/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POJTj59/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA47C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747942793;
	bh=HH/pYUwnOJMYX8xn3ec69MO+7EU5MpKC6hNT+j92l3o=;
	h=To:Subject:From:Date:From;
	b=POJTj59//0DM7qsyWFERZppW2P57xAl0rRIXbUNRFcf7W1qae580tMXhcab17ptDE
	 S9Lmirt6nO/1yp+jNypujze+wknQRjbs0F4Dfx0M5w+mPPGqtAQ2oPTLR7WXLqZ2sK
	 HlHMAAlxaRA61laON3VOMowqQO06FYr8CJHDax3z0ewnpkXv7X69ElLMX6LSnvlaSX
	 JQckoJoKzUUJ6WSLweFpNaPhhiB7GlN78ksfNACU4PhanMdRRP2PSN4VXO9a/HgETt
	 qZQd+1M2GTkqT0vWAKu6kTVfBnMiPhicnchyY99Cq5MhrPhW6hzZGjpPe4BhTcvWQU
	 z4MmBQK6BBubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC57C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794279358.3927.18138466438777755100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7eea120c13f6e8de4638766b09a8eda0f5ea341b0fe6bd5ec8a708876b13a2
Date: Thu, 22 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747942793
