Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAF133D4F9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769682234; cv=none; b=O/a/wg/34J89KWX4w6ooVRqQNgqHPlEFyxPuS45LGlPyYxXvuINsDV6+gvoGZ0jon+htMffZwrc9Py0djmFOCcWZ/DG/lJuoID5/zWaAisF4RU+SY5HRY+81Nh1Jn2BfwuDmUPDbNpEodT6VTM4735k+3dKbWhmkzgr/4P818Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769682234; c=relaxed/simple;
	bh=5PB3n8kgGtCZjLJ82ejekUgm+/UYophw1rmqzyGe3BA=;
	h=To:Subject:From:Message-Id:Date; b=PugUnSCZ+HwajhmhBLp2/YQ4EKMQkP7apMvtHRav/HmuEK9GPnWjShEuDr+HfPwLobyE+VTum7xhyCkPVUs7wZQY+aheelogCgwioRWU6gVIYYsQ0oXQwZqgJ9o55KaqIHFDA6QLxM2dZxz4rlzolSSuCHUb/9r2D/q5a4nbIHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eb7l+GoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eb7l+GoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8661C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769682233;
	bh=5PB3n8kgGtCZjLJ82ejekUgm+/UYophw1rmqzyGe3BA=;
	h=To:Subject:From:Date:From;
	b=Eb7l+GoN0DLctT6FX6yybDtmBb9SisOAEJYpEeEG7cWvFyYL5r+bdr9UNEIG8oQx6
	 1tTSDLGXfc8vjoRRxyirwQtFL3rR++dBbWw/jDV0wWNTv/wOpspwCBehijT+wu16zh
	 BroSf9mbc4trbi3F4NM+OdkUUvOiNZR14NuwNDTar/uj7wRwq/1seExQO6NSdxmQSi
	 8v9qFCNJ2KCn5Jb4H3dqxwvnYh5qN4ZWYdByS1K8rCRM9whqVCy9obGkvEO5xSabRN
	 W+1tJJfUmj9FELOaV8afwub+LrFOf3t6ymGrs30LgoIfc1YlW12p66jq/TJYEH5mRP
	 sIRozyPNWJXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC1D358F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968223359.1705.17680236077466946455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5577113c41c7a7a4991b46d04712455028b61cdc9d68d1b2fb06288558f1ec20
Date: Thu, 29 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769682233
